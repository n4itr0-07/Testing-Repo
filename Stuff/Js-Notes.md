**___==Brendan Eich== is known as the "father of JavaScript".___**
# What is JavaScript?

JavaScript is the programming language of the web.

It can update and change both HTML and CSS.

It can calculate, manipulate and validate data.

## JavaScript Can Change HTML Content

One of many JavaScript HTML methods is `getElementById()`.

The example below "finds" an HTML element (with id="demo"), and changes the element content (innerHTML) to "Hello JavaScript":

### Example
```js
document.getElementById("demo").innerHTML = "Hello JavaScript";
```

JavaScript accepts both double and single quotes:

```js
document.getElementById('demo').innerHTML = 'Hello JavaScript';
```

## Using the Console

Use **REPL**

- **Read-Evaluate-Print-Loop

![[Pasted image 20250202192547.png]]

## The Console Object

The **console object** provides access to the browser's debugging console.

The **console object** is a property of the **window object**.

The **console object** is accessed with:

`window.console` or just `console`

### Examples
```js
window.console.error("You made a mistake");
```

```js
console.error("You made a mistake");
```

## Console Object Methods

|Method|Description|
|---|---|
|[assert()](https://www.w3schools.com/jsref/met_console_assert.asp)|Writes an error message to the console if a assertion is false|
|[clear()](https://www.w3schools.com/jsref/met_console_clear.asp)|Clears the console|
|[count()](https://www.w3schools.com/jsref/met_console_count.asp)|Logs the number of times that this particular call to count() has been called|
|[error()](https://www.w3schools.com/jsref/met_console_error.asp)|Outputs an error message to the console|
|[group()](https://www.w3schools.com/jsref/met_console_group.asp)|Creates a new inline group in the console. This indents following console messages by an additional level, until console.groupEnd() is called|
|[groupCollapsed()](https://www.w3schools.com/jsref/met_console_groupcollapsed.asp)|Creates a new inline group in the console. However, the new group is created collapsed. The user will need to use the disclosure button to expand it|
|[groupEnd()](https://www.w3schools.com/jsref/met_console_groupend.asp)|Exits the current inline group in the console|
|[info()](https://www.w3schools.com/jsref/met_console_info.asp)|Outputs an informational message to the console|
|[log()](https://www.w3schools.com/jsref/met_console_log.asp)|Outputs a message to the console|
|[table()](https://www.w3schools.com/jsref/met_console_table.asp)|Displays tabular data as a table|
|[time()](https://www.w3schools.com/jsref/met_console_time.asp)|Starts a timer (can track how long an operation takes)|
|[timeEnd()](https://www.w3schools.com/jsref/met_console_timeend.asp)|Stops a timer that was previously started by console.time()|
|[trace()](https://www.w3schools.com/jsref/met_console_trace.asp)|Outputs a stack trace to the console|
|[warn()](https://www.w3schools.com/jsref/met_console_warn.asp)|Outputs a warning message to the console|

## JavaScript Display Possibilities

JavaScript can "display" data in different ways:

- Writing into an HTML element, using `innerHTML`.
- Writing into the HTML output using `document.write()`.
- Writing into an alert box, using `window.alert()`.
- Writing into the browser console, using `console.log()`.

## Using innerHTML

To access an HTML element, JavaScript can use the `document.getElementById(id)` method.

The `id` attribute defines the HTML element. The `innerHTML` property defines the HTML content:

### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<h1>My First Web Page</h1>  
<p>My First Paragraph</p>  
  
<p id="demo"></p>  
  
<script>  
document.getElementById("demo").innerHTML = 5 + 6;  
</script>  
  
</body>  
</html>
```

## Using document.write()

For testing purposes, it is convenient to use `document.write()`:

### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<h1>My First Web Page</h1>  
<p>My first paragraph.</p>  
  
<script>  
document.write(5 + 6);  
</script>  
  
</body>  
</html>
```

The document.write() method should only be used for testing.

## Using window.alert()

You can use an alert box to display data:
### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<h1>My First Web Page</h1>  
<p>My first paragraph.</p>  
  
<script>  
window.alert(5 + 6);  
</script>  
  
</body>  
</html>
```

You can skip the `window` keyword.

In JavaScript, the window object is the global scope object. This means that variables, properties, and methods by default belong to the window object. This also means that specifying the `window` keyword is optional:

### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<h1>My First Web Page</h1>  
<p>My first paragraph.</p>  
  
<script>  
alert(5 + 6);  
</script>  
  
</body>  
</html>
```

## Using console.log()

For debugging purposes, you can call the `console.log()` method in the browser to display data.

You will learn more about debugging in a later chapter.

### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<script>  
console.log(5 + 6);  
</script>  
  
</body>  
</html>
```

## JavaScript Print

JavaScript does not have any print object or print methods.

You cannot access output devices from JavaScript.

The only exception is that you can call the `window.print()` method in the browser to print the content of the current window.

### Example
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<button onclick="window.print()">Print this page</button>  
  
</body>  
</html>
```

---
## Variables

### What is a Variable?

A variable is simply the name of a storage location.

![[Pasted image 20250206121130.png]]


---

# Data Types in JavaScript

## 1. Primitive Data Types
- **Definition**: Primitive data types are immutable (cannot be changed) and are stored directly in the location the variable accesses.
- **Types**:
  - **String**: Represents textual data.
    - Example: `let name = "John";`
  - **Number**: Represents both integer and floating-point numbers.
    - Example: `let age = 25;`
  - **Boolean**: Represents a logical entity and can have two values: `true` or `false`.
    - Example: `let isStudent = true;`
  - **Undefined**: Represents a variable that has been declared but not assigned a value.
    - Example: `let x;`
  - **Null**: Represents the intentional absence of any object value.
    - Example: `let y = null;`
  - **BigInt**: Represents integers larger than the range supported by the `Number` type.
    - Example: `let bigNum = 1234567890123456789012345678901234567890n;`
  - **Symbol**: Represents a unique and immutable value, often used as object property keys.
    - Example: `let sym = Symbol('description');`

---

## 2. Non-Primitive Data Types
- **Definition**: Non-primitive data types are mutable (can be changed) and are stored as references to the location in memory where the data is stored.
- **Types**:
  - **Object**: Represents a collection of key-value pairs.
    - Example: `let person = { name: "John", age: 25 };`
  - **Array**: Represents an ordered list of values.
    - Example: `let fruits = ["Apple", "Banana", "Cherry"];`
  - **Function**: Represents a block of code designed to perform a particular task.
    - Example: `function greet() { console.log("Hello!"); }`
  - **Date**: Represents a specific moment in time.
    - Example: `let today = new Date();`
  - **RegExp**: Represents a regular expression.
    - Example: `let regex = /ab+c/;`

---

## Key Differences
- **Primitive**: Stored by value, immutable, compared by value.
- **Non-Primitive**: Stored by reference, mutable, compared by reference.

---

## What is the `let` Keyword?
- **Definition**: The `let` keyword is used to declare variables in JavaScript. It allows you to create a block-scoped variable, meaning the variable is only accessible within the block (e.g., inside `{}`) where it is defined.
- **Features**:
  - Block-scoped: The variable is only accessible within the block it is declared.
  - Reassignable: You can change the value of the variable after declaration.
  - Not hoisted: Unlike `var`, `let` variables are not hoisted to the top of their scope.
- **Example**:
  ```javascript
  let x = 10; // Declare a variable
  x = 20;     // Reassign the value
  console.log(x); // Output: 20
  ```

### const Keyword
values of constant can't be changed with re-assignment & they can't be re-declared

```js
const year 2025;
year = 2026 // Error
year = year + 1 // Error
```

## Difference Between `let`, `var`, and `const`

### Overview

| Feature           | `var`                                | `let`                         | `const`                       |
| ----------------- | ------------------------------------ | ----------------------------- | ----------------------------- |
| **Scope**         | Function-scoped                      | Block-scoped                  | Block-scoped                  |
| **Reassignment**  | Allowed                              | Allowed                       | Not allowed                   |
| **Hoisting**      | Hoisted (initialized as `undefined`) | Hoisted (but not initialized) | Hoisted (but not initialized) |
| **Redeclaration** | Allowed                              | Not allowed                   | Not allowed                   |
|                   |                                      |                               |                               |

### Key Points
1. **`var`**  
   - Function-scoped.  
   - Can be redeclared and updated.  
   - Prone to issues due to hoisting. 
   - Old way of declaring variables.

2. **`let`**  
   - Block-scoped (limited to `{}` blocks).  
   - Cannot be redeclared in the same scope.  
   - Prevents accidental overwriting.  

3. **`const`**  
   - Block-scoped.  
   - Must be initialized during declaration.  
   - Cannot be reassigned, but objects/arrays can be mutated.

### Examples
- **`var` Issue**:  
```js
  if (true) {
    var x = 10;
  }
  console.log(x); // 10
```

- **`let` Scope**:
    
```js
    if (true) {
      let y = 20;
    }
    console.log(y); // ReferenceError
```
    
- **`const` Immutability**:
    
```js
    const z = 30;
    z = 40; // Error: Assignment to constant variable
```

## Example Code Snippets

### Primitive Data Types
```javascript
let name = "John"; // String
let age = 25; // Number
let isStudent = true; // Boolean
let x; // Undefined
let y = null; // Null
let bigNum = 1234567890123456789012345678901234567890n; // BigInt
let sym = Symbol('description'); // Symbol
```

### Non-Primitive Data Types
```javascript
let person = { name: "John", age: 25 }; // Object
let fruits = ["Apple", "Banana", "Cherry"]; // Array
function greet() { console.log("Hello!"); } // Function
let today = new Date(); // Date
let regex = /ab+c/; // RegExp
```

---

## Operations in JS

- Modulo (remainder operator)
		12 % 5 = 2

- Exponentiation (power operator)
		2 ** 3 = 8

```js
a = 20
b = 10

// addition
sum = a + b

// subtraction
difference = a - b

// multiplication
product = a * b 

// division
quotient = a / b

// modulus
remainder = a % b

console.log(sum)
```

## NaN in JS

The NaN global property is a value representing **Not-A-Number**
- 0/0
- NaN - 1
- NaN * 1
- NaN + NaN

---
## JavaScript Operator Precedence

Operator precedence determines the order in which operators are evaluated in an expression.

### Precedence Table (Highest to Lowest)

| Precedence | Operator Type              | Operators                          |
|------------|----------------------------|------------------------------------|
| **1**      | Grouping                   | `()`                               |
| **2**      | Member Access              | `.` `[]`                          |
|            | Function Call              | `()`                               |
| **3**      | Unary                      | `!` `~` `+` `-` `typeof` `delete` |
| **4**      | Exponentiation             | `**`                              |
| **5**      | Multiplicative             | `*` `/` `%`                       |
| **6**      | Additive                   | `+` `-`                           |
| **7**      | Shift                      | `<<` `>>` `>>>`                   |
| **8**      | Relational                 | `<` `<=` `>` `>=` `in` `instanceof` |
| **9**      | Equality                   | `==` `!=` `===` `!==`             |
| **10**     | Bitwise AND                | `&`                               |
| **11**     | Bitwise XOR                | `^`                               |
| **12**     | Bitwise OR                 | `|`                               |
| **13**     | Logical AND                | `&&`                              |
| **14**     | Logical OR                 | `||`                              |
| **15**     | Conditional (Ternary)      | `? :`                             |
| **16**     | Assignment                 | `=` `+=` `-=` `*=` `/=` etc.      |
| **17**     | Comma                      | `,`                               |

### Key Points
- **Associativity**:  
  Determines the direction of evaluation.  
  - **Left-to-Right**: Most operators (e.g., `+`, `*`, `<`)  
  - **Right-to-Left**: Assignment (`=`, `+=`) and Exponentiation (`**`)

- **Parentheses**: Use `()` to explicitly control precedence.

### Examples
4. **Grouping First**:  
```js
   let result = (2 + 3) * 4; // 2
```

2. **Exponentiation before Multiplication**:
    
```js
    let result = 2 ** 3 * 4; // 32
```
    
3. **Logical AND before OR**:
    
```js
    let result = true || false && false; // true
```
    
4. **Assignment Right-to-Left**:
    
```js
    let a = b = 5; // b = 5, then a = 5
```

### Tips for Learning

- Memorize the key precedence levels (Grouping > Unary > Multiplicative).
- Use parentheses `()` to avoid confusion and ensure clarity.
- Refer to the table whenever unsure about evaluation order.

---
## Assignment Operators

Used to assign values to variables.

| Operator     | Description                     | Example             | Equivalent to       |
|--------------|---------------------------------|---------------------|---------------------|
| `=`          | Simple assignment               | `x = 10`           | —                   |
| `+=`         | Add and assign                  | `x += 5`           | `x = x + 5`         |
| `-=`         | Subtract and assign             | `x -= 3`           | `x = x - 3`         |
| `*=`         | Multiply and assign             | `x *= 2`           | `x = x * 2`         |
| `/=`         | Divide and assign               | `x /= 4`           | `x = x / 4`         |
| `%=`         | Modulus and assign              | `x %= 2`           | `x = x % 2`         |
| `**=`        | Exponentiation and assign       | `x **= 3`          | `x = x ** 3`        |
| `<<=`        | Left shift and assign           | `x <<= 2`          | `x = x << 2`        |
| `>>=`        | Right shift and assign          | `x >>= 1`          | `x = x >> 1`        |
| `&=`         | Bitwise AND and assign          | `x &= 1`           | `x = x & 1`         |
| `|=`         | Bitwise OR and assign           | `x |= 2`           | `x = x | 2`         |
| `^=`         | Bitwise XOR and assign          | `x ^= 3`           | `x = x ^ 3`         |

---

## Unary Operators

Operate on a single operand.

| Operator  | Description                 | Example          | Result                 |
|-----------|-----------------------------|------------------|------------------------|
| `+`       | Unary plus (convert to number) | `+true`         | `1`                   |
| `-`       | Unary negation              | `-10`           | `-10`                 |
| `++`      | Increment (pre/post)        | `++x`, `x++`    | `x = x + 1`           |
| `--`      | Decrement (pre/post)        | `--x`, `x--`    | `x = x - 1`           |
| `!`       | Logical NOT                 | `!true`         | `false`               |
| `~`       | Bitwise NOT                 | `~5`            | `-6`                  |
| `typeof`  | Type of variable            | `typeof 42`     | `"number"`            |
| `void`    | Discard return value        | `void (0)`      | `undefined`           |
| `delete`  | Delete a property           | `delete obj.key` | `true` (if deleted)   |

---

### Examples
5. **Assignment Operator**:  
```js
   let a = 10;
   a += 5; // a = 15
```

6. **Unary Operators**:
    
```js
    let x = 10;
    console.log(++x); // 11
    console.log(typeof "hello"); // "string"
```

---

## Identifier Rules

All JavaScript variables must be identified with unique names (identifiers).
- Names can contain letters, digits, underscores, and dollar signs. (no space)
- Names must begin with a letter.
- Names can also begin with $ _ .
- Names are case sensitive (y and Y are different).
- Reserved words (Like JavaScript keywords) cannot be used as names.

## Boolean in JS

Boolean represents a truth value -> true or false / yes or no
```js
let age = 23;
isAdult = true;

let age = 13;
isAdult = false;
```

## String in JS

Strings are text or sequence of characters

```js
let name = "Tony Stark";
let role = "ironman";
let char = 'a';
let num = '23';
let empty = "";
```

### 📘 String Indices in JavaScript

- **Indexing Basics**:  
    Strings in JavaScript are **zero-indexed**. The first character is at index `0`.
    
    ```js
    const str = "Hello";
    console.log(str[0]); // Output: "H"
    console.log(str[4]); // Output: "o"
    ```
    
- **Accessing Characters**:  
    Use `str[index]` or `.charAt(index)`.
    
    ```js
    console.log(str.charAt(1)); // Output: "e"
    ```
    
- **Negative Indices**:  
    Not directly supported. Use `.slice()` for negative indexing.
    
    ```js
    console.log(str.slice(-1)); // Output: "o" (last character)
    ```
    
- **Out of Bounds**:  
    Returns `undefined` for invalid indices.
    
    ```js
    console.log(str[10]); // Output: undefined
    ```
    
- **Iterating Over Strings**:  
    Use a `for` loop or `for...of`.
    
    ```js
    for (let char of str) {
      console.log(char); // Logs each character
    }
    ```
    
- **Immutability**:  
    Strings are immutable; you can’t change characters directly.
    
    ```js
    str[0] = "J"; // No effect
    console.log(str); // Output: "Hello"
    ```
    

---

> 💡 **Tip**: Use `.split("")` to convert a string to an array for easier manipulation.

---

### null and undefined in JS
**undefined**
A variable that has not been assigned a value is of type undefined.  
```js
let a;
// undefined
```

**null**
The null value represents the intentional absence of any object value.

To be explicitly assigned.
```js
let a = null;
// undefined
```

---

### console.log()
To write (log) a message on the console

```js
console.log("Hello World");
console.log(1234);
console.log(2+2);
console.log("Hello", "World", 123);
```

### Template Literals
They are used to add embedded expressions in a string.

```js
let a = 5;
let b = 10;

console.log(`Your pay ${a + b}, rupees`);
//console.log("Price is", a+b, "rupees");
```

### Comparison Operators

Comparison Operators to compare 2 values
```js
> // Greater than
>= // Greater than or equal to
< // Lesser than
<= // Lesser than or equal to
== // Equal TO
!= // Not Equal To
```

```js
// comparison operators

let a = 5;
let b = 10;

console.log(a == b); // false
console.log(a != b); // true
console.log(a > b); // false
console.log(a < b); // true
console.log(a >= b); // false
console.log(a <= b); // true
console.log(a === b); // false

//  === is strict equality operator and it checks both value and type of the variable or constant.
```

---
## **Comparison for Non-Numbers in JavaScript**

### **1. String Comparison (Unicode-Based)**

- Strings are compared **lexicographically** using **Unicode code points**.
- Uses: **`<`, `>`, `<=`, `>=`, `==`, `===`**
- `"a" > "A"` → `true` (`"a"` has a higher Unicode value than `"A"`)
- `"2" > "10"` → `true` (compares `"2"` vs `"1"`, not as numbers)
- Methods used:
    - `charCodeAt(index)`: Get the Unicode value.
        
        ```js
        console.log("A".charCodeAt(0)); // 65
        console.log("a".charCodeAt(0)); // 97
        ```
        
    - `localeCompare()`: For locale-aware sorting.
        
        ```js
        console.log("ä".localeCompare("z", "de")); // -1 (German rules)
        ```
        

### **📌 Unicode Reference Table**

|Character|Unicode Code Point|
|---|---|
|`"A"`|`65`|
|`"a"`|`97`|
|`"Z"`|`90`|
|`"z"`|`122`|
|`"0"`|`48`|
|`"9"`|`57`|

### **2. Boolean Comparison**

- `true` → `1`, `false` → `0` in numerical comparison.
- Uses: **Implicit `Number()` conversion**
- `true > false` → `true` (`1 > 0`)
- `"true" == true` → `false` (string does not convert)

### **3. Null & Undefined**

- Uses: **Loose (`==`) and strict (`===`) equality**
- `null == undefined` → `true`
- `null === undefined` → `false`
- `null > 0` → `false`, `null == 0` → `false`, `null >= 0` → `true`  
    _(Special coercion behavior)_

### **4. Object Comparison**

- Objects convert to primitives using:
    - **`toString()`** (default for most objects)
    - **`valueOf()`** (for numbers, dates, etc.)
    - Implicit conversion when using `==`
- `{}` == `[object Object]` → `false`
- `[] == ""` → `true` (empty array → empty string)
- `[1] == 1` → `true` (array converts to number)

---

## ***Conditional Statements***

- **if-else**
- **nested if-else**
- **Switch**

### **JavaScript - Conditional Statements for Pentesting & Bug Bounty**

**Date:** `[[2025-02-14]]`

---

## **1. Introduction**

Conditional statements in JavaScript control the flow of execution based on conditions. Understanding these is crucial for **security testing** as logic flaws often lead to **authentication bypass, privilege escalation, and business logic vulnerabilities**.

---

## **2. Types of Conditional Statements**

### **2.1. if Statement**

Used to execute a block of code if a condition is `true`.

```javascript
if (userRole === "admin") {
    console.log("Access granted!");
}
```

🔹 **Security Concern:**

- If an attacker can **manipulate `userRole`** (e.g., via `localStorage`, `cookies`, or API responses), they might escalate privileges.

🔹 **Pentest Tip:**

- Look for **weak type checking** (e.g., `==` vs. `===`).
- Try injecting values using JavaScript console or **manipulating API responses**.

---

### **2.2. if-else Statement**

Executes different code blocks based on a condition.

```javascript
if (isLoggedIn) {
    console.log("Welcome, user!");
} else {
    console.log("Please log in.");
}
```

🔹 **Security Concern:**

- **Client-side authentication checks** like `if (isLoggedIn)` are insecure because they **can be overridden** in the browser console.

🔹 **Pentest Tip:**

- Try setting `isLoggedIn = true;` in the **browser console** to bypass authentication.

---

### **2.3. if-else if-else Statement**

Used for multiple conditions.

```javascript
if (userRole === "admin") {
    console.log("Welcome, Admin!");
} else if (userRole === "user") {
    console.log("Welcome, User!");
} else {
    console.log("Access Denied!");
}
```

🔹 **Security Concern:**

- **Flawed role-based access control (RBAC)** may allow **IDOR (Insecure Direct Object Reference)**.

🔹 **Pentest Tip:**

- Modify `userRole` using **DevTools**, **intercept WebSocket messages**, or **tamper API responses**.

---

### **2.4. Ternary Operator (`?:`)**

A shorthand for `if-else`.

```javascript
let access = (userRole === "admin") ? "Full Access" : "Limited Access";
```

🔹 **Security Concern:**

- Similar issues as `if-else`, but **easier to overlook** in large codebases.

🔹 **Pentest Tip:**

- Look for **hardcoded conditions** that assume safe values.

---

### **2.5. switch Statement**

Used for multiple condition checks.

```javascript
switch (userRole) {
    case "admin":
        console.log("Full Access");
        break;
    case "user":
        console.log("Limited Access");
        break;
    default:
        console.log("Access Denied");
}
```

🔹 **Security Concern:**

- If `userRole` is **user-controlled**, an attacker might supply an unexpected value.

🔹 **Pentest Tip:**

- Check if the **default case handles unexpected values** properly.
- Test **case-sensitive variations** (e.g., `"ADMIN"` vs. `"admin"`).

---

## **3. Common JavaScript Logic Flaws in Conditional Statements**

### **3.1. Loose Comparison (`==`) vs. Strict Comparison (`===`)**

🔹 **Issue:** Loose comparison (`==`) allows **type coercion**, which can lead to unintended behavior.

```javascript
if (userRole == 1) {  // 🚨 Insecure
    console.log("Admin access granted!");
}
```

🔹 **Exploit:**

- `userRole = "1"` (string) will be **converted to a number** and pass the condition.

✅ **Fix:** Use **strict comparison (`===`)** to avoid type coercion.

```javascript
if (userRole === 1) {  // ✅ Secure
    console.log("Admin access granted!");
}
```

---

### **3.2. Authentication Bypass via JavaScript Overrides**

🔹 **Vulnerable Code:**

```javascript
if (isAuthenticated) {
    console.log("Welcome back!");
}
```

🔹 **Exploit:**

- Set `isAuthenticated = true;` in **DevTools console** to bypass authentication.

✅ **Fix:** Perform authentication checks **server-side** instead of relying on **JavaScript variables**.

---

### **3.3. Improper Handling of Falsy Values**

🔹 **Issue:** JavaScript treats some values as **falsy**, which can cause unintended behavior.

Falsy values:

- `false`
- `0`
- `""` (empty string)
- `null`
- `undefined`
- `NaN`

🔹 **Vulnerable Code:**

```javascript
if (userToken) {
    console.log("Authenticated!");
}
```

🔹 **Exploit:**

- If `userToken = 0`, `null`, or `""`, the condition **fails** even if the user should be logged in.
- **Conversely**, if an attacker finds a way to set `userToken = "0"` (string), they might bypass authentication.

✅ **Fix:** Check for **explicit values** instead.

```javascript
if (userToken !== null && userToken !== undefined && userToken !== "") {
    console.log("Authenticated!");
}
```

---

### **4. Security Testing Checklist**

✅ **Check for weak type comparisons (`==` instead of `===`).**  
✅ **Modify JavaScript variables via browser console (`window.userRole = "admin"`).**  
✅ **Intercept and modify WebSocket / API messages to test condition handling.**  
✅ **Look for client-side authentication checks (`if (isLoggedIn)`).**  
✅ **Check `switch` statements for missing `default` cases.**  
✅ **Test boundary values (empty strings, `null`, `undefined`, `NaN`).**  
✅ **Identify logic flaws leading to IDOR, privilege escalation, or bypass.**

---

### **5. Summary**

🔹 **Conditional statements control application logic, making them a prime target for security testing.**  
🔹 **Weak comparison, client-side authentication checks, and improper handling of falsy values can introduce critical vulnerabilities.**  
🔹 **Testing should focus on modifying variables, intercepting API/WebSocket messages, and analyzing role-based conditions.**

---

### **6. Next Steps**

🔹 Study **JavaScript functions & closures** for pentesting.  
🔹 Practice **DOM manipulation attacks** (XSS via logic flaws).  
🔹 Explore **business logic vulnerabilities** in modern web apps.

---

# **Static & Dynamic Analysis of JavaScript**


---

## **1. Introduction**

JavaScript analysis is essential for **finding vulnerabilities**, **detecting obfuscation**, and **understanding web application behavior**. There are **two primary methods**:

🔹 **Static Analysis** – Examining JavaScript **without executing it**.  
🔹 **Dynamic Analysis** – Observing **JavaScript behavior during execution**.

Both methods help in **finding XSS, CSRF, API misconfigurations, and business logic vulnerabilities**.

---

## **2. Static Analysis of JavaScript**

### **🟢 What is Static Analysis?**

- **Examines JavaScript code without executing it**.
- Detects **hardcoded secrets, dangerous functions, obfuscation, and security flaws**.

### **📌 Use Cases**

✅ Finding **hardcoded API keys & credentials**.  
✅ Detecting **insecure JavaScript functions** (`eval()`, `document.write()`).  
✅ Identifying **unvalidated user input** in XSS vulnerabilities.

### **🛠 Tools for Static Analysis**

|**Tool**|**Use Case**|
|---|---|
|**ESLint + eslint-plugin-security**|Detects insecure JavaScript patterns.|
|**Semgrep**|Finds insecure function calls & vulnerabilities.|
|**JSBeautifier + JSDetox**|Deobfuscates JavaScript malware.|
|**SonarQube**|Code review for JavaScript security flaws.|

### **💀 Example - Detecting Dangerous JavaScript Functions**

```javascript
// 🚨 Insecure: Uses eval() (can lead to RCE)
let userInput = "alert('Hacked!')";
eval(userInput);  // 🚨 BAD PRACTICE
```

✅ **Mitigation**: Avoid `eval()`, use `JSON.parse()` instead.

---

## **3. Dynamic Analysis of JavaScript**

### **🟢 What is Dynamic Analysis?**

- **Executes JavaScript in a controlled environment** to observe its behavior.
- Identifies **runtime vulnerabilities like DOM XSS, CSRF, and API abuse**.

### **📌 Use Cases**

✅ **Intercepting & modifying API calls** in web applications.  
✅ **Testing JavaScript-based authentication bypass**.  
✅ **Analyzing obfuscated JavaScript during execution**.

### **🛠 Tools for Dynamic Analysis**

|**Tool**|**Use Case**|
|---|---|
|**Burp Suite (Proxy + DOM Invader)**|Intercepts & modifies JavaScript requests.|
|**Chrome DevTools**|Debugs & analyzes runtime JS behavior.|
|**Frida**|Hooks & modifies JavaScript execution in real-time.|
|**JSFuzz**|JavaScript fuzzing for XSS detection.|

### **💀 Example - Modifying JavaScript Execution via DevTools**

1. Open **Chrome DevTools** (`F12` → `Console`).
2. Modify authentication checks:
    
    ```javascript
    window.isAdmin = true;  // Bypass admin restrictions
    ```
    
3. Reload the page and check if privileges are escalated.

✅ **Mitigation**: Implement **server-side validation** instead of relying on **JavaScript checks**.

---

## **4. Static vs. Dynamic Analysis: Key Differences**

|**Aspect**|**Static Analysis**|**Dynamic Analysis**|
|---|---|---|
|**Execution**|**No execution** (code review).|**Requires execution** in a browser.|
|**Scope**|Finds **hardcoded vulnerabilities**.|Finds **runtime logic flaws**.|
|**Speed**|Faster, no runtime needed.|Slower, requires testing in live environments.|
|**Tools**|ESLint, Semgrep, JSDetox.|Burp Suite, DevTools, Frida.|
|**Example Use Case**|Detecting `eval()` misuse.|Modifying JavaScript logic via DevTools.|

---

## **5. Summary**

🔹 **Static Analysis** – Reviews JavaScript **without executing it** (faster).  
🔹 **Dynamic Analysis** – Tests **during execution** (identifies runtime vulnerabilities).  
🔹 **Pentesters should use both** to find **XSS, CSRF, logic flaws, and API security issues**.

---

## **6. Next Steps**

🔹 **Practice static analysis** using Semgrep on JavaScript repositories.  
🔹 **Test JavaScript execution** with Chrome DevTools & Burp Suite.  
🔹 **Hook JavaScript dynamically** with Frida to modify runtime behavior.

---
### **truthy & falsy**

Everything in JS is true or false (in Boolean context).
This doesn't mean their values itself is false or true, but they are treated as false or true if taken in Boolean context.

**___False Values___**
false 0, -0, (BigInt value), "" (empty string), null, undefined, NaN

**___Truthy Values___**
Everything else

### **Switch Statement**

Used when we have some fixed values that we need to compare to.
```js
let color = "red"; // Change the color here to see different outputs

switch (color) {
    case "red":
        console.log("The color is red");
        break;
    case "blue":
        console.log("The color is blue");
        break;
    case "green":
        console.log("The color is green");
        break;
    default:
        console.log("The color is not recognized. Please check the color.");
        break; 
}
```

---
### **Alert & Prompt**

**Alert** displays an alert message on the page.
```js
alert("something is wrong!");
```

**Prompt** displays a dialog box that asks user for some input.
```js
prompt("please enter your roll no.");
```
