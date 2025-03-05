#include <iostream>
#include <string>
using namespace std;


class Teacher {
private:
    double salary;
public:
    Teacher() {
        cout << "Hii, I am constructor\n!";
    }

    // properties / attributes
    string name;
    string dept;
    string subject;
        
    // methods / member functions
    void changeDept(string newDept) {
        dept = newDept;
    }
    // For Showing/accessing private data
    void setSalary(double s) {
        salary = s;
    }

    double getSalary() {
        return salary;
    }
};


int main() {
    // Teacher t1; // constroctor call
    // t1.name = "Ashraf";
    // t1.subject = "C++";
    // t1.dept = "Computer Science";
    // t1.setSalary(2500);

    // cout << t1.name << endl;
    // cout << t1.getSalary() << endl;
    // // Teacher t2;
    // // Teacher t3;
    // // Teacher t4;
    return 0;
}