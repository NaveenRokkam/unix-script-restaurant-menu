#!/bin/sh
# Project: restaurant.sh
# Developers: 
#   Naveen Rokkam
#   Fatema Tuz Zohara
#   Kale Veeranjaneyulu
# Description:
# Inputs: Prompts for User name, menu selection
# Output: A file with user name and preferences.
# Screen 1: Welcome Screen
# Screen 2: User Menu 
# Screen 3  - Sub Menu Appetizers
# Screen 4  - Sub Menu Main Course
# Screen 5 - Sub Menu Dessert
# Screen 6 - Sub Menu Drinks
# 
#

#---------------------------------------------------------
# Initialize Order (only once during life time of program)
#---------------------------------------------------------
oAppetizer=()
oMainCourse=()
oDessert=()
oDrink=()

#---------------
# Welcome Logo
#---------------
# Function: Displays the top logo  
logo(){
clear
echo "\t\tWelcome to \"The PopEye Garden Restuarant\""
echo 
echo "\t\t" `date`
}


#---------------
# Read user name
#---------------
# Function: Read user name
fetchUser(){
echo "Enter your name:"
read name

echo "What is your table No:"
read table

now="$(date +'%Y_%m_%d_%T')"
filename="Table_""$table""_$now.txt"

echo "Welcome" $name >> $filename
echo "Your table number is" $table >> $filename
echo $now >> $filename
}

#---------------
# Welcome User
#---------------
displayUser(){
echo "Welcome" $name
echo "Your table is" $table
}

#---------------
# Menu Options
#---------------
# Constants: Displays a list of menu option available to the User
# 
mOpt1="1.  Appetizers"
mOpt2="2.  Main Course"
mOpt3="3.  Dessert"
mOpt4="4.  Drinks"
mOpt0="0.  Exit"
mOpt00="00. Finalize my order"

#----------------------------
# Sub Menu Options - Starters
#----------------------------
# Constants: Displays a list of Sub menu option available to the User
# 
smSOpt1="1.  Fried Mozzarella"
smSOpt2="2.  Italian Cheese Stuffed Meatballs"
smSOpt3="3.  Flue Italian Cheese Fonduta"
smSOpt4="4.  Classic Calamari"
smSOpt5="5.  Stuffed Mushrooms"
smSOpt6="6.  Lasagna Fritta"
smSOpt7="7.  Classic Shrimp Scampi Fritta"
smSOpt8="8.  Spicy Shrimp Scampi Fritta"
smSOpt9="9.  Crispy Risotto Bites"
smSOpt10="10.  Extra Breadsticks"

smOpt0="0. Back to Main Menu"

#-------------------------
# Sub Menu for - Main Course
#---------------------------
# Displays a list of options available to the User

smMOpt1="1. Chicken Scampi"
smMOpt2="2. Chicken Parmigiana"
smMOpt3="3. Eggplant Parmigiana"
smMOpt4="4. Fettuccine Alfredo"
smMOpt5="5. Chicken Alfredo"
smMOpt6="6. Shrimp Alfredo"
smMOpt7="7. Cheese Ravioli"
smMOpt8="8. Five Cheese Ziti al Forno"
smMOpt9="9. Tour of Italy"
smMOpt10="10. Citrus Chicken Sorrento"

#-----------------------------
# Sub Menu for - Desserts
#-----------------------------
# Displays the items Available to the User
#-----------------------------

smDOpt1="1. Warm Apple Crostata"
smDOpt2="2. Seasonal Sicilian Cheesecake"
smDOpt3="3. Tiramisu"
smDOpt4="4. Lemon Cream Cake"
smDOpt5="5. Black Tie Mousse Cake"
smDOpt6="6. Chocolate Mousse Cake"
smDOpt7="7. Zeppoli"
smDOpt8="8. Dolcini"
smDOpt9="9. Rainbow Cupcakes"
smDOpt10="10. Fun With Fudge"


