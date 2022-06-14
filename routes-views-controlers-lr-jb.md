Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.
#created custom landing page at localhost:3000
# generated a controller named Team added team_member_1
```
 class TeamController < ApplicationController
    def team_member_1
    end
end
```

created home.erb view
```
<h1> This is  the home page. </h1>
```
assigned the root route to home view
```
Rails.application.routes.draw do
  root 'team#home'
end
```

As a user, I can see the names of my team members as hyperlinks on the landing 
page.
# added ruby tags with link to members
```
<ul> 
    <li> <%= link_to 'jb', '/jb' %> </li>
    <li> <%= link_to 'logan', '/logan' %> </li>
</ul>

```
added two members in the controller
```
 def team_member_jb        
    end
    def team_member_logan
    end
```


As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)

added routes to team members
```
get '/jb' => 'team#team_member_jb'
get '/logan' => 'team#team_member_logan'
```
assigned link to the routes
  

added ordered list of the top three


