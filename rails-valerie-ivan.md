As a user, I can visit a custom landing page at localhost:3000.
rails new routers_controllers -d postgresql -T
rails db:create


rails g controller Main

As a user, I can see the names of my team members as hyperlinks on the landing page.

```
<h1>Ivan</h1>
<h2>Top Three Things</h2>
<ol>
<li>Music</li>
<li>Electronics</li>
<li>Trashed with the boys at events</li>
</ol>
<%= link_to 'home', '/' %>

```

```
<h1>Val</h1>

<h2>Top Three Things</h2>

<ol>
<li>Concerts</li>
<li>Restaurants</li>
<li>Happy Hour</li>
</ol>
<%= link_to 'home', '/' %>
```
As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)
Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
```
def cubed
        @number= params[:number]
    end
```
```
<p>Your Number: <%= @number.to_i * @number.to_i * @number.to_i %> </p>
```


As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.

As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).

As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.