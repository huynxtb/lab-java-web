<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="newAPI" value="/api/web/menu"/>
<c:url var="newURL" value="/admin/menu/list"/>
<html>
<head>
    <title>Chỉnh sửa bài viết</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href='<c:url value="/home"/> '>Home</a>
                </li>
                <li class="active">Chỉnh sửa bài viết</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">

                    <form id="formSubmit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" name="name"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Content</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="content" name="content"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Price</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="price" name="price"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Image</label>
                            <div class="col-sm-9">
                                <input class=" form-control" type="file" id="image" name="image"/>

                                <img src="" id="image-preview" alt="Your Image  Here" width="250" height="250"/>

                                <input type="hidden" id="imgBase64" name="imgBase64">
                            </div>
                        </div>
                        <br/>
                        <br/>

                        <div class="form-group">
                            <div class="col-sm-12">

                                <%--                                <c:if test="${not empty model.id}">--%>
                                <%--                                    <input type="button" class="btn btn-white btn-warning btn-bold"--%>
                                <%--                                           value="Cập nhật bài viết" id="btnAddOrUpdateNew"/>--%>
                                <%--                                </c:if>--%>

                                <%--                                <c:if test="${empty model.id}">--%>
                                <%--                                    <input type="button" class="btn btn-white btn-warning btn-bold"--%>
                                <%--                                           value="Thêm bài viết" id="btnAddOrUpdateNew"/>--%>
                                <%--                                </c:if>--%>

                            </div>
                        </div>

                        <%--                        <input type="hidden" value="${model.id}" id="id" name="id"/>--%>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var input = document.querySelector('input[type=file]');
    input.onchange = function () {
        var file = input.files[0],
            reader = new FileReader();

        reader.onloadend = function () {
            var b64 = reader.result.replace(/^data:.+;base64,/, '');
            console.log(b64);
            document.getElementById("imgBase64").value = b64;
            document.getElementById("image-preview").src = "data:image/png;base64," + b64;
        };

        reader.readAsDataURL(file);
    };
</script>

<script>

    function processing(){
        swal({
            title: 'Processing',
            text: "Please wait a minute...",
            showCancelButton: false,
            showConfirmButton: false,
            allowOutsideClick: false,
            closeOnClickOutside: false
        })
    }

    $('#btnAddOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });

        if($('#check_name').val() == '' || $('#check_content').val()=='' || $('#charity-address').val()==''){
            swal(
                'Try again!',
                'Please fill up all neccessary field. ',
                'error'
            )
            return;
        }
        if($('#charityLat').val() == '' || $('#charityLng').val()==''){
            swal(
                'Try again!',
                'Cannot identify this address. ',
                'error'
            )
            return;
        }

        var id = $('#newId').val();
        if (id == "") {
            add(data);
        } else {
            update(data);
        }
    });

    function add(data) {
        $.ajax({
            url: '${newAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                swal(
                    'Added Success!',
                    'Has been added.',
                    'success'
                ).then((result) => {
                    window.location.href = "${newURL}";
                });
            },
            error: function (error) {
                swal(
                    'Add Fail!',
                    'Oop~ Something wrong!',
                    'danger'

                ).then((result) => {
                    if (result.value) {
                        window.location.href = "${newURL}";
                    }
                });
            }
        });
    }

    function update(data) {
        $.ajax({
            url: '${newAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                swal(
                    'Updated!',
                    'Has been update.',
                    'success'
                ).then((result) => {
                    window.location.href = "${newURL}";
                });
            },
            error: function (error) {
                swal(
                    'Update Fail!',
                    'Oop~ Something wrong!',
                    'danger'

                ).then((result) => {
                    if (result.value) {
                        window.location.href = "${newURL}";
                    }
                });
            }
        });
    }

</script>
</body>
</html>
