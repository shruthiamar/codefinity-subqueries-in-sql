SELECT m.member_id,
       m.name,
       bc.borrow_count
  FROM (
         SELECT member_id,
                COUNT(*) AS borrow_count
           FROM borrowings
          GROUP BY member_id
       ) AS bc
  JOIN members AS m
    ON m.member_id = bc.member_id
 ORDER BY bc.borrow_count DESC,
          m.member_id ASC
 LIMIT 2;
