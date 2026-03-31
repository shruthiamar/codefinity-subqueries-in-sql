-- Write your code here
SELECT name FROM members
    WHERE NOT EXISTS (
    SELECT member_id FROM borrowings 
    WHERE borrowings.member_id = members.member_id 
 
    );