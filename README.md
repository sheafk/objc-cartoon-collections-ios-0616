# Cartoon Collections

## Objectives

1. Practice utilizing the debugging suite while exercising what you've already learned.

## Introduction

This lab contains a few code challenges based upon manipulating strings and arrays in different ways by using loops and conditionals; it's all stuff you should already have practiced with. Now, get practice incorporating your new knowledge of debugging tools into your workflow. Use `NSLog()`, breakpoints, `po` in the console, and the variable viewer to get glimpses inside your code as it's running.

## Instructions

Open the `*.xcworkspace` file and navigate to the `FISAppDelegate.h` header file to declare the following methods:

* `stringByRollCallingDwarfsInArray:` that takes one `NSArray` argument called `dwarfs` and returns an `NSString`.

* `arrayOfPlaneteerShoutsFromArray:` that takes one `NSArray` argument called `powers` and returns an `NSArray`.

* `summonCaptainPlanetWithPowers:` that takes one `NSArray` argument called `powers` and returns an `NSString`.

* `findFirstOfPremiumCheeses:inCheesesInStock:` that takes two `NSArray` arguments called `premiumCheeses` and `cheesesInStock`, and returns an `NSString`.

* `arrayByConvertingMoneyBagsIntoPaperBills:` that takes one `NSArray` argument `moneyBags` and returns an `NSArray`.

Navigate to the `FISAppDelegate.m` implementation file and declare each method to return `nil`. Run the tests (`⌘``U`) to see that they fail. Solve each method implementation to pass the test:

1. To improve workplace safety, Doc has suggested that the [seven dwarfs][snow_white_film] roll call themselves when entering or leaving the mine. Write the implementation for `stringByRollCallingDwarfsInArray:` to take the array of dwarf names and create a string that gives each dwarf a list number (`1.` to `7.`), and separates each number & name with a `|` ("pipe"). Look at the test file to see exactly what you need to generate, but don't hard code the answer! Create the expected string programmatically by appending each dwarf's name in an interpolated string.

2. Let's help the [Planeteers][captain_planet] get the gusto they need to summon Captain Planet! Write the implementation of `arrayOfPlaneteerShoutsFromArray:` to take each of the five Planeteer's powers in the argument array and convert them into uppercase while adding an `!` ("exclamation point") to the end. Return the array of altered strings. Again, don't hard code the answer. Solve this problem programmatically with loops and string interpolation!

3. Now that the Planeteers have practiced their shouts, they need to combine their powers to take pollution down to zero! Write the implementation for `summonCaptainPlanetWithPowers:` to take the five Planeteers' powers and combine them into the Planeteer phrase that summons Captain Planet!

    * The phrase begins with "Let our powers combine:",
    * Then each Planeteer shouts their power in sequence,
    * Then the phrase ends with "Go Planet!".  
    * Each piece of the phrase should be separated by a new line (`\n`), and don't forget to capitalize "Planet!" as proper noun.  
**Hint:** *You could try calling the method you just wrote inside this method implementation by calling* `[self arrayOfPlaneteerShoutsFromArray:powers]` *and capturing its return. Sending a method call to* `self`, *in this case, tells our* `FISAppDelegate` *object to call a method on itself.*

4. [Jerry Mouse][tom_and_jerry] has expensive taste in cheese and he only eats the best. Write the implementation for `findFirstOfPremiumCheeses:inCheesesInStock:` to compare the two argument arrays and return the first cheese in `premiumCheeses` that is also in the `cheesesInStock` array. If there are no cheeses common to both arrays, then the method should return `nil` so Jerry knows to look somewhere else.

5. [Scrooge McDuck][scrooge_mcduck] is a real financial conservative and still keeps his money in dollar coins! However, he's decided to try out this new thing called "paper bills" (he hears they're the next big thing); he's brought several bags (strings) of coins to you, a bank teller, to convert into paper money. Write the implementation for `arrayByConvertingMoneyBagsIntoPaperBills:` to count the dollar coins (one coin is represented by one `$`) in each string in Scrooge's array into an equivalent paper bill (a string in the manner of `@"$20"`). Look at the tests to clarify the scenario, but avoid hard coding the answer!

[snow_white_film]: https://en.wikipedia.org/wiki/Snow_White_and_the_Seven_Dwarfs_(1937_film)
[captain_planet]: https://en.wikipedia.org/wiki/Captain_Planet_and_the_Planeteers
[tom_and_jerry]: https://en.wikipedia.org/wiki/Tom_and_Jerry
[scrooge_mcduck]: https://en.wikipedia.org/wiki/Scrooge_McDuck
