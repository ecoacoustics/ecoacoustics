---
layout: post
title:  "Welcome to Jekyll!"
date:   2017-06-13 09:46:11 +1000
categories: jekyll update
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

# Test code highlighting

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

```ruby
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
```
 
# Citation testing
Test citation {% cite Truskinger2014 %}.

{% quote Truskinger2014 %}
Lorem ipsum dolor sit amet, consectetur adipisicing elit,
sed do eiusmod tempor.

Lorem ipsum dolor sit amet, consectetur adipisicing.
{% endquote %}

# Math Testing

What about inline $$a^2 + b^2 = c^2$$ math? Or something more
complex $$ \mathbf{X}\_{n,p} = \mathbf{A}\_{n,k} \mathbf{B}\_{k,p} $$ like that?

Block Math examples:

$$a^2 + b^2 = c^2$$

$$ \mathsf{Data = PCs} \times \mathsf{Loadings} $$

$$ \mathbf{X}\_{n,p} = \mathbf{A}\_{n,k} \mathbf{B}\_{k,p} $$

# Bibliography testing

## Only references cited on this page
{% bibliography --cited %}

## All references
{% bibliography %}
