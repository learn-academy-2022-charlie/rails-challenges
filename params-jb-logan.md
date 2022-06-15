Params

As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.

Create a new view named home 
set home to the root route
link to cubed view
create a view called cubed
link to home

In cubed_controller.rb
```
def number_cubed
    # number = params[:number]
    # integer = number.to_i
    # @cubed = integer ** 3
    @cubed = params[:number].to_i ** 3
end
```
in view/cubed/number_cubed.html.erb
```
<h2> Your number cubed </h2>
<p> <%= @cubed %> </p>
<%= link_to 'Home', '/'%>
```

in routes.rb
```
get '/cubed_number/:number' => 'cubed#number_cubed'
```

As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.

create a view named evenly 
create link to evenly on home page
create link to home on evenly page
add routes to evenly

in evenly.html.erb
```
<h2> Is your first number evenly divisible by your second? </h2>
<p> <%= @numbers %></p>
<%= link_to 'Home', '/'%>
```

In cubed_controller.rb
```
def evenly 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    # @numbers = num1 + num2
    @numbers = num1 % num2 == 0 ? "#{num1} is evenly divisible by #{num2}" : "#{num1} is not evenly divisible by #{num2}"
end
```
in routes.rb
```
get '/evenly/:number1/:number2' => 'cubed#evenly'
```

in home.html.erb
```
<li><%= link_to 'Evenly', '/evenly' %></li>
```

As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).
As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.