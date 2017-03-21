<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid bg">
    <div class="col-md-1 column">
    </div>
    <div class="col-md-7 column">
        <c:forEach items="${list}" var="blog">
            <div class="row tm" style="padding-top: 15px;padding-bottom: 15px;">
                <div class="col-md-12 post-container">
                    <h2 class="post-title">
                        <a href="http://www.soulteary.com/2016/08/31/review.html" rel="bookmark" class="cco">${blog.blogTitle}</a>
                    </h2>
                    <div class="meta-box">
					<span class="m-post-date cco">
						<i class="fa fa-calendar-o"></i>
						<fmt:formatDate value="${blog.createDate}" type="date" dateStyle="long"/>
					</span>
                        <span class="comments-link">
						<a href="http://www.soulteary.com/2016/08/31/review.html#comments" class="ds-thread-count cco" data-thread-key="9550" title="Comment on 大半年以来的个人回顾" target="_self"><i class="fa fa-comments-o"></i> 6 条评论</a>
					</span>
                    </div>
                    <div class="post-content post-expect">
                        <p>
                                ${blog.blogContent}
                            <a href="http://www.soulteary.com/2016/08/31/review.html#more-9550" class="more-link btn btn-primary btn-xs">阅读全文</a>
                        </p>
                    </div>
                    <div class="meta-box">
					<span class="cat-links cco"><i class="fa fa-navicon"></i>
						<b>分类:</b>
						<a href="http://www.soulteary.com/topics/life" rel="category tag" class="cco" target="_self">生活点滴</a>
					</span>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="col-md-1 column">
    </div>

    <div class="col-md-3 column tm">
        <div class="feature-cover-container" style="width: 245px; opacity: 1;"><div class="feature-cover-box"><h3>新年寄语</h3><p class="feature-cover-content">潜心磨剑，藏器于身。</p></div><div class="feature-cover-bg" style="background-image: url(http://7u2j6a.com1.z0.glb.clouddn.com/wp/2015/01/feature-cover-leaf.jpg;); width: 100%; height: 100%;"></div></div>
    </div>

    <div class="col-md-12 column pd">
        Copyright © 2013-2016    <strong><a href="http://www.runoob.com/" target="_blank">菜鸟教程</a></strong>&nbsp;
        <strong><a href="http://www.runoob.com/" target="_blank">runoob.com</a></strong> All Rights Reserved. 备案号：闽ICP备15012807号-1
    </div>
</div>
