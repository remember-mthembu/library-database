CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO users VALUES (1, 'John');
INSERT INTO books VALUES (1, 'AWS Basics');

SELECT users.name, books.title
FROM loans
JOIN users ON loans.user_id = users.user_id
JOIN books ON loans.book_id = books.book_id;
