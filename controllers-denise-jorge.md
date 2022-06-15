Challenges
Routes, Views, Controllers

As a user, I can visit a custom landing page at localhost:3000.

Create a new Rails app in the appropriate folder: $ rails new routes_controllers_views_params -d postgresql -T
$ cd routes_controllers_views_params
Create a database: $ rails db:create
Begin the rails server: $ rails server
In a browser navigate to: http://localhost:3000

As a user, I can see the names of my team members as hyperlinks on the landing page.
As a user, I can click on each team member's name and be taken to a page that displays a list of that team member's top three things. (Could be top three restaurants, activities, books, video games, hiking locations, beaches, doughnut shoppes, movies, etc.)

Params
As a user, I can visit a page called cubed that takes a number as a param and displays that number cubed.
As a user, I can visit a page called evenly that takes two numbers as params and displays whether or not the first number is evenly divisible by the second.
As a user, I can visit a page called palindrome that takes a string as a param and displays whether it is a palindrome (the same word forward and backward).
As a user, I can visit a page called madlib that takes params of a noun, verb, adjective, adverb, and displays a short silly story.

            team_controller.rb
            class TeamController < ApplicationController
                def home
                    
                end

                def jorge
                    
                end

                def denise
                
                end
                
                def cubed
                    my_num = params[:number]
                    @cubed = my_num.to_i ** 3
                end
            end

            routes.rb
            Rails.application.routes.draw do
                root 'team#home'
                get '/jorge' => 'team#jorge'
                get '/denise' => 'team#denise'
                get '/cubed/:number' => 'team#cubed'
            end

            home.html.erb
            <h1>This is our team page </h1>
            <li> <%= link_to 'Jorge', '/jorge' %>
            <li> <%= link_to 'Denise', '/denise' %> </li>
            <li> <%= link_to 'Cubed', '/cubed' %> </li>

            cubed.html.erb
            <h2> Number cubed game </h2>
            <h3> <%= @cubed %> </h3>

            jorge.html.erb
            <h2> Jorge's favorite things </h2>
            <h3> Los Angeles Dodger's <h3>
            <h3> Las Vegas Raiders <h3>
            <h3> Los Aneles Lakers <h3>     

            denise.html.erb
            <h2> Denise's favorite things </h2>
            <h3> Galveston Beach <h3>
            <h3> Houston Astros <h3>
            <h3> Ruggles Black <h3>

