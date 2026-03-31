SELECT * FROM books
    WHERE EXISTS (
    SELECT DISTINCT book_id FROM borrowings
    WHERE borrowings.book_id = books.book_id AND
    borrow_date >= DATE '2023-07-01'
    );