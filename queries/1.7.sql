select t.tagname, IFNULL(sb.postscount, 0) from
(select pt.TagID, Count(pt.postId) as postscount from blog.posttag pt
group by pt.tagid) as sb
right join blog.tag t on sb.tagID = t.tagid




