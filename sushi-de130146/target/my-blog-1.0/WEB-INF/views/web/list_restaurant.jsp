<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">
    <title>List R</title>

</head>

<body>
<form action="<c:url value='/list-restaurant'/>" id="formSubmit" method="get">
<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="blog_left_sidebar">

                    <c:forEach var="item" items="${RESTAURANT_DTO.listDTO}">
                    <article class="blog_item">
                        <div class="blog_item_img">
                            <img class="card-img rounded-0" src="${item.image}" alt="image">
                        </div>

                        <div class="blog_details">
                            <c:url var="detailNews" value="/detail">
                                <c:param name="id" value="${item.id}"/>
                            </c:url>
                            <a class="d-inline-block" href="${detailNews}">
                                <h2>${item.title}</h2>
                            </a>
                            <p>${item.shortDescription}</p>
                            <ul class="blog-info-link">
                                <li><a href="#"><i class="fa fa-user"></i>${item.createdBy}</a></li>
                                <li><a href="#"><i class="fa fa-times"></i>${item.createdDate}</a></li>
                            </ul>
                        </div>
                    </article>
                    </c:forEach>
                    <nav class="blog-pagination justify-content-center d-flex">
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="limit" name="limit"/>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================Blog Area =================-->
</form>
<script type="text/javascript">

    var totalPages = ${RESTAURANT_DTO.totalPage};
    var currentPage = ${RESTAURANT_DTO.page};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 10,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#limit').val(4);
                    $('#page').val(page);
                    $('#formSubmit').submit();
                }
            }
        });
    });

</script>
</body>

</html>