Select * from blog.post p
where p.CreatedOn >= adddate(current_timestamp(),-1)
