Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.

```
<h1> Landing Page </h1>

```

As a user, I can see the names of my team members as hyperlinks on the landing page.

````
<h1> Landing Page </h1>

<ul>
<li><%= link_to 'Nic', '/nic' %></li>
<li><%= link_to 'Lance', '/lance' %></li>
<ul>
```
As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)
```
<h2>Lances Top Three Favorite Games</h2>
<ul>
<li>Mass Effect </li>
<li>Witcher </li>
<li>Red Dead 2 </li>
</ul>
<li><%= link_to 'Home', '/' %></li>

<h2>Nics Top Three Favorite Movies</h2>
<ul>
<li>Endgame </li>
<li>Christmas Vacation </li>
<li>Yellowstone </li>
</ul>
<li><%= link_to 'Home', '/' %></li>
```
Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
```
def cubed
        @cubed_num = params[:number].to_i**3
    end


<h2><%= @cubed_num %></h2>
```
As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.
```
  def evenly
        num1 = params[:num1].to_i
        num2 = params[:num2].to_i
        @evenly= if num1 % num2 == 0
            true
        else
            false
        end
    end

    <h2><%= @evenly %></h2>
```

As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).
```
  def palindrome
        word = params[:string]
        @palindrome = if word.downcase.reverse == word.downcase
            true
        else
            false
        end
    end


<h2><%= @palindrome %> </h2>
```
As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.
```
  def madlib
        noun = params[:noun]
        verb = params[:verb]
        adjective = params[:adjective]
        adverb = params[:adverb]
        @madlib = "The #{adjective} #{noun} #{adverb} #{verb}."
    end

<h3><%= @madlib %></h3>
```

# All of our routes
```
get '/' => 'team#home_page'
  get '/nic' => 'team#nic'
  get '/lance' => 'team#lance'
  get '/cubed/:number' => 'team#cubed'
  get '/evenly/:num1/:num2' => 'team#evenly'
  get '/palindrome/:string' => 'team#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'team#madlib'

```
````