#----------------------------
# Sub Menu Options - Drinks
#----------------------------
# Displays a list of Drink option available to the User
#----------------------------
smDrOpt1="1.  PORTA VITA SIGNATURE WINES"
smDrOpt2="2.  WHITE & ROSÉ: FRUITY & SWEET"
smDrOpt3="3.  WHITE & ROSÉ: LIGHT & CRISP"
smDrOpt4="4.  WHITE & ROSÉ: FULL & SMOOTH"
smDrOpt5="5.  RED: ROBUST & RIC"
smDrOpt6="6.  RED: SOFT BERRY FLAVORS"
smDrOpt7="7.  SIGNATURE WINE COCKTAILS"
smDrOpt8="8.  DRAFT BEERS"
smDrOpt9="9.  DOMESTIC BEERS"
smDrOpt10="10.  IMPORT & SPECIALTY BEERS"


#------------------
# Display Main Menu
#------------------
# Function - To display main menu
mainMenu(){
echo "\t" $mOpt1
echo "\t" $mOpt2
echo "\t" $mOpt3
echo "\t" $mOpt4
echo
echo "\t" $mOpt0
echo
echo "\t" $mOpt00
echo
echo $err
echo
echo "Enter your choice of menu by pressing the number and then ENTER";
}


#-----------------------------
# Display Sub Menu Appetizers 
#-----------------------------
# Function - To display Appetizers menu
subMenuAppetizers(){
echo "\t" $smSOpt1
echo "\t" $smSOpt2
echo "\t" $smSOpt3
echo "\t" $smSOpt4
echo "\t" $smSOpt5
echo "\t" $smSOpt6
echo "\t" $smSOpt7
echo "\t" $smSOpt8
echo "\t" $smSOpt9
echo "\t" $smSOpt10
echo
echo "\t" $smOpt0
echo
echo "\t" $mOpt00
echo
# Display Current Order
currAppetizers
echo 
echo $err
echo

echo "Enter your choice of menu by pressing the number and then ENTER";
}


#-----------------------------
# Display Sub Menu Main Course
#-----------------------------
# Function - To display Main Course Menu
subMenuMainCourse(){
echo "\t" $smMOpt1
echo "\t" $smMOpt2
echo "\t" $smMOpt3
echo "\t" $smMOpt4
echo "\t" $smMOpt5
echo "\t" $smMOpt6
echo "\t" $smMOpt7
echo "\t" $smMOpt8
echo "\t" $smMOpt9
echo "\t" $smMOpt10
echo
echo "\t" $smOpt0
echo
echo "\t" $mOpt00
echo
# Display Current Order
currMainCourse
echo
echo $err
echo

echo "Enter your choice of menu by pressing the number and then ENTER";
}


#-----------------------------
# Display Sub Menu Desserts
#-----------------------------
# Function - To display Desserts Menu
subMenuDesserts(){
echo "\t" $smDOpt1
echo "\t" $smDOpt2
echo "\t" $smDOpt3
echo "\t" $smDOpt4
echo "\t" $smDOpt5
echo "\t" $smDOpt6
echo "\t" $smDOpt7
echo "\t" $smDOpt8
echo "\t" $smDOpt9
echo "\t" $smDOpt10
echo
echo "\t" $smOpt0
echo
echo "\t" $mOpt00
echo
# Display Current Order
currDesserts
echo
echo $err
echo

echo "Enter your choice of menu by pressing the number and then ENTER";
}


#-----------------------------
# Display Sub Menu Drinks
#-----------------------------
# Function - To display Drinks menu
subMenuDrinks(){
echo "\t" $smDrOpt1
echo "\t" $smDrOpt2
echo "\t" $smDrOpt3
echo "\t" $smDrOpt4
echo "\t" $smDrOpt5
echo "\t" $smDrOpt6
echo "\t" $smDrOpt7
echo "\t" $smDrOpt8
echo "\t" $smDrOpt9
echo "\t" $smDrOpt10
echo
echo "\t" $smOpt0
echo
echo "\t" $mOpt00
echo
# Display Current Order
currDrinks
echo
echo $err
echo

echo "Enter your choice of menu by pressing the number and then ENTER";
}



