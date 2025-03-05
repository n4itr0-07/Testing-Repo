Here’s a simple breakdown of the differences between `for`, `while`, and `do-while` loops to help you remember them easily:

---

### **1. `for` Loop**
- **When to Use**:  
  Use `for` when you **know how many times** you want to repeat the loop (e.g., iterating over an array of known size).  
- **Syntax**:  
  ```c
  for (initialization; condition; update) {
      // code
  }
  ```
- **Key Points**:  
  - All parts (initialization, condition, update) are written in one line.  
  - **Condition is checked first** before executing the loop body.  
  - Example:  
    ```c
    // Print numbers 1 to 5
    for (int i = 1; i <= 5; i++) {
        printf("%d ", i); // Output: 1 2 3 4 5
    }
    ```

---

### **2. `while` Loop**
- **When to Use**:  
  Use `while` when you **don’t know how many times** the loop will run, but you want to repeat it as long as a condition is true (e.g., reading user input until they enter "exit").  
- **Syntax**:  
  ```c
  while (condition) {
      // code
  }
  ```
- **Key Points**:  
  - **Condition is checked first** before executing the loop body.  
  - If the condition is false initially, the loop body **never runs**.  
  - Example:  
    ```c
    // Print numbers 1 to 5
    int i = 1;
    while (i <= 5) {
        printf("%d ", i); // Output: 1 2 3 4 5
        i++;
    }
    ```

---

### **3. `do-while` Loop**
- **When to Use**:  
  Use `do-while` when you want the loop body to **run at least once**, even if the condition is false (e.g., menu-driven programs).  
- **Syntax**:  
  ```c
  do {
      // code
  } while (condition);
  ```
- **Key Points**:  
  - **Loop body runs first**, then the condition is checked.  
  - Guaranteed to execute **at least once**.  
  - Example:  
    ```c
    // Print numbers 1 to 5
    int i = 1;
    do {
        printf("%d ", i); // Output: 1 2 3 4 5
        i++;
    } while (i <= 5);
    ```

---

### **Summary Table**  
| **Loop**      | **When to Use**                          | **Condition Check** | **Runs At Least Once?** |  
|---------------|------------------------------------------|---------------------|--------------------------|  
| `for`         | Known number of iterations               | Before loop body    | No                       |  
| `while`       | Unknown iterations, condition first      | Before loop body    | No                       |  
| `do-while`    | Unknown iterations, body runs first      | After loop body     | **Yes**                  |  

---

### **Quick Analogy**  
- **`for` Loop**: Like a countdown timer (you set the start, end, and step).  
- **`while` Loop**: Like checking the weather before deciding to go out.  
- **`do-while` Loop**: Like trying a food recipe once and then deciding if you want to repeat it.  

You’ll never mix them up again! 😊
