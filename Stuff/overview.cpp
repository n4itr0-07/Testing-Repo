// if else statement in C++
// Program to check whether a number is positive or negative

// #include <iostream>
// using namespace std;

// int main() {
//     int number;

//     cout << "Enter an integer: ";
//     cin >> number;

//     // checks if the number is positive
//     if (number > 0) {
//         cout << "You entered a positive integer: " << number << endl;
//     }
//     // checks if the number is negative
//     else if (number < 0) {
//         cout << "You entered a negative integer: " << number << endl;
//     }
//     // if both condition is false
//     else {
//         cout << "You entered 0." << endl;
//     }

//     cout << "This line is always printed." << endl;
//     return 0;
// }

// // switch case statement in C++

// #include <iostream>
// using namespace std;

// int main() {
//     char grade;

//     cout << "Enter your grade: ";
//     cin >> grade;

//     switch (grade) {
//         case 'A':
//             cout << "Excellent!" << endl;
//             break;
//         case 'B':
//         case 'C':
//             cout << "Well done" << endl;
//             break;
//         case 'D':
//             cout << "You passed" << endl;
//             break;
//         case 'F':
//             cout << "Better try again" << endl;
//             break;
//         default:
//             cout << "Invalid grade" << endl;
//     }

//     cout << "Your grade is " << grade << endl;

//     return 0;
// }

// // nested if else statement in C++

// #include <iostream>
// using namespace std;

// int main() {
//     int number;

//     cout << "Enter an integer: ";
//     cin >> number;

//     // checks if the number is positive
//     if (number > 0) {
//         cout << "You entered a positive integer: " << number << endl;
//     }
//     else {
//         // checks if the number is 0
//         if (number == 0) {
//             cout << "You entered 0" << endl;
//         }
//         // if number is negative
//         else {
//             cout << "You entered a negative integer: " << number << endl;
//         }
//     }

//     return 0;
// }


// loops in C++
// for loop in C++

// #include <iostream>
// using namespace std;

// int main() {
//     for (int i = 1; i <= 5; ++i) {
//         cout << "C++ For Loop: " << i << endl;
//     }
//     return 0;
// }

// // while loop in C++

// #include <iostream>
// using namespace std;

// int main() {
//     int i = 1;
//     while (i <= 5) {
//         cout << "C++ While Loop: " << i << endl;
//         ++i;
//     }
//     return 0;
// }

// do while loop in C++

// #include <iostream>
// using namespace std;

// int main() {
//     int i = 1;
//     do {
//         cout << "C++ Do While Loop: " << i << endl;
//         ++i;
//     } while (i <= 5);
//     return 0;
// }

// break statement in C++

// #include <iostream>
// using namespace std;

// int main() {
//     for (int i = 1; i <= 5; ++i) {
//         if (i == 4) {
//             break;
//         }
//         cout << "C++ For Loop: " << i << endl;
//     }
//     return 0;
// }

// continue statement in C++

// #include <iostream>
// using namespace std;

// int main() {
//     for (int i = 1; i <= 5; ++i) {
//         if (i == 4) {
//             continue;
//         }
//         cout << "C++ For Loop: " << i << endl;
//     }
//     return 0;
// }

// goto statement in C++

// #include <iostream>
// using namespace std;

// int main() {
//     int n = 1;
//     loop:
//         cout << "C++ goto statement: " << n << endl;
//         n++;
//         if (n <= 5) {
//             goto loop;
//         }
//     return 0;
// }

// Functions in C++

// #include <iostream>
// using namespace std;

// // Function declaration
// int max(int num1, int num2);

// int main() {
//     int a = 100;
//     int b = 200;
//     int ret;

//     // calling a function to get max value
//     ret = max(a, b);

//     cout << "Max value is: " << ret << endl;

//     return 0;
// }

// Function returning the max between two numbers
// int max(int num1, int num2) {
//     // local variable declaration
//     int result;

//     if (num1 > num2) {
//         result = num1;
//     }
//     else {
//         result = num2;
//     }

//     return result;
// }

// Array in C++

// #include <iostream>
// using namespace std;

// int main() {
//     // an array with 5 elements
//     int arr[5] = {10, 0, 20, 0, 30};

//     // accessing the elements of the array
//     for (int i = 0; i < 5; ++i) {
//         cout << "Element at index " << i << " : " << arr[i] << endl;
//     }

//     return 0;
// }

// Multidimensional Array in C++

// #include <iostream>
// using namespace std;

// int main() {
//     // 2D array
//     int arr[2][3] = { // 2 rows and 3 columns
//         {1, 2, 3}, // row 1
//         {4, 5, 6}  // row 2
//     };

//     // accessing the elements of the 2D array
//     for (int i = 0; i < 2; ++i) {
//         for (int j = 0; j < 3; ++j) {
//             cout << "arr[" << i << "][" << j << "] = " << arr[i][j] << endl;
//         }
//     }

//     return 0;
// }

// Pointer in C++

#include <iostream>
using namespace std;

// int main() {
//     int var = 5;
//     int *ptr = &var;

//     // print the value of var
//     cout << "Value of var: " << var << endl;

//     // print the value of var using pointer
//     cout << "Value of var using pointer: " << *ptr << endl;

//     // print the address of var
//     cout << "Address of var: " << &var << endl;

//     // print the address of var using pointer
//     cout << "Address of var using pointer: " << ptr << endl;

//     return 0;
// }

// Pointer Arithmetic in C++