#------------------------------------------------------------
# Function definition of Main Menu Options
#------------------------------------------------------------ 
mOpt1(){    
smAppetizers;  # calls sub menu for Appetizers 
}

mOpt2(){
smMainCourse; # calls sub menu for main course
}

mOpt3(){
smDessert;    # calls sub menu for desserts
}

mOpt4(){
smDrinks;     # calls sub menu for drinks
}

mOpt0(){
echo "Thank you for visiting The PopEye Garden restaurant";
}

mOpt00(){
#1. Display logo
logo

#2. Display the User
displayUser

#3. Final Order
echo "Your final order is";
echo "-------------------------------" >> $filename
echo "Appetizers:" >> $filename
echo "-------------------------------" >> $filename
printf '%s\n' "${oAppetizer[@]}" >> $filename
echo "-------------------------------" >> $filename
echo "Main Course:" >> $filename
echo "-------------------------------" >> $filename
printf '%s\n' "${oMainCourse[@]}" >> $filename
echo "-------------------------------" >> $filename
echo "Deserts:" >> $filename
echo "-------------------------------" >> $filename
printf '%s\n' "${oDessert[@]}" >> $filename
echo "-------------------------------" >> $filename
echo "Drinks:" >> $filename
echo "-------------------------------" >> $filename
printf '%s\n' "${oDrink[@]}"  >> $filename

echo "*******************************" >> $filename
echo "Thank you for dinning with us. Have a great day!!!" >> $filename

echo "Your order has been generated. Please find the details of order"
echo $filename
echo
echo "Thank you for dinning with us. Have a great day!!!"
exit 0
}

mOther(){
err="Error in input. Please enter only from the list of choices"
}

#------------------------------------------------------------
# Function definition of Sub Menus
#------------------------------------------------------------ 
addOrderAppetizer(){
 oAppetizer+=($appetizer)
 #oAppetizer=("${oAppetizer[@]}" $appetizer)   
}

currAppetizers(){
   # len=${#oAppetizer[@]}  #Length of Array
    if [ ${#oAppetizer[@]} -gt 0 ]
        then       
            echo "Appetizers selected:"
            printf '\n%s' "${oAppetizer[@]}"  #Print each element in new line          
    fi
}

addOrderMainCourse(){
    oMainCourse+=($mainCourse)
}

currMainCourse(){
    # len=${#oMainCourse[@]}
    if [ ${#oMainCourse[@]} -gt 0 ]
        then
        echo "MainCourse selected"
        printf '%s\n' "${oMainCourse[@]}"

    fi
}

addOrderDessert(){
    oDessert+=($dessert)
}

currDesserts(){
    # len=${#oDessert[@]}
    if [ ${#oDessert[@]} -gt 0 ]
        then
            echo "Desserts selected"
            printf '%s\n' "${oDessert[@]}"
    fi
}

# Functions for Drinks Menu
addOrderDrink(){
    oDrink+=($drinks)
}

currDrinks(){
    # len=${#oDrink[@]}  #Length of Array
    if [ ${#oDrink[@]} -gt 0 ]
        then
            echo "Drinks is selected:"
            printf '%s\n' "${oDrink[@]}"  #Print each element in new line
    fi
}

#---------------
# Screen 1
#---------------
# Function: Entry Screen
entryScreen(){
logo
fetchUser
mainScreen
}


#---------------
# Screen 2 - User Menu
#---------------
# Function: User Menu
mainScreen(){
# Continous while loop
while true
do
#1. Display logo
logo

#2. Display the User
displayUser

#3. Display the Main Menu
mainMenu

#4. Process the input from user
read subMenu
err=

case $subMenu in 
	1) mOpt1;;
	2) mOpt2;;
	3) mOpt3;;
	4) mOpt4;;
	0) mOpt0
	   break;;
	00) mOpt00
	    break;;
	*) mOther;;

esac   

done
}

#---------------
# Screen 3  - Sub Menu Appetizers
#---------------
smAppetizers(){

while true
do
#1. Display logo
logo

#2. Display the User
displayUser
echo
echo "Select your Appetizers"

#3. Display the sub Menu
subMenuAppetizers



#4. Process the input from user
read appetizer
err=

case $appetizer in 
    1) oAppetizer+=("$smSOpt1");;
    2) oAppetizer+=("$smSOpt2");;
    3) oAppetizer+=("$smSOpt3");;
    4) oAppetizer+=("$smSOpt4");;
    5) oAppetizer+=("$smSOpt5");;
    6) oAppetizer+=("$smSOpt6");;
    7) oAppetizer+=("$smSOpt7");;
    8) oAppetizer+=("$smSOpt8");;
    9) oAppetizer+=("$smSOpt9");;
    10) oAppetizer+=("$smSOpt10");;
	0) backToMain=1    
        break;;   
	00) mOpt00
	    break;;
	*) mOther;;
