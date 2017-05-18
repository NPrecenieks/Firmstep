1. I chose CodeIgniter as a framework because it is fairly popular has a good documentation and satisfies the MVC requirement for this task.
2. I used 2 CSS frameworks Bootstrap mostly for the panels and then Skeleton because it is a small and easy to use one so good for a very small project where we don't need  a lot of features.
3. The first page is just a choice between 3 part of the application (Queue View for customers, Admin Queue View for employees and Add Customer for receptionist).
4. Admin Queue View is basically just a Queue View but with ability to remove customers from queue (adding them to the served_customers table).
5. In Add customer Services get grabbed from a table in the database, so new services can be added without changing the page. Same for Titles.
6. Type buttons(Citizen, Organisation, Anonymous) aren't done the same way because they aren't as primitive (have different input options).
7. I did not spend too much time on data validation, but if the name fields are empty for Citizen or Organisation then customer will be added as Anonymous instead.
8. When Join queue button is pressed a temporary page saying thanks and take a seat will show up.
9. I did not add an overhead menu to switch betwee the application interfaces since I don't think it would be needed judging by what the application does (to go back to menu just go type http://localhost into your browser).