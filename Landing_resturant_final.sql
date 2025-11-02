CREATE DATABASE landinig_restaurant_gen;
GO
USE landinig_restaurant_gen;
GO

CREATE SCHEMA landinig;
GO

-------------Branch---------------------------------------
CREATE TABLE landinig.Branch (
    branch_id VARCHAR(50),
    name VARCHAR(50) NOT NULL,
    E_mail VARCHAR(50),
    closing_time TIME,
    opening_time TIME,
    manger_name VARCHAR(50),
    address VARCHAR(50),
    status VARCHAR(50),
    postal_code VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-----------Customer------------------------
CREATE TABLE landinig.Customer (
    customer_id VARCHAR(50),
    ZIP VARCHAR(50),
    phone_number VARCHAR(50),
    name VARCHAR(50),
    address VARCHAR(50),
    DOB DATE,
    email VARCHAR(50),
    Registration_date DATE,
    Gender CHAR(1),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
---------------Employee-------------------

CREATE TABLE landinig.Employee (
    employee_id VARCHAR(50),
    name VARCHAR(50),
    Salary DECIMAL(10,2),
    DOB DATE,
    role VARCHAR(50),
    hire_date DATE,
    ZIP VARCHAR(50),
    phone_number VARCHAR(50),
    branch_id VARCHAR(50),
    manager_id VARCHAR(50) NULL,
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------------Order ----------------------------

CREATE TABLE landinig.[Order] (
    order_id VARCHAR(50),
    status VARCHAR(50),
    order_date DATE,
    delivery_date DATE,
    Order_time TIME,
    Discount_applied DECIMAL(5,2),
    Order_type VARCHAR(50),
    customer_id VARCHAR(50),
    employee_id VARCHAR(50),
    branch_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------------Payment----------------------
CREATE TABLE landinig.Payment (
    payment_id VARCHAR(50),
    status VARCHAR(50),
    amount DECIMAL(10,2),
    Payment_method VARCHAR(50),
    payment_date DATE,
    payment_time TIME,
    order_id VARCHAR(50),
    employee_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
----------------Supplier-------------------
CREATE TABLE landinig.Supplier (
    supplier_id VARCHAR(50),
    name VARCHAR(50),
    contact_person VARCHAR(50),
    phone VARCHAR(50),
    contact_person_email VARCHAR(50),
    Supplier_Services VARCHAR(50),
    Address VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-------------------Product----------------------
CREATE TABLE landinig.Product (
    product_id VARCHAR(50),
    name VARCHAR(50),
    category VARCHAR(50),
    Prepation_Time TIME,
    is_available BIT,
    price DECIMAL(10,2),
    descripton VARCHAR(50),
    supplier_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------------------Order-Itmes------------------
CREATE TABLE landinig.Order_Item (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    quantity INT,
    special_instructions VARCHAR(50),
    total_price DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
------------------Payroll--------------------
CREATE TABLE landinig.Payroll (
    payroll_id VARCHAR(50),
    overtime_hours DECIMAL(5,2),
    net_pay DECIMAL(10,2),
    deductions DECIMAL(10,2),
    pay_date DATE,
    bonuses DECIMAL(10,2),
    Hours_worked DECIMAL(5,2),
    Salary_amount DECIMAL(10,2),
    employee_id VARCHAR(50),
    branch_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-------------Cause-----------------
CREATE TABLE landinig.Cause (
    cause_id VARCHAR(50),
    description VARCHAR(50),
    cause_name VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-----------Shift--------------------
CREATE TABLE landinig.Shift (
    shift_id VARCHAR(50),
    start_time TIME,
    end_time TIME,
    shift_type VARCHAR(50),
    branch_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-------------------Attendance-----------------
CREATE TABLE landinig.Attendance (
    Attendance_id VARCHAR(50),
    check_out TIME,
    check_in TIME,
    Date DATE,
    status VARCHAR(50),
    Hours_worked DECIMAL(5,2),
    employee_id VARCHAR(50),
    shift_id VARCHAR(50),
    cause_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------------Ingredient----------------
CREATE TABLE landinig.Ingredient (
    ingredient_id VARCHAR(50),
    name VARCHAR(50),
    unit VARCHAR(50),
    cost_per_unit DECIMAL(10,2),
    supplier_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
---------------Inventory----------------
CREATE TABLE landinig.Inventory (
    inventory_id VARCHAR(50),
    max_stock_level INT,
    current_stock INT,
    last_update DATE,
    maintenance VARCHAR(50),
    reorder_level INT,
    branch_id VARCHAR(50),
    ingredient_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-------------------Waste-----------------
CREATE TABLE landinig.Waste (
    waste_id VARCHAR(50),
    quantity INT,
    reason VARCHAR(50),
    waste_date DATE,
    branch_id VARCHAR(50),
    product_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------------------Review-------------------
CREATE TABLE landinig.Review (
    review_id VARCHAR(50),
    product_rating DECIMAL(3,2),
    review_date DATE,
    Branch_rating DECIMAL(3,2),
    customer_id VARCHAR(50),
    branch_id VARCHAR(50),
    employee_id VARCHAR(50),
    product_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
------------Product_Ingredient----------------------
CREATE TABLE landinig.Product_Ingredient (
    product_id VARCHAR(50),
    ingredient_id VARCHAR(50),
    quantity INT,
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
-------------Employee_Shift----------------
CREATE TABLE landinig.Employee_Shift (
    employee_id VARCHAR(50),
    shift_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
--------Expenses-------------
CREATE TABLE landinig.Expenses (
    expense_id VARCHAR(50),
    expense_type VARCHAR(50),
    description VARCHAR(255),
    amount DECIMAL(10,2),
    expense_date DATE,
    branch_id VARCHAR(50),
    hashcode_landing VARCHAR(100),
    landinig_date DATE
);
------------------Reservation------------
CREATE TABLE landinig.Reservation (
    reservation_id VARCHAR(50) PRIMARY KEY,
    table_number INT,
    reservation_date DATE,
    reservation_time TIME,
    guests_count INT,
    status VARCHAR(50),
    notes VARCHAR(50),
    branch_id VARCHAR(50),
    customer_id VARCHAR(50),
	hashcode_landing VARCHAR(100),
    landinig_date DATE
);



