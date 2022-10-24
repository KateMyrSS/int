Select  p.*, sb.tags from  post p
left join (Select pt.postid, group_concat(t.tagname) as tags from posttag pt
join tag t on pt.TagID=t.TagID
group by pt.postid) as sb
on p.postid=sb.PostID


