# Reflection

## What I Learned
This assignment helped me understand PL/SQL GOTO statements and stored functions. I learned that GOTO can transfer execution to a labeled statement, but it has restrictions and should be used carefully.

I also learned how stored functions accept parameters, process data, and return values. I created functions for annual salary, years of service, tax calculation, and department names.

## GOTO Statements
The GOTO exercises helped me understand labels and jumps. In A3, I learned that a GOTO cannot be used to jump into an invalid scope such as inside an IF statement.

In A4, I rewrote the salary-review logic using IF/ELSIF/ELSE. This showed that structured control flow can perform the same decision without GOTO.

## Functions and Exception Handling
The functions allowed reusable calculations. Exception handling was used to handle missing department and employee data.

## Testing
I tested functions individually and then used them together inside a SELECT query. This helped verify that the functions worked with the employee data.

## Challenges
The main challenges were understanding GOTO restrictions and understanding how stored functions can be called from normal SQL queries.

## Conclusion
The assignment improved my understanding of PL/SQL control flow, stored functions, SQL integration, and exception handling. It also showed me the importance of testing each component before combining it into a larger solution.
