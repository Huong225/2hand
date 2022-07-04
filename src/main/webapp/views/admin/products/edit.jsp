<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/AssignmentJava5/css/bootstrap.min.css">
</head>
<body class="container mt-3">
	<form:form action="/AssignmentJava5/admin/products/update/${item.id}" method="post"
		modelAttribute="item" enctype="multipart/form-data">
		<div class="form-group mt-4">
			<label>Tên sản phẩm</label>
			<form:input path="name" class="form-control" />
			<form:errors path="name" class="text-danger" />
		</div>
		<div class="from-group">
			<label>Ảnh</label>
			<form:input type="file" path="image"
				class="form-control"/>
		</div>
		<div class="form-group ">
			<label>Giá</label>
			<form:input path="price" class="form-control" />
			<form:errors path="price" class="text-danger" />
		</div>
		<div class="form-group mt-3">
			<label>Số lượng</label>
			<form:input path="quantity" class="form-control"/>
			<form:errors path="quantity" class="text-danger" />
		</div>
		<hr>
		<button class="btn btn-success">Save</button>
		
		<a class="btn btn-danger"
			 data-bs-toggle="modal" data-bs-target="#exampleModal">Delete</a>
			<!-- Button trigger modal -->

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Cảnh báo</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        Bạn chắc chắn muốn xóa?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"  formaction="/AssignmentJava5/admin/product/index">Close</button>
		        <a type="button" class="btn btn-primary" href="/AssignmentJava5/admin/product/delete/${item.id}" >OK</a>
		      </div>
		    </div>
		  </div>
		</div>
			
		<a class="btn btn-primary" href="/AssignmentJava5/admin/product/index">Reset</a>
	</form:form>
	<script src="/AssignmentJava5/js/jquery.min.js"></script>
	<script src="/AssignmentJava5/js/popper.min.js"></script>
	<script src="/AssignmentJava5/js/bootstrap.min.js"></script>
</body>
</html>