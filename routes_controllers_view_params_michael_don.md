# Routes
config > routes.rb

```Ruby
Rails.application.routes.draw do
  root 'main#home'
  get '/michael' => 'main#michael'
  get '/don' => 'main#don'
  get '/cubed/:num' => 'main#cubed'
  get 'evenly/:num1/:num2' => 'main#evenly'
  get 'palindrome/:palin' => 'main#palindrome'
  get 'madlib/:name/:noun/:verb/:adj/:adv/' => 'main#madlib'
end
```

# Controller
app > controllers > main_controller.rb

```Ruby
class MainController < ApplicationController
    def home
    
    end

    def michael
        @michael_top3 = ['footballs', 'talking to girls', 'driving my dads porsche']
    end

    def don
        @don_top3 = ['PoE', 'Destiny 2', 'Elden Ring']
    end

    def cubed
       @result = params[:num].to_i**3
    end

    def evenly
        result2 = params[:num1].to_i % params[:num2].to_i
        
        if result2.even?
            @evenly1 = "#{params[:num1]} is evenly divisible by #{params[:num2]}"
        else  
           @evenly1 = "#{params[:num1]} is NOT evenly divisible by #{params[:num2]}"
        end           
    end

    def palindrome
        if params[:palin].downcase == params[:palin].downcase.reverse
            @palin1 = "#{params[:palin]} is a palindrome!"
        else
            @palin1 = "#{params[:palin]} is NOT a palindrome!"
        end
    end

    def madlib
        @name = params[:name]
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]        
    end

end
```

# Views
app > views > main

> cubed.html.erb
```html
<h1> <%= @result %> </h1>

<%=link_to 'Home', '/' %>
```

> don.html.erb
```html
<h1> Hello Don! </h1>

<ul>
<% @don_top3.each do |value| %>
<li> <%= value %> </li>
<% end %>
</ul>

<%=link_to 'Home', '/' %>
```

> evenly.html.erb
```html
<%= @evenly1 %>
```

> home.html.erb
```html
<h1> Hello nerds! </h1>

<ul>
<li> <%=link_to 'Michael', '/michael' %> </li>
<li> <%=link_to 'Don', '/don' %> </li>

</ul>
```

> madlib.html.erb
```html
<h1> Welcome <%= @adj%> <%= @name%>! </h1>

<p> 
There once was a <%= @noun%> named <%= @name%>.
They <%= @verb%> on a <%= @noun%> <%= @adv%>.


</p>
```

> michael.html.erb
```html
<h1> Hello Michael! </h1>

<ul>
<% @michael_top3.each do |value| %>
<li> <%= value %> </li>
<% end %>
</ul>

<%=link_to 'Home', '/' %>
```

> palindrome.html.erb
```html
<%= @palin1 %>
```