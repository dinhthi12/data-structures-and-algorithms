Lesson 01 Students should do object-oriented programming in the language of their choice to do the following:

- Build the PhuongTienGiaoThong class (transportation vehicle):
+) Attributes: Manufacturer (character string), Vehicle name (character string), Year of manufacture (integer), Maximum speed (float).
+) Methods: Setup function, input function, output function.
- Build the OTo (car) class that inherits the PhuongTienGiaoThong class and adds:
Attributes: Number of seats (int), Engine type (string).
Method:
- Setup function, destruction function, input function, output function.
- Base speed: calculated as maximum speed divided by number of wheels.
- Overload the < operator (vehicles with smaller <Base Velocity= are smaller).
Main program:

1) (3 points) Enter from the keyboard the information of a PhuongTienGiaoThong vehicle.
2) (2 points) Display information of the vehicle just entered on the screen.
3) (2 points) Enter information for n OTO objects including: Manufacturer, Vehicle name, Year of manufacture, Maximum speed, number of seats, engine type.
4) (1 point) Print to the screen information of n OTO objects along with the base velocity.
5) (2 points) Sort the list of OTO objects in descending order of base velocity.

Lesson 02 Students should do object-oriented programming in the language of their choice to do the following:
Building the NGUOI object class includes:

- Data components (Access from outside the class is not allowed): identification code, full name of person
- Methods: o Constructor, destructor, input function, output function.
- Build the NHANVIEN object class that inherits from the additional NGUOI class
o Additional attributes: year of birth, salary coefficient
o Static attribute: allowance
o Methods: constructor to set default information, input function, output function, salary calculation function (=salary coefficient x 1550 + allowance)
o The function overloads the > operator to compare two Employees according to salary coefficient (employees with higher salary coefficient will be larger).
Main program:

1) (3 points) Enter a person's information from the keyboard including: identification code, full name.
2) (2 points) Display that person's information on the screen.
3) (2 points) Enter information for n NHANVIEN objects including: identification code, employee full name, year of birth, salary coefficient.
4) (1 point) Print to the screen information of n NHANVIEN objects along with salary.
5) (2 points) Arrange the list of employees in descending order according to salary coefficient. Display list after sorting.
