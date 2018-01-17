<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/inc/header.jsp" %>

<div class="container-fluid" style="margin-top:80px;">
    <div class="row">
        <div class="col-md-12">
            <h3>${DOCKER_USER }</h3>
            <table class="table table-bordered"></table>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $("ul.nav.navbar-nav li").removeClass("active");
        $("#li_info").addClass("active");

        var info = ${info};
        var html = [];

        for (var i in info) {
            html.push("<tr>");
            html.push("<td>" + i + "</td>");
            html.push("<td>" + info[i] + "</td>");
            html.push("</tr>");
        }

        $("table").html(html.join(""));
    });
</script>
<%@ include file="/WEB-INF/jsp/inc/footer.jsp" %>