---
tags:
  - Blog
date: 2026-05-01 08:00:00
created: 2026-05-01 10:45:00
categories: 心情随笔
updated: 2026-05-01 10:46:00
title: Article Template
cover: https://app.notion.com/images/page-cover/solid_beige.png
id: 353260b3-9251-80df-9cab-fbb2b3bb81b8
---

For the past months, I spent (almost) all of my free time working on my side business — [JustFax Online](https://justfaxonline.com/). It all started with migrations from LemonSqueezy to Stripe. But like every refactor, or rewrite, it grew way bigger than I anticipated. A simple payment provider change required me to implement a job processing queue on top of SQL as well as doing a tiny accounting system. All in Rust of course. This resulted in one of the biggest merge-requests I have ever merged.

A merge-request from the new version of JustFax to the master branch

This merge-request comes just in time, and reminds me that I have started JustFax about a year ago (maybe 11 months). In addition to that, I’m working with Rust in production in my `$MAIN_JOB`, so I decided to give an overview of what it’s like to use Rust in production.

## If it compiles, it runs

I mentioned this briefly in my [initial impression of writing a web application in Rust](https://yieldcode.blog/post/building-a-webapp-in-rust/), and I want to emphasize this again.

I don’t, usually, run my code after each line I change (unless I do annoying CSS adjustments). Most of the time, I finish a big chunk of refactor, or feature implementation, and then run everything to test. Moreover, with Rust, you can’t run a code that does not compile, so if your code has errors, you need to fix them, unlike JavaScript. And so I got carried away with the refactor, which span across endless amount of evenings, during multiples months. One thing led to another, and the code was never in a state when it could compile, until the very last moment when everything was done.

I was in fear running everything, but after setting up every component of the system, and issuing a first (**local**) request, I was surprised to see that everything works! I know that I’m a good developer, but I don’t fool myself that I can write code without mistakes. And apart from minor issues with dynamic aspects of the code, like wrong serialization/deserialization formats, the code worked flawlessly.

The first layer for this success, is type-safe, compiled nature of Rust. You can’t, accidentally, assign a `i64` to `uuid`, Rust compiler won’t let you do that. Nor you can access a non-existing field in a struct, unlike JavaScript. And sure, there are people who claim to never experience `cannot access property "foo" of undefined` runtime errors, my experience, as well as the experience of my colleagues — is not the same. One of the reasons that we use Rust at my `$MAIN_JOB`, is because the existing backend, written in dynamic language, became unmanageable. Sure, you can hold the context of a small application in your head, but at some point it will outgrow your memory. I remember in the old days when I used to do PHP, at some point we had to resort to dumping the content of the array on screen in order to know what keys it has because some keys would be `snake_case`, while other `camelCase`, etc.

Second layer, and it’s kind of an extension of the first, is the obsession people have with type-safety in Rust community. And it’s a good obsession, because it gives birth to tools like [`sqlx`](https://github.com/launchbadge/sqlx) — a compile time, type safe SQL wrapper that runs your queries against a real DB and won’t let your code compile if your query is wrong syntactically, or your try to insert a `i32` into a `TEXT` column without explicitly casting it. I used to fear SQL, because it is usually a big part of every application, and it’s easy to get it wrong. Misspell a query, or mess the arguments, and good luck to you in production. Many people would write unit tests around SQL queries, while others would resort to using ORMs or code generators from your schema. But with `sqlx` I no longer have to worry. I get the full power of SQL without going to a high level, very abstracted ORM, or resort to code generation from the database schema. There are drawbacks, sure, and I’ll mention some of them further in the blog post.

Another set of tools that I can put this category, are type-safe templating engines like [`askama`](https://github.com/djc/askama) or [`maud`](https://maud.lambda.xyz/). They did not find their place in my project, even though I toyed with them, but they nevertheless remove yet another element of unpredictability from your code. One of the things that make me chuckle, is when I get an email that starts with `Hello {{userName}}`. It’s funny to get it from a no-name service; it’s embarrassing to get it from a bank. With type-safe, compiled templates, such errors are non-existent.

The only thing I miss is a type-safe third-party API interface. Sure, you can generate an OpenAPI client from an OpenAPI/Swagger spec, but you are still left at the mercy of the third-party API provider, and the fact that they have a spec, does not necessarily mean that they will follow it and won’t break their API, so I’m not sure that we can solve this one.

## And when it runs, it’s very stable

I have never ever experienced a Rust process crash. I did experience a Node process crash. Unless you pollute your code with `.unwrap()` (which basically says “if the result is an error, crash”), there is a high chance your process will never crash. I have a few `.unwrap()` calls in my code, mainly during initialization, so if the config file is missing, or the environment variable was not defined, there is nothing I can do except crash the process. But in general, Rust requires you to handle errors explicitly. Everything that returns a `Result<Something, Error>`, requires you either bubble up the error through the `?` operator, or perform a `match` statement on it. In most cases it makes sense. And in some cases, it’s a bit annoying (for example when you know that the conversion from `i64` to `i32` will succeed because it holds a number that is well inside the boundaries of `i32`, you are still required to do `try_from()` which returns a `Result`). But even with the annoying cases, I tend not to resort to `.unwrap()`, and would rather log a warning and return some sane default value. Programming is unpredictable, so at least this way my program can continue to run, while logging the location of where I could have been stupid.

JustFax is not just Rust, it also has internal systems written in TypeScript, and other JS frameworks. And I swear that every time I create a new TypeScript project, something changes. Either the config file changed for some tool (looking at you `eslint`); or there is new boilerplate for typescript; or `express` is no longer cool and now everyone uses `fastify`; or `express` is [cool again](https://github.com/expressjs/express/blob/5.0/History.md); or `ts-node` is bad, now we use `tsx`; or this module is `esm` only, while this one is `cjs` so go figure. There is always something with TypeScript. The way you work, the way you lint your code, the way workspaces work in vanilla JS compared to [TypeScript](https://yieldcode.blog/post/npm-workspaces/).

But not with Rust. `cargo init` - boom you get a new project. Want workspaces? No problem, works flawlessly. Linting? `clippy` got you covered. It’s just so much less boilerplate and mental fatigue.

## Compile time is still PITA

Undoubtedly the biggest drawback of Rust — is its compile time. Especially when you resort to using tools like `sqlx` or `maud` which rely heavily on macros, both the LSP during development, and the compiler — start to struggle. As the project grows, I collect more third-party dependencies. And while I try to optimize them by putting common dependencies between multiple packages, in the root `Cargo.toml`, as well as aggressively selecting only the needed dependency features, I still struggle with compile time. I mentioned how the initial compilation took about 6 minutes inside a CI/CD, which now takes about 20 minutes. It’s possible to optimize it according to different blogs online, but it requires a surgical-like procedure to aggressively cache the dependencies in a multistaged docker container. I don’t have time for that right now, and need to focus more on the business side, but I will get to it later.

NOTE

It has been pointed out to me, in a [Reddit discussion](https://www.reddit.com/r/programming/comments/1fmq302/comment/lod53b3/) about this post, that I use a wrong cache key for CI. Fixing this, should fix the long CI/CD pipeline, because then the build will use previously built/compiled artifacts. I haven’t tried it yet, due to lack of time.

Local compilation on a Mac M2 is manageable especially with incremental build, but it comes at a price of storage. Once in a while I run `cargo clean`, which results in tens of GBs of cache being removed. However, even with incremental compilation, it’s still far from instant hot reloading that you get in JS world. So circling back to my first point, a development cycle of “change small piece of code, test immediately” kind of breaks. You don’t get this instant feedback that you get with JS/TS, and that’s the reason some of the internal, and external, tools for JustFax are still written in TypeScript. Rust kind of guides you towards “write a lot of code, compile, check” flow, rather than the “change one line, alt-tab browser” workflow that you have with Node/JavaScript. I’m mostly fine with that. I get a lot in return, like real type-safety. The CI pipeline, I believe, can be fixed, I just need more time to work on it.

There are things that Rust excel at, such as pure backend. Frameworks like `axum` provide a lot of needed parts to build an API server, and most (popular) external APIs have a client for their API in Rust. Sure, they are usually not maintained by the company who builds these APIs, but at least we can use them. However, most examples on the web do not include Rust. And so you are left on your own to figure out how to integrate with this or that API.

And it’s a recurring theme with development in Rust, at least for web, I can’t comment on other types of applications. I often find myself reading the source code, or navigating the GitHub issues for similar problems to the one I encounter. LLMs rarely help with a proper solution, as most of the packages are kind of niche. Rust community has great attention to documentations and examples for their packages, which is awesome, but inevitably you will end up with some edge case that is neither documented, nor has an example for it, and chances are you will have to resort to reading the source code in order to figure stuff out.

And some applications are not well suited for Rust, especially if you come from fast-prototyping environments. I still prefer to write frontend in TypeScript using Astro or Svelte. Rust DX is just not great in this department. With the need to recompile the code upon every variable change, it makes it too slow to iterate fast on frontend development.

In conclusion, I’m happy that I have chosen Rust one year ago. Not only it helped me secure a `$MAIN_JOB` that I really like, but it also helped me to build better software. And I’m looking forward for the second year of developing Rust.
