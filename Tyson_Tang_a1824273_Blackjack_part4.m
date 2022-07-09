% Creating a 21 blackjack game with the player and the computer
% the computer is the dealer
% ask for the user's name and printname in a statement
% create a vector for the hand of the computer
% display only the first card to the user
% create vector for hand of user and update the hand
% keep on updating and adding to hand until player stands
% display result

clear all;
clc;

%Ask user for input of name and print the name in a statement
name = input("Hello, what is your name? ","s");
fprintf("Welcome to Blackjack, %s\n\n", name); 


%creating the dealer's vector, titled dealerVector
dealerVector = [];

%generating 2 numbers for the dealer and updating dealerVector to include
%those elements, displaying the first element
for i = 1:2
    dealerInteger = randi([1 11]);
    dealerVector = [dealerVector dealerInteger];
end
fprintf("The dealer's first card is %d\n", dealerVector(1));

%creating the player's vector, titled playerVector
playerVector = [];


%generating 1 card(element) for the starting hand of the player
sum = randi([1 11]);
player = "hit";
playerVector = [sum];

% adding elements to the hand of the player
while player == "hit"
    playerInteger = randi([1 11]);
    playerVector = [playerVector playerInteger];
    sum = sum + playerInteger;
    fprintf("The sum of your current hand is %d\n",sum);
    if sum < 21
        player = input("Do you want to hit or stand: \n", 's');
    else
        player = "not hit";
    end    
    if player == "stand"
        player = "hitn't";
    end
end
fprintf("Your final hand is %d\n" , sum);

% identifying the sum of the hand of the dealerVector
sumofDealerVector = dealerVector(1) + dealerVector(2);

% displaying the final hand of the dealer
fprintf("The dealer's final hand is %d\n" , sumofDealerVector);