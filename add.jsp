<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/meta.jsp" %>
        <title>添加图书</title>
<%@ include file="/include/header.jsp" %>
	<div class="content">
	<div class="container">
		<div class="panel panel-default">
		<div class="panel-heading">添加图书</div>
        <s:form id="form" method="post" action="add" onsubmit="return updateBook(this)">
        	<div class="input-group">
  				<span class="input-group-addon">书名</span>
        		<input class="form-control" type="text" name="title" required="true"/>
        	</div>
        	<div class="input-group">
  				<span class="input-group-addon">作者编号</span>
                <input class="form-control" type="text" id="authorID" name="authorID" required="true" pattern="[0-9]{1,9}"/>
            </div>
        	<div class="input-group">
  				<span class="input-group-addon">出版社</span>
                <input class="form-control" type="text" name="publisher" required="true"/>
            </div>
        	<div class="input-group">
  				<span class="input-group-addon">出版日期</span>
                <input class="form-control" type="text" name="publishDate" required="true" pattern="[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])"/>
            </div>
        	<div class="input-group">
  				<span class="input-group-addon">价格</span>
                <input class="form-control" type="text" name="price" required="true" pattern="[0-9]+(\.[0-9]+)?"/>
                <span class="input-group-addon">元</span>
            </div>
        	<div class="input-group">
  				<span class="input-group-addon">ISBN</span>
                <input class="form-control" type="text" name="ISBN" required="true" pattern="([0-9]+-){4}[0-9]"/>
            </div>
        	<div class="input-center">
                <input type="submit" class="btn btn-default" value="添加"/>
            </div>
        </s:form>
        </div>
	</div>
    	<%@ include file="/include/footer.jsp" %>
	</div>
    </body>

	<script src="<s:url value='/js/ajax.js'/>"></script>
</html>