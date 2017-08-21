# RPS Challenge

Where I am
-------

Confused about how to pass the game rules through.

The Game
-------

The first page will ask for the players names. The first name must be populated (or is given as a default 'marketeer'). The second player is the computer.

Player one is then asked to choice between three options.

## The Rules Are:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## How You Install:

- Folk this repo to your github or clone it directly through your command line.
 - In command line once you are in this games' project directory, type 'bundle' or 'bundler install' to get all the gems and dependancies.

## How You Play The Game:

1. Navigate into the project directory where you have cloned the file.
2. Run 'Ruby app.rb' in your command line
3. Load on your web-browser 'localhost:4567'. If your port number, given in the command line is not '4567' then please replace this with the correct number.

## How I Have Tested:
- Rspec with capybara add-on. The verson of rspec in Gemfile also tests 'coverage'.
- Rubocop which checks for correct formatting.



The Set Task
----


The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Hints on functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).
