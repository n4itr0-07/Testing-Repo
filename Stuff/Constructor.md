# Constructors in OOP (C++)

In Object-Oriented Programming (OOP), a constructor is a special member function of a class that initializes objects of that class. It is automatically called when an object is created.

## Types of Constructors

1. **Default Constructor**
    - A constructor that takes no arguments.
    - If no constructor is defined, the compiler provides a default constructor.

    ```cpp
    class MyClass {
    public:
         MyClass() {
              // Default constructor
         }
    };
    ```

2. **Parameterized Constructor**
    - A constructor that takes arguments to initialize an object with specific values.

    ```cpp
    class MyClass {
    public:
         MyClass(int x, int y) {
              // Parameterized constructor
         }
    };
    ```

3. **Copy Constructor**
    - A constructor that initializes an object using another object of the same class.

    ```cpp
    class MyClass {
    public:
         MyClass(const MyClass &obj) {
              // Copy constructor
         }
    };
    ```

4. **Move Constructor** (C++11 and later)
    - A constructor that transfers resources from a temporary object to a new object.

    ```cpp
    class MyClass {
    public:
         MyClass(MyClass &&obj) noexcept {
              // Move constructor
         }
    };
    ```

## Example

```cpp
#include <iostream>
using namespace std;

class MyClass {
public:
     int a, b;

     // Default constructor
     MyClass() : a(0), b(0) {}

     // Parameterized constructor
     MyClass(int x, int y) : a(x), b(y) {}

     // Copy constructor
     MyClass(const MyClass &obj) : a(obj.a), b(obj.b) {}

     // Move constructor
     MyClass(MyClass &&obj) noexcept : a(obj.a), b(obj.b) {
          obj.a = 0;
          obj.b = 0;
     }
};

int main() {
     MyClass obj1; // Default constructor
     MyClass obj2(10, 20); // Parameterized constructor
     MyClass obj3 = obj2; // Copy constructor
     MyClass obj4 = std::move(obj2); // Move constructor

     return 0;
}
```