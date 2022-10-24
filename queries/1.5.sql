Select p.* from blog.post p
left join blog.posttag pt on pt.PostID=p.PostID
where pt.postid is null


