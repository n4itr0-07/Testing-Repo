#include <iostream>
#include <string>
using namespace std;

class Teacher {
private:
  double salary;

public:
    Teacher() { // Constructor
        dept = "Computer Science";
    }

    string name;
    string dept;
    string subject;
};

int main() {
    Teacher t1;
    t1.name;
    t1.subject;

    cout << t1.dept << endl; // This will print Dept name setted in Constructor
    return 0;
}
