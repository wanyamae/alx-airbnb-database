# Joins 
The first query uses an INNER JOIN to get all bookings along with the details of the users who made those bookings. This means I only see bookings that have a matching user in the database.

The second query uses a LEFT JOIN to list all properties and their reviews. Even if a property doesn’t have any reviews, it will still show up in the results, but the review columns will be empty for those properties.

The third query uses a FULL OUTER JOIN to show all users and all bookings, even if a user hasn’t made any bookings or if there’s a booking that isn’t linked to a user. This way, I get a complete view of both tables, with NULLs where there’s no match.