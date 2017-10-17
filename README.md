# Rock Paper scissors (RPS) Challenge Part 2

What is part 2 about?
-------


The first time I completed this challenge I unfortunately had to leave my avid fanbase at a lose... I was in week three of Makers and unable to complete the challenge, leaving the many players who downloaded it (just me ...) unable to determine if the decision they took to chose Rock, Paper or Scissors smashed the computer and won them the title of RPS Master.


Looking back now I am over a month wiser, I decided to take my advise on what I did wrong (https://github.com/abitravers1989/rps-challenge/blob/master/README.md) and see if I could make any improvements.


This time I started out with a diagrame and plan of action to be totally test driven (since over the past weeks I have learnt just how useful both of these techniques really are).   

![id](https://github.com/abitravers1989/rps-challenge-improved-/blob/master/public/plan.jpg?raw=true)


Some additional considerations:

Following the rules of the previous challenge I have passed the object information (such as the players name) through as a global variable, instantiating the object through (self.instance and self.create).

I hard coded the computer's choice (I won't spoil it here) and only allow one round to be played. I did this for simplicity as this is a learning exercise for me and I am focused more on understanding the flow of information than additional complexity.



How do I Install this RPS game?
-------


1. Open up your command line. Do all the following within your beautiful yet immensely powerful command line:

2. Clone this repo by typing:  ``git clone https://github.com/abitravers1989/rps-challenge-improved-.git ``.

3. Navigate to this newly created repo by typing: ````cd rps-challenge````.

4. Install all it's dependancies by typing ````bundle install ````. (This should take a couple of seconds but it provide you with some 'slightly interesting' installation code while you are waiting).



Great I now have the game, but how do I play it?
-------


1. Open your command line again.

2. If you aren't already in it, navigate to the project folder & type: ````ruby app.rb````.

3. Open your favourite web browser (unless it is Internet Explorer, in which case you have some serious life decisions issues which need addressing before you play this game...).

4. In the address bar (of firefox or chrome ;-) ) type in: ````http://localhost:4567/````, while feeling smugg about your good life choices.



The game which you have entered into...
-------


The first page will ask for the players names. The first name must be populated (or is given as a default 'marketeer'). The second player is the computer.

Player one is then asked to choice between three options.



The rules
-------


- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock



The bad news ...
-------



Testing
-------


Fear not, there is still some good news ... YOU CAN TEST IT .. (because everyone prefers testing someone else's code to playing a game .. right?.... )

The gemfile which will be automatically installed when you run bundler pr bundle in the command line contains all the testing frameworks you need to take my code apart ... (It is only week 3 of Makers Academy... please be kind...)

1. Open up our good friend the command line.

2. Run ````Rspec````

3. Watch the tests re-confirm the bad news. This test will automatically show coverage too.

4. Run `````Rubocop ````` to check if the code is formatted correctly.



The challenge which was set by Makers
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
