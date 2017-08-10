---
layout: raw_page
title: Editing in Markdown
subtitle: help
---
*[HTML]: Hyper Text Markup Language

# What is Markdown

Markdown is a super simple way to write text that includes basic formatting.
This website uses Markdown because other text formats (for example Microsoft 
Word documents) can not be easily shared, versioned, or adapted for the web.
Markdown is the defacto text format for most websites today--you've probably
used it before!

The following page can be seen in it's raw format, that is, what _you_ as a user
would type [here]({% include this-page-in-gh.html option='raw' %}). We've also 
set this page up so you can see the Markdown used to generate this page in the 
right hand colum.

# Markdown features

## Headings

Headings are defined with hashes, like so:

# Level 1 Heading
## Level 2 Heading
### Level 3 Heading
#### Level 4 Heading
##### Level 5 Heading
###### Level 6 Heading








## Inside a paragraph

You can add emphasis with  *asteriks* or double **asteriks**. Emphasis can also
be added with _underscores_ or double __underscores__. You can ~~strike out 
text~~ by using two tilde (`~~`) characters. Markdown will do fancy things like
automatically convert two hyphens (`--`) into an en dash (--), three (`---`) 
into an em-dash (---), and convert standard quote marks `"'hello'"` into fancy
quote marks: "'hello'".

Footnotes[^1] are added with `[^1]` notation; you then must define your footnote
(usually the next paragraph is fine it will get automatically moved to the
bottom of the page later).

[^1]: The definition of the footnote!

Abbreviations, such as HTML, work similarily to footnotes. Once defined all
words that match the abbreviation will get transformed. We typically define all
abbreviations at the top of the page.

Unfortunately, things like super^script, sub_script are known not to work.

## Lists

### Numbered

1. Item 1
1. Item 2
1. Item 3

### Unumbered (bullets)

- Argument one
- Argument two
  - With a sub argument!
- Argument three

### Definition lists

term
: meaning
: another meaning

another term
: another meaning



## Horizontal rule

--- 


## Tables

| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=====
| Foot1   | Foot2   | Foot3   |






## Code

You can add one-line code snippets into a sentance by using the backtick
character (`` ` ``) to wrap some text. Here is an example: 
`indices <- calc.indices(data)`. Inline code snippets are useful for highlighting
values, like `42`,  as well as other things.

### Blocks of code

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}


```r
# An example of some R code
> # We can use the print() function
> print("Hello World!")
[1] "Hello World!"

> # Quotes can be suppressed in the output
> print("Hello World!", quote = FALSE)
[1] Hello World!

> # If there are more than 1 item, we can concatenate using paste()
> print(paste("How","are","you?"))
[1] "How are you?"
```
 



# Citations

Citations are not a normal part of Markdown. This website uses a special
extension to make them work.

You can use citations inline on the page like this {% cite Truskinger2014 %}.

{% quote Truskinger2014 %}
We can also add a quote block for a publication and then cite their work.
{% endquote %}

Any citations you use must be added to the website's references file.
All citations used on a page will be automatically included in the page
bibliography.



# Math

Support for math is achieved with another non-standard extension to Makrdown.
Math support uses LaTeX syntax. Inline equations can be added by wrapping the
LaTeX equation in two dollar symbols (`$$`). Here is an example:
$$a^2 + b^2 = c^2$$ and a more complex example:
$$ \mathbf{X}_{n,p} = \mathbf{A}_{n,k} \mathbf{B}_{k,p} $$.

There's also support for showing equations as paragraphs. To do this just put
the equation on it's own line with a line break before and after. Here are some
examples:

$$a^2 + b^2 = c^2$$

$$ \mathsf{Data = PCs} \times \mathsf{Loadings} $$

$$ \mathbf{X}_{n,p} = \mathbf{A}_{n,k} \mathbf{B}_{k,p} $$