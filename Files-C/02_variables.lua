-- We should strive to name variables succinctly but descriptively so that when we look at them, it is easy to understand their purpose. For example, a variable named myValue does not tell us what kind of value that variable holds, while player1Score gives us a lot more info.

player1Name = "Kamala"
player2Name = "Bruno"
highestScore = nil

print("Player 1: " .. player1Name)
print("Player 2: " .. player2Name)
print("Highest Score: ", highestScore)

--TODO: Using type() With Variables

-- Phew! Data here, data there, let’s recalibrate a bit and think about what we’ve learned so far.

-- We know that data is the building block of programs. To organize and differentiate data, we categorize it into data types. This helps us understand what we can and cannot do with the data that we have.

--     Pop-quiz! Recall each data type and its definition. Then, click to open each type below and see how well you did.
    
--     Number 👇
--     A numeric value including positive values, negative values, and decimal values.
--     String 👇
--     A sequence of individual characters inside quotations. A string can be a collection of letters, spaces, numbers, or symbols.
--     Boolean 👇
--     A value that only has two possible values: true or false.
--     Nil 👇
--     A representation for the absence of a value. If there is no value, it is nil.

--TODO:-----------------------------------------------------------------------------------------------------------------------------------

-- You now know that variables can be used to store these different values. We’ll let you in on another tidbit, variables can store any type of data, and Lua has a familiar built-in function to discover what kind of data it’s storing!

--     Previously, we were able to use type() to find the data type of our data values. We can also use type() on variables to find the data type of its value.

catchphrase = "Avengers Assemble!"
print(type(catchphrase)) --output: string

userName = "Naitro"
print(type(userName))
age = 31
print(type(age))

