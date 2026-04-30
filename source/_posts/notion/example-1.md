---
date: 2025-01-20 13:45:00
created: 2026-04-30 23:51:00
categories: 技术分享
slug: example-1
updated: 2026-05-01 00:09:00
description: 这是示例的文章摘要，摘要内容可被用做搜索，预览。文章列表默认展示概要；若要在列表直接展示文章内容，可在blog.config.js中配置。
title: 示例文章
cover: https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb
id: d78260b3-9251-8358-97f9-01aefbc32ae4
---

# 基本段落

> 书中自有黄金屋，书中自有颜如玉

<aside>
<img class="emoji" draggable="false" alt="💡" src="https://twemoji.maxcdn.com/v/13.1.0/72x72/1f4a1.png"/>生活的意义并不是与他人争高下，而在于享受努力实现目标的过程，结果只是对自己行动的嘉奖。
</aside>

## **将进酒**

李白〔唐代〕[参考[1]](#a47eb4929c654ac4b8c895d00023a97e)

君不见黄河之水天上来，奔流到海不复回。
君不见高堂明镜悲白发，朝如青丝暮成雪。
人生得意须尽欢，莫使金樽空对月。
天生我材必有用，千金散尽还复来。
烹羊宰牛且为乐，会须一饮三百杯。
岑夫子，丹丘生，将进酒，杯莫停。
与君歌一曲，请君为我倾耳听。
钟鼓馔玉不足贵，但愿长醉不愿醒。
古来圣贤皆寂寞，惟有饮者留其名。
陈王昔时宴平乐，斗酒十千恣欢谑。
主人何为言少钱，径须沽取对君酌。
五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://tangly1024.com/"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">NotionNext中文 | Notion笔记，轻松建站，NotionNext官网</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;">Notion笔记，轻松建站，NotionNext官网</div><div style="display: flex; margin-top: 6px; height: 16px;"><img src="https://tangly1024.com/favicon.ico"style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://tangly1024.com/</div></div></div><div style="flex: 1 1 180px; display: block; position: relative;"><div style="position: absolute; inset: 0px;"><div style="width: 100%; height: 100%;"><img src="https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F6c096b44-beb9-48ee-8f92-1efdde47f3a3%2Fe1fe7d66-46ee-40bd-84bb-d8ea283ea4d2%2Fhero-image.webp?table=collection&id=dfdf3924-d2f1-4ee5-9b91-6222d25d7856&t=dfdf3924-d2f1-4ee5-9b91-6222d25d7856&width=1080&cache=v2" referrerpolicy="no-referrer" style="display: block; object-fit: cover; border-radius: 3px; width: 100%; height: 100%;"></div></div></div></a></div></div>

[link_preview]()

# 特殊段落

## 1.代码

```bash
# Bash 安装zsh
$ sudo apt install zsh

# 配置ohmyzsh
$ sh -c "$(curl -fsSL <https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh>)"

# 配置ohmyzsh插件
# zsh-autosuggestions
$ git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
$ git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

// 启用插件
$ vim .zshrc
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)
```

<details>
<summary>其他更多语言</summary>

```bash
ps -ef | grep java | awk '{print $2}' | xargs kill -9
```

```java
@Test
public void test11() {

  long start = System.currentTimeMillis();
  int a = 0;
  for(int i=0;i<1000000000;i++){
      try {
          a++;
      }catch (Exception e){
          e.printStackTrace();
      }
  }
  long useTime = System.currentTimeMillis()-start;
  System.out.println("useTime:"+useTime);
}
```

```python
#!/usr/bin/python3
import json

# Python 字典类型转换为 JSON 对象
data = {
    'no' : 1,
    'name' : 'hello',
    'url' : 'http://tangly1024.com'
}

json_str = json.dumps(data)
print ("Python 原始数据：", repr(data))
print ("JSON 对象：", json_str)
```

```r
# R 语言
#file.edit(path.expand(file.path("~", ".Renviron")))
library(telegram.bot)
library(stringr)
# Initiate the bot session using the token from the enviroment variable.
bot = Bot(token = bot_token('your_bot'))
usr_list <- c(12344566, 12345566)
```

```css
html {
  background-color: red;
}
```

```c++
#include <iostream>
using namespace std;

// main() 是程序开始执行的地方

int main()
{
   cout << "Hello World"; // 输出 Hello World
   return 0;
}
```

```c#
using System;
namespace HelloWorldApplication
{
   class HelloWorld
   {
      static void Main(string[] args)
      {
         Console.WriteLine("Hello World");
         Console.ReadKey();
      }
   }
}
```

```assembly
.section __TEXT,__text,regular,pure_instructions
.macosx_version_min 10, 13
.globl _add_a_b
.p2align 4, 0x90
_add_a_b: ## @add_a_b
.cfi_startproc
## BB#0:
pushq %rbp
Lcfi0:
.cfi_def_cfa_offset 16
Lcfi1:
.cfi_offset %rbp, -16
movq %rsp, %rbp
Lcfi2:
.cfi_def_cfa_register %rbp
movl %edi, -4(%rbp)
movl %esi, -8(%rbp)
movl -4(%rbp), %esi
addl -8(%rbp), %esi
movl %esi, %eax
popq %rbp
retq
.cfi_endproc

.globl _main
.p2align 4, 0x90
_main: ## @main
.cfi_startproc
## BB#0:
pushq %rbp
Lcfi3:
.cfi_def_cfa_offset 16
Lcfi4:
.cfi_offset %rbp, -16
movq %rsp, %rbp
Lcfi5:
.cfi_def_cfa_register %rbp
subq $16, %rsp
movl $1, %edi
movl $2, %esi
movl $0, -4(%rbp)
callq _add_a_b
addq $16, %rsp
popq %rbp
retq
.cfi_endproc
```

</details>

## 2.公式

- 数学公式

  $$
  f\left(\left[\frac{1+\{x, y\}}{\left(\frac{x}{y}+\frac{y}{x}\right)(u+1)}+a\right]^{3 / 2}\right)\tag{行标}
  $$

  $$
  \tau_{xy}=-\tau_{yx}\tau_{xz}=-\tau_{zx}\tau_{yz}=-\tau{zy}
  $$

- 化学方程

  $\ce{2H2O->2H2 + O2}
	$

<details>
<summary>其他更多公式</summary>

$$
\begin{aligned}
AACD \Rightarrow AAAD &= \frac 1 3\\
AACD \Rightarrow AACD &= \frac 1 3 + \frac 1 6 = \frac 1 2  \\
AACD \Rightarrow AACC &= \frac 1 6 \end{aligned}
$$

$$
\begin{bmatrix}
		c_{0}&c_{n-1}&c_{n-2}&\cdots &c_{1}\\
		c_{1}&c_{0}&c_{n-1} &  \cdots &c_{2}\\
		c_{2}&c_{1}&c_{0}&\cdots  &c_3 \\
		\vdots &\vdots& \vdots&\ddots &\vdots \\
		c_{n-1}&c_{n-2}&c_{n-3}&\dots &c_{0}
\end{bmatrix}
$$

$$
\begin{aligned} \sin 2\theta & = 2\sin \theta \cos \theta \\ & = \cfrac{2 \tan \theta}{1+\tan^2 \theta} \end{aligned}
$$

$$
AACD\Rightarrow \left\{\begin{matrix}
第1次取值 & 第2次取值 & 概率 & 最终状态\\
A & C,D &= \frac 1 2 \times \frac 2 3= \frac 1 3 &\Rightarrow AAAD \\
A & A &= \frac 1 2 \times \frac 1 3= \frac 1 6 &\Rightarrow AACD \\
C,D & A &= 2 \times \frac 1 4 \times \frac 2 3= \frac 1 3 &\Rightarrow CCAD \\
C,D & C,D &= 2 \times \frac 1 4 \times \frac 1 3= \frac 1 6 &\Rightarrow CCAA
\end{matrix}\right. 
$$

</details>

## 3. 图表

```mermaid
graph LR;
公司架构-->商务
公司架构-->研发
公司架构-->设计
公司架构-->运营
公司架构-->产品
```

<div class="pdf"><iframe src="https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/ded5d0f7-74e1-464b-b9af-ce10adc8b59f/%E4%B8%8B%E8%BD%BDPDF%E9%99%84%E4%BB%B6.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466ZSROC4CV%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160941Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIQCmeA6IkGiqA0J0bvruS3x8Exdqap83rd51g%2FgHbMNp7gIgbvOV77wJ1%2FxZZlnTHJsxQnEycareayjriZa9IzbUfEsq%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDCW6ciU4suM6Bxhz%2BCrcA9LhlVrwRM9HAyJAbJeN7vIl9r2wgw26KpIysYEKXKIODfRmfszHEHtedS1PY0oHUtQ0VhnqI6zhQGitW1%2BXL3Luh8CWQqmqdatKPV0NQ3A9NUqHodR0FjSR5bsy%2BFEvKc9UWBMZjogum9iAwO5oAkc2tOnO9tYQwP2hHfkKsqdnRs4TniOP0kYX2qWTz%2F6ZkVrZ6Tg3uJtU1%2B5IPUCPjGd9xZCTqqJ4GElx5cHpxX7lb9RsnpRO83nXN8M42LH8DwJWeOaifxXC10lDq74Z8C5WCzBJ0KA2MRH%2B72cOdQ4NjNVRjdXHggg5tdTnpHLxjmkUwhiE2D23enuJD312ctGtLSzJzwXn4GiyVaGj3ZBOawG8r1Bmaq3Qy0nLhgFsw%2FAAcQPadBJ8aafed%2FPoUoMHFpC236Ivs9y65KWUI8C8iWcd0NsPFOB1LJWIB7WE81Hi4tYp4Bp3W1pakras7hq5j2EPSeoMsufE4bElEg6lMLMUFe7T0teXEJ31H%2B97ZG%2F4kOive1%2BypfgUGmbzAnEcrWkSz0POCtM3LRod3k7C18fl858CFn1TB13a1XosMB8ofBfG8LxQhvO5LspgL904Xy%2Bh8zBNRwiWOEVbkmWnI1KZjvuoaiB5%2FBopMLzmzc8GOqUB9opdRczKJhzn55%2BPCtwYIik6QVrOwFepnKmADpxXp4gLExkCQvYKALT6MgOBbm0S87%2Ff3n2HifC3PEOEI%2FoH1xb9IxLQLfxzF65AZ2j0D9kEqZldUmtV81vXmd2HUzCtdBs3rSBtfPxW1mAt805JEVxrxbPoyDQxfOOURSoZu4JwaVzmqpAzbhPvvV%2BjrVweZ9X4x5qJUMLmY%2FKyareCJ1Rz3MvW&X-Amz-Signature=6b7058b7f912c7411cfa4f1eb002a385bb31f0f365a3f5b229548793f619ccbe&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject" style="width: 100%; margin:0; aspect-ratio: 16/9;"></iframe></div>

## 4.下载附件

[%E6%B5%8B%E8%AF%95%E5%B5%8C%E5%85%A5PDF.pdf](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/fab11580-96c3-4230-90f6-05257f00fb0a/%E6%B5%8B%E8%AF%95%E5%B5%8C%E5%85%A5PDF.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466ZSROC4CV%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160941Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIQCmeA6IkGiqA0J0bvruS3x8Exdqap83rd51g%2FgHbMNp7gIgbvOV77wJ1%2FxZZlnTHJsxQnEycareayjriZa9IzbUfEsq%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDCW6ciU4suM6Bxhz%2BCrcA9LhlVrwRM9HAyJAbJeN7vIl9r2wgw26KpIysYEKXKIODfRmfszHEHtedS1PY0oHUtQ0VhnqI6zhQGitW1%2BXL3Luh8CWQqmqdatKPV0NQ3A9NUqHodR0FjSR5bsy%2BFEvKc9UWBMZjogum9iAwO5oAkc2tOnO9tYQwP2hHfkKsqdnRs4TniOP0kYX2qWTz%2F6ZkVrZ6Tg3uJtU1%2B5IPUCPjGd9xZCTqqJ4GElx5cHpxX7lb9RsnpRO83nXN8M42LH8DwJWeOaifxXC10lDq74Z8C5WCzBJ0KA2MRH%2B72cOdQ4NjNVRjdXHggg5tdTnpHLxjmkUwhiE2D23enuJD312ctGtLSzJzwXn4GiyVaGj3ZBOawG8r1Bmaq3Qy0nLhgFsw%2FAAcQPadBJ8aafed%2FPoUoMHFpC236Ivs9y65KWUI8C8iWcd0NsPFOB1LJWIB7WE81Hi4tYp4Bp3W1pakras7hq5j2EPSeoMsufE4bElEg6lMLMUFe7T0teXEJ31H%2B97ZG%2F4kOive1%2BypfgUGmbzAnEcrWkSz0POCtM3LRod3k7C18fl858CFn1TB13a1XosMB8ofBfG8LxQhvO5LspgL904Xy%2Bh8zBNRwiWOEVbkmWnI1KZjvuoaiB5%2FBopMLzmzc8GOqUB9opdRczKJhzn55%2BPCtwYIik6QVrOwFepnKmADpxXp4gLExkCQvYKALT6MgOBbm0S87%2Ff3n2HifC3PEOEI%2FoH1xb9IxLQLfxzF65AZ2j0D9kEqZldUmtV81vXmd2HUzCtdBs3rSBtfPxW1mAt805JEVxrxbPoyDQxfOOURSoZu4JwaVzmqpAzbhPvvV%2BjrVweZ9X4x5qJUMLmY%2FKyareCJ1Rz3MvW&X-Amz-Signature=39cc591fdb77e7561a5d65d23f9729167163f016a56253b117523854a39155bd&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

[%E4%B8%8B%E8%BD%BDPDF%E9%99%84%E4%BB%B6-2.pdf](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/69f6fdf6-9aab-485a-a73d-d5c0d3f324db/%E4%B8%8B%E8%BD%BDPDF%E9%99%84%E4%BB%B6-2.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466ZSROC4CV%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160941Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIQCmeA6IkGiqA0J0bvruS3x8Exdqap83rd51g%2FgHbMNp7gIgbvOV77wJ1%2FxZZlnTHJsxQnEycareayjriZa9IzbUfEsq%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDCW6ciU4suM6Bxhz%2BCrcA9LhlVrwRM9HAyJAbJeN7vIl9r2wgw26KpIysYEKXKIODfRmfszHEHtedS1PY0oHUtQ0VhnqI6zhQGitW1%2BXL3Luh8CWQqmqdatKPV0NQ3A9NUqHodR0FjSR5bsy%2BFEvKc9UWBMZjogum9iAwO5oAkc2tOnO9tYQwP2hHfkKsqdnRs4TniOP0kYX2qWTz%2F6ZkVrZ6Tg3uJtU1%2B5IPUCPjGd9xZCTqqJ4GElx5cHpxX7lb9RsnpRO83nXN8M42LH8DwJWeOaifxXC10lDq74Z8C5WCzBJ0KA2MRH%2B72cOdQ4NjNVRjdXHggg5tdTnpHLxjmkUwhiE2D23enuJD312ctGtLSzJzwXn4GiyVaGj3ZBOawG8r1Bmaq3Qy0nLhgFsw%2FAAcQPadBJ8aafed%2FPoUoMHFpC236Ivs9y65KWUI8C8iWcd0NsPFOB1LJWIB7WE81Hi4tYp4Bp3W1pakras7hq5j2EPSeoMsufE4bElEg6lMLMUFe7T0teXEJ31H%2B97ZG%2F4kOive1%2BypfgUGmbzAnEcrWkSz0POCtM3LRod3k7C18fl858CFn1TB13a1XosMB8ofBfG8LxQhvO5LspgL904Xy%2Bh8zBNRwiWOEVbkmWnI1KZjvuoaiB5%2FBopMLzmzc8GOqUB9opdRczKJhzn55%2BPCtwYIik6QVrOwFepnKmADpxXp4gLExkCQvYKALT6MgOBbm0S87%2Ff3n2HifC3PEOEI%2FoH1xb9IxLQLfxzF65AZ2j0D9kEqZldUmtV81vXmd2HUzCtdBs3rSBtfPxW1mAt805JEVxrxbPoyDQxfOOURSoZu4JwaVzmqpAzbhPvvV%2BjrVweZ9X4x5qJUMLmY%2FKyareCJ1Rz3MvW&X-Amz-Signature=dd4ac225c1f4353e959fbb81e370a3ef0eacf895796431415ee67d57f6a86b8c&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

## 5. 照片集

<aside>
<img class="emoji" draggable="false" alt="💡" src="https://twemoji.maxcdn.com/v/13.1.0/72x72/1f4a1.png"/>这是一张图片
![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/c876828e-2768-4863-b6d3-ad97b32223d3/WX20201027-1015302x.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466SNOOXJN4%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160945Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIQDpKvMS6QDHYRz1UU%2B%2FFim3bAfas2LBiSvDHC79tpBlAwIgZyf7cAZW2BFuAaN7ANMMoruaVtAQVyQ%2FXG4r2iJbtG0q%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDKAJK%2FQffboEcbf8YircA8fmGe9wCCr%2B27MYt5%2FylecCr19RfNeIJxX7qKSCOLInkWnWeKn5Uf8xMte1uckRnRn8EMzoKVDkEafZlKhzHtFrVphqfsad%2BXv82rRg90%2BvZbNtEdIiJvmluEVJ784pY%2FZldQvrJaoLBfHlRmS41ylB1tf2LTEo8qLKBKvc%2BmPwx2nL4LtEHGOj9waKQt9DHMb0xxSAcJy87w9hnvP%2FeoY6kEJK%2BV1YX%2BtYS9Cbl9rBM%2BT24Jyrs3aOSNndXlJM%2BCKDlPbaTROmc%2BJEImXj%2Bs90NQMECXCZOPZxF27anFqks4A47P5kzWvvY%2B%2FSxHjQNy235URPgQxqQOeXjFTi3ikhonExEZgnlNX91rPRyhuyrQPseDXzOe5YmEVys9V2hm4TqbtM%2FhrNcKcHqL4orwTRZ1DWXZB6MR3h4SLROsGub%2BWhPh98mulsALLtKxhrKbxIShv1SODx4DY6GtP5HPl%2B%2FmTSYz5gKxwDvbyGbak2V53R%2BWAfUepS4rQDIpcnw9djPU44m9rlkfipymC968eAT3zVE7an0juA8pLg8WHTGWvScMO5Tg4T5Kx0Erjo4o%2B5QGR8ZHuf77GCA6OkKksg1337sFvrbkKyjMfPKeZm%2FNDrMgyfchWXYZX0ML3mzc8GOqUB357jH1dPBMIrPrTtE0Lt%2B1wn4aF2BupB7PRtTNVA%2Bb6rxb0iyLkzIIeH0LNeS%2Bm%2FNXJYn0vPdGJqg3%2BLNfkMFr6vN07KfTWJC%2F35SofS9PIz72u14AkZOH2BIMUYvMrp4itj6mx29UCZOI8QfY%2Baib7EeRVJg%2F4cyFep565VlmzNmy4c5xSfOhPlFXLyNLmTEWuYodXj8BYKJaqqzVI9RyzkiE%2FI&X-Amz-Signature=36be19c38f2fefc48973392377cf4e30777ad4e00258f301987cde0bf75bf962&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
</aside>

照片集

## 6. 内嵌网页

<div style="width: 100%; margin: 0 0 2px;"><iframe src="https://docs.tangly1024.com/zh" style="width: 100%; margin:0; aspect-ratio: 16/9;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>

## 7.内嵌视频

暂时屏蔽内嵌视频

## 8.代办

家庭

- [ ] 洗衣
- [ ] 做饭

事业

- [ ] 开会
- [ ] 加班

## 9.折叠列表

<details>
<summary>点击展开</summary>
<details>
<summary>点击展开</summary>
<details>
<summary>点击展开</summary>

内容可以多级嵌套

</details>

</details>

</details>

---

## 10. 同步块

Notion 支持将不同页面的块进行同步，即 SyncBlock，以下是来自另一个页面的块：

<aside>
<img class="emoji" draggable="false" alt="💡" src="https://twemoji.maxcdn.com/v/13.1.0/72x72/1f4a1.png"/>注意 ： 同步块的使用条件是源页面也要被开放共享 ，否则NotionNext将无权访问，页面上会被忽略渲染。
![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/e078a58d-d9a8-48ac-8489-34d9d71b03c8/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466RMQ37RT3%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160947Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIFAD9rtHaq%2Bg3hKY9wR4Artpz29yVwluKO2Y%2BI7f7cF%2BAiEA%2B%2BbvkiVfkmy9vbWl%2BmpXyYIzg25NuAs%2FAvlEKIrjCfUq%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDMaajjTNDyhIyQvP4yrcA5e3saLoFHrqO4Du6nRQjwX9AkCEErurrSScqZL0Y45y9SZ4DszAmKPdoKMTllgODhDoPsemgchLCqpj9aDIXm%2F%2FF3j%2BPPNqubjh%2BCyUvYOS8DAJ8wlpOMBqgsHMRz6GWiFuV2P6yW%2BP0y0ajYIVMbEPM7y70QyR1CHcZ%2BBJh2fS607Yka19eFYGaGRDftS3O5XsMIUFuOolI9hNIQyY0yGE3axJT7np%2BjhXwbPx2lJHyNxPIqE6QBP6wJBY9fyS2Hx%2FFrwScWu1eqrXt0D8g6Y5DqxFRrA7yIEqSNOcw51cN3m%2F65wzV%2BJuruOvx2XnNwfuXmiVCkvW4yBaapOH%2Bw0mPl4K6hN50CldA%2B0mnYLjiZxpicSQvEp3G95eW0Qq7zJS4BUaWRNX%2FX49fym9LFP3blFVIX9djxCiBz8BiKSuPF4vKh4N93M89TCbux6qFpT2HzElHRJWf1h4nAE98NKBbvWBRICjSVfob%2BOUYWhZ78dQrs3P%2B48KGHV3RLd5GUMwrBYDQdTRHvrzwqhrEU6Il94KAXuDXENTvEU2w2AL%2FzGlVDJ2lu6gE8DBQHNYkePACpOmYbzNypkO04oHUbpDtvY2BDGS7TKTjiMmw3EGMm9U%2FCl10dSEcL5%2FMITnzc8GOqUBGFifcutmpjQIT6dHO5yoDrHLlh%2FvuN9u%2FBPv0vUpN7BRQdoinzuC%2FwEHCQxJb9pntueIy7NawPAHrQflwak0vdUceg7piFIL0GmhNDyQf5buIVTNR%2FyOgrxqqK1bT1%2FXgkplm22V%2F5uGwq5%2Foh5y%2BCm4LShCWEvvtN8bRnZGCFjZoIaPuKxNViIxi%2Fg3cCG0sAzjVDnOEEicgyIcJPok08ufuGXQ&X-Amz-Signature=8c9cd5bd319b5e295692ee48b39ff0679037ecb3adbcfa487e3a9a8860839e47&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
</aside>

# 11.多级目录

heading 标题在博客中自动转为目录

## 二级目录 1

二级内容 1

## 二级目录 2

二级内容 2

## 二级目录 3

### 三级目录 3.1

不同级别的 heading 代表不同级别的目录

### 三级目录 3.2

高一级目录嵌套低一级目录

## 多级列表

- 事物的必然性

1. 事物按规律变化，也有一种不可避免的性质．这种性质就叫做**必然性**
   1. 事物的必然性，是事物本身的性质（我们反对宿命论的是其认为这一切是受神明的支配，而不是反对事物发展中存在的不可避免的性质的事实）
      1. 第三级别列表
      2. 第三级别列表
   2. 其决定于它自己本身发展的情况和周围的条件
      1. 第三级别列表
         1. 第三级别列表

# 模板使用说明

若要部署你的 NotionNext 项目，请复制该模板，并按照模板格式创建文章：

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://tanghh.notion.site/02ab3b8678004aa69e9e415905ef32a5?v=b7eb215720224ca5827bfaa5ef82cf2d"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">Notion | Where teams and agents work together</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;">A collaborative AI workspace, built on your company context. Build and orchestrate agents right alongside your team's projects, meetings, and connected apps.</div><div style="display: flex; margin-top: 6px; height: 16px;"><img src="https://tanghh.notion.site/images/favicon.ico"style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://tanghh.notion.site/02ab3b8678004aa69e9e415905ef32a5?v=b7eb215720224ca5827bfaa5ef82cf2d</div></div></div><div style="flex: 1 1 180px; display: block; position: relative;"><div style="position: absolute; inset: 0px;"><div style="width: 100%; height: 100%;"><img src="https://www.notion.so/images/meta/default.png" referrerpolicy="no-referrer" style="display: block; object-fit: cover; border-radius: 3px; width: 100%; height: 100%;"></div></div></div></a></div><div style="text-align: center; margin:0;"><p>中文模板</p></div></div>

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://www.notion.so/tanghh/7c1d570661754c8fbc568e00a01fd70e?v=8c801924de3840b3814aea6f13c8484f&pvs=4"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">Notion | Where teams and agents work together</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;">A collaborative AI workspace, built on your company context. Build and orchestrate agents right alongside your team's projects, meetings, and connected apps.</div><div style="display: flex; margin-top: 6px; height: 16px;"><img src="https://www.notion.so/images/favicon.ico"style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://www.notion.so/tanghh/7c1d570661754c8fbc568e00a01fd70e?v=8c801924de3840b3814aea6f13c8484f&pvs=4</div></div></div><div style="flex: 1 1 180px; display: block; position: relative;"><div style="position: absolute; inset: 0px;"><div style="width: 100%; height: 100%;"><img src="https://www.notion.so/images/meta/default.png" referrerpolicy="no-referrer" style="display: block; object-fit: cover; border-radius: 3px; width: 100%; height: 100%;"></div></div></div></a></div><div style="text-align: center; margin:0;"><p>English Tamplate</p></div></div>

Notion 页面中，每篇文章都将有以下属性 🤔：

| 属性       | 必填 | 说明                                | 备注                                                      |
| ---------- | ---- | ----------------------------------- | --------------------------------------------------------- |
| `title`    | 是   | 文章标题                            |                                                           |
| `status`   | 是   | 发布状态                            | （仅当状态为`Published` 时会被 展示）                     |
| `type`     | 是   | 页面类型 (博文`Post` / 单页(`Page`) | 单页不会在博文列表显示 。                                 |
| `summary`  | 否   | 内容摘要                            | 搜索和简略显示会用到                                      |
| `date`     | 否   | 发布日期                            | 在 V3.3.9 之前的版本此项为必填。                          |
| `category` | 否   | 文章分类                            | 可以自定义                                                |
| `tags`     | 否   | 文章标签                            | 可多个，建议不要太多                                      |
| `slug`     | 否   | 文章短路径                          | (每篇文章唯一，请勿 重复）                                |
| `icon`     | 否   | 菜单栏图标(仅当`Page`类型有效)      | 可以参考：[图标库地址](https://fontawesome.com/v6/search) |
| `password` | 否   | 文章加锁                            | 需要输入密码才允许访问                                    |

# 评论插件

系统支持 Waline\Giscus\Valine\GitTalk\Utterance\Cusdis\Twikoo 六种评论插件，并且可以同时开启，点击评论区的 Tab 来体验。

按照以下教程可以开启响应的评论插件

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://tangly1024.com/article/notionnext-twikoo"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">tangly1024.com</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;"></div><div style="display: flex; margin-top: 6px; height: 16px;"><img src=""style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://tangly1024.com/article/notionnext-twikoo</div></div></div></a></div></div>

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://tangly1024.com/article/notion-next-comment-plugin"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">tangly1024.com</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;"></div><div style="display: flex; margin-top: 6px; height: 16px;"><img src=""style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://tangly1024.com/article/notion-next-comment-plugin</div></div></div></a></div></div>

<div style="width: 100%; margin-top: 4px; margin-bottom: 4px;"><div style="display: flex; background:white;border-radius:5px"><a href="https://tangly1024.com/article/notionnext-valine"target="_blank"rel="noopener noreferrer"style="display: flex; color: inherit; text-decoration: none; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; flex-grow: 1; min-width: 0px; flex-wrap: wrap-reverse; align-items: stretch; text-align: left; overflow: hidden; border: 1px solid rgba(55, 53, 47, 0.16); border-radius: 5px; position: relative; fill: inherit;"><div style="flex: 4 1 180px; padding: 12px 14px 14px; overflow: hidden; text-align: left;"><div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; min-height: 24px; margin-bottom: 2px;">tangly1024.com</div><div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); height: 32px; overflow: hidden;"></div><div style="display: flex; margin-top: 6px; height: 16px;"><img src=""style="width: 16px; height: 16px; min-width: 16px; margin-right: 6px;"><div style="font-size: 12px; line-height: 16px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">https://tangly1024.com/article/notionnext-valine</div></div></div></a></div></div>

[%E6%B5%8B%E8%AF%95%E5%B5%8C%E5%85%A5PDF.pdf](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/20ecd1ff-e4de-4471-b86f-6f14ec891fc0/%E6%B5%8B%E8%AF%95%E5%B5%8C%E5%85%A5PDF.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466ZSROC4CV%2F20260430%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260430T160941Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEgaCXVzLXdlc3QtMiJHMEUCIQCmeA6IkGiqA0J0bvruS3x8Exdqap83rd51g%2FgHbMNp7gIgbvOV77wJ1%2FxZZlnTHJsxQnEycareayjriZa9IzbUfEsq%2FwMIEBAAGgw2Mzc0MjMxODM4MDUiDCW6ciU4suM6Bxhz%2BCrcA9LhlVrwRM9HAyJAbJeN7vIl9r2wgw26KpIysYEKXKIODfRmfszHEHtedS1PY0oHUtQ0VhnqI6zhQGitW1%2BXL3Luh8CWQqmqdatKPV0NQ3A9NUqHodR0FjSR5bsy%2BFEvKc9UWBMZjogum9iAwO5oAkc2tOnO9tYQwP2hHfkKsqdnRs4TniOP0kYX2qWTz%2F6ZkVrZ6Tg3uJtU1%2B5IPUCPjGd9xZCTqqJ4GElx5cHpxX7lb9RsnpRO83nXN8M42LH8DwJWeOaifxXC10lDq74Z8C5WCzBJ0KA2MRH%2B72cOdQ4NjNVRjdXHggg5tdTnpHLxjmkUwhiE2D23enuJD312ctGtLSzJzwXn4GiyVaGj3ZBOawG8r1Bmaq3Qy0nLhgFsw%2FAAcQPadBJ8aafed%2FPoUoMHFpC236Ivs9y65KWUI8C8iWcd0NsPFOB1LJWIB7WE81Hi4tYp4Bp3W1pakras7hq5j2EPSeoMsufE4bElEg6lMLMUFe7T0teXEJ31H%2B97ZG%2F4kOive1%2BypfgUGmbzAnEcrWkSz0POCtM3LRod3k7C18fl858CFn1TB13a1XosMB8ofBfG8LxQhvO5LspgL904Xy%2Bh8zBNRwiWOEVbkmWnI1KZjvuoaiB5%2FBopMLzmzc8GOqUB9opdRczKJhzn55%2BPCtwYIik6QVrOwFepnKmADpxXp4gLExkCQvYKALT6MgOBbm0S87%2Ff3n2HifC3PEOEI%2FoH1xb9IxLQLfxzF65AZ2j0D9kEqZldUmtV81vXmd2HUzCtdBs3rSBtfPxW1mAt805JEVxrxbPoyDQxfOOURSoZu4JwaVzmqpAzbhPvvV%2BjrVweZ9X4x5qJUMLmY%2FKyareCJ1Rz3MvW&X-Amz-Signature=d9b1575907e66390aefd38a0fd7be781d69ed1be438fc879735287e1bed01289&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

# 引用文献

### [1. 关于李白](https://zh.wikipedia.org/zh-sg/%E6%9D%8E%E7%99%BD)

引用另一篇文章 →[模板说明](https://app.notion.com/p/7ab260b392518286850d0110bc28c6b4)
