#include <iostream>
#include <string>
using namespace std;

class Teacher {
private:
    double salary;

public:

    //Constructor
    //This is also Non-Parameterized Constructor
    Teacher() {
        cout << "Teacher Object Created" << endl;
        // or if i wanna make a default value for salary then i can do this here
        salary = 0;
    }
    //This is also Parameterized Constructor
    Teacher(string n, string d, string s, double sal) {
        cout << "Teacher Object Created" << endl;
        name = n;
        dept = d;
        subject = s;
        salary = sal;
    }

    //Copy Constructor
    Teacher(const Teacher &t) {
        cout << "Teacher Object Created" << endl;
        name = t.name;
        dept = t.dept;
        subject = t.subject;
        salary = t.salary;
    }

    //properties / attributes
    string name;
    string dept;
    string subject;
    //double salary;


    //methods
    void ChangeDept(string newDept) {
        dept = newDept;
    }
    // Special function to give access for private member
    //setter
    void setSalary(double s) {
        salary = s;
    }
    //getter
    double getSalary() {
        return salary;
    }
};

//TODO: Example for Encapsulation:
class Account {
private:
    double salary; // data hiding
    string password; // data hiding

public:
    string accountId;
    string username;
   
};

int main() {
    // Parameterized Constructor
    Teacher t2("Sikandar", "School Of Engineering & Technology", "Computer Science & Engineering", 250000);
    
    Teacher t1; // Automatically call Constructor
    t1.name = "Sikandar";
    t1.subject = "Computer Science & Engineering";
    t1.dept = "School Of Engineering & Technology";
    t1.setSalary(250000);

    cout << "Teacher 1 Name: " << t1.name << endl;
    cout << "Teacher 1 Subject: " << t1.subject << endl ;
    cout << "Teacher 1 Departement: " << t1.dept << endl ;
    cout << "Teacher 1 Salary: " << t1.getSalary() << endl ;


    // Teacher t2;
    // Teacher t3;
    // Teacher t4;

    return 0;
}