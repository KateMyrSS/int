Select a.AuthorID, a.name AuthorName, count(pt.tagid) tagscount from blog.post p
join blog.author a on p.CreatedBy=a.AuthorId
join posttag pt on pt.PostID=p.PostID
group by a.AuthorID, a.Name
order by tagscount desc
limit 5





