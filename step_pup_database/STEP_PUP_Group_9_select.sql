
/*List of employees who have routes assigned to them*/
SELECT EMPLOYEE.FIRST_NAME, EMPLOYEE.LAST_NAME
FROM EMPLOYEE, ROUTE
WHERE EMPLOYEE.EMPLOYEE_ID = ROUTE.ROUTE_ID;

/* Customers and every dog they own */
SELECT CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, DOG.DOG_NAME
FROM CUSTOMER,DOG
WHERE CUSTOMER.EMAIL = DOG.OWNER_EMAIL;

/* Employees, dogs, starting points, and cost of routes */
SELECT EMPLOYEE.FIRST_NAME AS 'Dog Walker' ,DOG.DOG_NAME AS 'Dog Walked', ROUTE.START_POINT, ROUTE.COST
FROM DOG, ROUTE, EMPLOYEE
WHERE DOG.ID = ROUTE.DOG_ID AND EMPLOYEE.EMPLOYEE_ID = ROUTE.EMPLOYEE_ID;

/* Dogs sorted by age */
SELECT DOG.DOG_NAME, DOG.AGE
FROM DOG
ORDER BY DOG.AGE;

/*Customers total cost */
SELECT CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, ROUTE.COST
FROM CUSTOMER, ROUTE, DOG
WHERE CUSTOMER.EMAIL = DOG.OWNER_EMAIL AND DOG.ID = ROUTE.DOG_ID;
