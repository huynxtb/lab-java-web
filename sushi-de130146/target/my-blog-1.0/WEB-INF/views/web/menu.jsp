<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">
    <title>Home Page</title>
</head>

<body>
<form action="<c:url value='/menu'/>" id="formSubmit" method="get">
    <div class="best_burgers_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-80">
                        <span>Sushi Menu</span>
                        <h3>Best Ever Sushi</h3>
                    </div>
                </div>
            </div>
            <div class="row">

                <c:forEach var="menuDTO" items="${MENU_DTO.listDTO}">
                <div class="col-lg-6 col-md-6">
                    <div class="single_delicious d-flex align-items-center">
                        <div class="thumb">
                            <img src="${menuDTO.image} " alt="image" width="100" height="100">
                        </div>
                        <div class="info">
                            <h3>${menuDTO.name}</h3>
                            <p>${menuDTO.shortDescription}</p>
                            <span>${menuDTO.price}$</span>
                        </div>
                    </div>

                </div>
                </c:forEach>
                <ul class="pagination" id="pagination"></ul>
                <input type="hidden" value="" id="page" name="page"/>
                <input type="hidden" value="" id="limit" name="limit"/>
            </div>

        </div>

    </div>

</form>

<script type="text/javascript">

    var totalPages = ${MENU_DTO.totalPage};
    var currentPage = ${MENU_DTO.page};
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