esac   
    
done

if [ backToMain==1 ]
    then
        mainScreen   # Move back to main Screen
fi
  
}


#-------------------
# Screen 4  - Sub Menu Main Course
#-------------------
smMainCourse(){
while true
do
#1. Display logo
logo
#2. Display the User
displayUser
echo
echo "select your Main Course"
#3. Display the sub Menu
subMenuMainCourse
#4. Process the input fro User
read mainCourse
err=

case $mainCourse in
    1) oMainCourse+=("$smMOpt1");;
    2) oMainCourse+=("$smMOpt2");;
    3) oMainCourse+=("$smMOpt3");;
    4) oMainCourse+=("$smMOpt4");;
    5) oMainCourse+=("$smMOpt5");;
    6) oMainCourse+=("$smMOpt6");;
    7) oMainCourse+=("$smMOpt7");;
    8) oMainCourse+=("$smMOpt8");;
    9) oMainCourse+=("$smMOpt9");;
    10) oMainCourse+=("$smMOpt10");;
    0) backToMain=1
    break;;
    00) mOpt00
    break;;
    *) mOther;;
esac

done

if [ backToMain==1 ]
    then
        mainScreen
fi

}

#------------------
# Screen 5 - Sub Menu Dessert
#------------------

smDessert(){
while true
do
#1. Display logo
logo
#2. Display the User
displayUser
echo
echo "select your Desserts"
#3. Display the sub Menu
subMenuDesserts
#4. Process the input fro User
read dessert
err=

case $dessert in
    1) oDessert+=("$smDOpt1");;
    2) oDessert+=("$smDOpt2");;
    3) oDessert+=("$smDOpt3");;
    4) oDessert+=("$smDOpt4");;
    5) oDessert+=("$smDOpt5");;
    6) oDessert+=("$smDOpt6");;
    7) oDessert+=("$smDOpt7");;
    8) oDessert+=("$smDOpt8");;
    9) oDessert+=("$smDOpt9");;
    10) oDessert+=("$smDOpt10");;
    0) backToMain=1
    break;;
    00) mOpt00
    break;;
    *) mOther;;
esac

done

if [ backToMain==1 ]
    then
    mainScreen
fi

}


#------------------
# Screen 6 - Sub Menu Drinks
#------------------
smDrinks(){

while true
do
#1. Display logo
logo

#2. Display the User
displayUser
echo
echo "Select your Drinks"

#3. Display the sub Menu
subMenuDrinks

#4. Process the input from user
read drinks
err=

case $drinks in
    1) oDrink+=("$smDrOpt1");;
    2) oDrink+=("$smDrOpt2");;
    3) oDrink+=("$smDrOpt3");;
    4) oDrink+=("$smDrOpt4");;
    5) oDrink+=("$smDrOpt5");;
    6) oDrink+=("$smDrOpt6");;
    7) oDrink+=("$smDrOpt7");;
    8) oDrink+=("$smDrOpt8");;
    9) oDrink+=("$smDrOpt9");;
    10) oDrink+=("$smDrOpt10");;
    0) backToMain=1
    break;;
    00) mOpt00
    break;;
    *) mOther;;
esac

done

if [ backToMain==1 ]
    then
        mainScreen   # Move back to main Screen
fi

}

#-----------------------------
# Program Begins here
#-----------------------------
entryScreen