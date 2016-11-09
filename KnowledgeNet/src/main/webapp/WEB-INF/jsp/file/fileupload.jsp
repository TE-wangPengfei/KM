<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML>
<html lang="ja">
<jsp:include page="../fragments/header.jsp" />
<meta http-equiv="X-UA-Compatible" content="IE=8" /> 
<head>
	<script type="text/javascript" src="/resources/js/bootstrap-filestyle.js" charset="utf-8"></script>
	<script type="text/javascript" src="/resources/js/fess.js" charset="utf-8"></script>
	
	<link rel="stylesheet" href="/resources/css/bootstrap-select.css"/>
	<script src="/resources/js/bootstrap-select.js"></script>
	<script src="/resources/js/locales/defaults-en_US.js"></script>
	
	<script src="/resources/uploadify/jquery.uploadify.js"></script>
	<link rel="stylesheet" type="text/css" href="/resources/uploadify/uploadify.css"/>
	
	<link rel="stylesheet" type="text/css" href="/resources/kindeditor/themes/default/default.css"/>
	<link rel="stylesheet" href="/resources/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="/resources/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="/resources/kindeditor/lang/en.js"></script>
	<script charset="utf-8" src="/resources/kindeditor/plugins/code/prettify.js"></script>
</head>
<script type="text/javascript">
	$(window).on('load', function () {
	    $('.selectpicker').selectpicker({
	        'selectedText': 'cat'
	    });
	});
	
	$(document).ready(function(){
// 		$("#uploadify").uploadify({
// 			'auto' : true, // 选择文件后自动上传
// 			'swf' : '/resources/uploadify/uploadify.swf?ver=' + Math.random(), // 上传flash文件路径
// 			'uploader' : '/fileupload/singleFileUpload',//后台处理的请求 
// 			'queueID' : 'fileQueue',//与下面的id对应  文件队列
// 			'queueSizeLimit' : 10,
// 			'width' : 113,
// 			"fileObjName" : "imgFile", // 后台接受参数名称
// 			"preventCaching" : true, // 设置随机参数，防止缓存
// 			"progressData" : "percentage", // 显示上传进度百分比
// 			"removeCompleted" : true, // 上传后是否自动删除记录
// 			'fileTypeDesc' : 'png,jpg,jpeg,zip,doc,docx,xls,xlsx,pdf,ppt,pptx,web', // 支持的文件格式，写filetypeExts该参数必须写
// 			'fileTypeExts' : '*.png;*.jpg;*.jpeg;*.zip;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.ppt;*.pptx;*.web', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc 
// 			'multi' : true, // 是否支持多文件上传
// 			"uploadLimit" : 50, // 上传限制
// 			"onCancel" : function() {
				
// 			},
// 			"onQueueComplete" : function(queueData) {
// 				alert(2);
// 			},
// 			"onUploadSuccess" : function(file, data, response) {//队列中的每个文件上传完成时触发一次
// 				alert(1);
// 			},
// 			'buttonText' : 'Multi File'
// 		});
	});
</script>
<body>
	<div class="containerbox">
		<div class="container">
			<div class="row column_box">
				<div class="col-md-3  visible-lg visible-md"></div>
				<div class="col-md-9 column">
					<form name="fileuploadForm" id="fileuploadForm" method="post">
						<div class="row">
							<ol class="breadcrumb">
								<li class="active">KM</li>
								<li class="active">Create file resources</li>
							</ol>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="panel panel-default">
										<div class="panel-heading center-block webfile-buttonplus" style="height: 50px;">
											<div style="float: left;">
												<input type="button" class="btn btn-primary" id="uploadButton" value="Single File" />
											</div>
											<div style="float: right;"><!-- Multiple -->
												<input type="file" name="uploadify" id="uploadify" />
											</div>
										</div>
										<div class="panel-body" id="fileListId">
											<div id="fileQueue"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="knowtitleId">Title<span class="alertMsgClass">*</span></label>
									<input type="text" class="form-control" name="knowtitle" value="" id="knowtitleId" placeholder="Enter the knowledge title">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="exampleInputEmail1">Tags</label>
									<select name="usertype" class="selectpicker show-tick form-control" multiple data-live-search="false">
										<option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 class="panel-title">
												<label>Abstract</label>
											</h3>
										</div>
										<div class="panel-body">
											<label for="target">Target</label>
											<select id="target" name="target" class="selectpicker show-tick form-control" multiple data-live-search="false">
												<option value="0">0</option>
		                                        <option value="1">1</option>
		                                        <option value="2">2</option>
		                                        <option value="3">3</option>
		                                        <option value="4">4</option>
		                                        <option value="5">5</option>
		                                        <option value="6">6</option>
		                                        <option value="7">7</option>
		                                        <option value="8">8</option>
		                                        <option value="9">9</option>
											</select>
											<label for="type">Type</label>
											<select id="type" name="type" class="selectpicker show-tick form-control" multiple data-live-search="false">
												<option value="0">0</option>
		                                        <option value="1">1</option>
		                                        <option value="2">2</option>
		                                        <option value="3">3</option>
		                                        <option value="4">4</option>
		                                        <option value="5">5</option>
		                                        <option value="6">6</option>
		                                        <option value="7">7</option>
		                                        <option value="8">8</option>
		                                        <option value="9">9</option>
											</select>
											<label for="prerequisite">Prerequisite</label>
											<select id="prerequisite" name="prerequisite" class="selectpicker show-tick form-control" multiple data-live-search="false">
												<option value="0">0</option>
		                                        <option value="1">1</option>
		                                        <option value="2">2</option>
		                                        <option value="3">3</option>
		                                        <option value="4">4</option>
		                                        <option value="5">5</option>
		                                        <option value="6">6</option>
		                                        <option value="7">7</option>
		                                        <option value="8">8</option>
		                                        <option value="9">9</option>
											</select>
											<label for="content">Description</label>
											<textarea id="content" name="content" style="visibility:hidden;width: 100%;"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
						<br>
						<div>
							<button class="btn btn-primary" id="fileupload" type="button">submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div style="display: none;">
		<form enctype="multipart/form-data" method="post" class="single-file-upload" name="single-file-upload">
			<input type="file" id="singleFile" class="filestyle" data-buttonName="btn-primary" data-size="nr" name="singleFile" value="" />
		</form>
	</div>
	
	<script type="text/javascript">
	$("#fileupload").click(function(){
		var $form = $("form.fileForm")[0];
		var formData = new FormData($form);
		var action = "/fileupload/register";
		$.ajax({
			url: action,
			data: formData,
			type: "POST",
			processData: false,
			contentType: false,
			success: function(data) {
				if (data == "1") {
					alert("upload success!!!");
					window.location.reload();
				} else {
					alert("please select one file!!!");
				}
			}
		});
	});
	
	var editor1;
	KindEditor.ready(function(K) {
		editor1 = K.create('textarea[name="content"]', {
			cssPath : '/resources/kindeditor/plugins/code/prettify.css',
			uploadJson : '/resources/kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '/resources/kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : false,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
// 					document.forms['example'].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
// 					document.forms['example'].submit();
				});
			}
	    });
		prettyPrint();
	});
	
	$("#uploadButton").click(function(){
		$("#singleFile").trigger("click");
	});
	
	$("#singleFile").change(function(){
		var $form = $("form.single-file-upload")[0];
		var formData = new FormData($form);
		var action = "/fileupload/singleFileUpload";
		$.ajax({
			url: action,
			data: formData,
			type: "POST",
			processData: false,
			contentType: false,
			success: function(data) {
				alert(123);
			},
			error: function(data) {
				
			}
		});
	});
	
	$(function() {
		$("#uploadify").uploadify({
			'auto' : true, // 选择文件后自动上传
			'swf' : '/resources/uploadify/uploadify.swf?ver=' + Math.random(), // 上传flash文件路径
			'uploader' : '/fileupload/singleFileUpload',//后台处理的请求 
			'queueID' : 'fileQueue',//与下面的id对应  文件队列
			'queueSizeLimit' : 10,
			'width' : 113,
			"fileObjName" : "imgFile", // 后台接受参数名称
			"preventCaching" : true, // 设置随机参数，防止缓存
			"progressData" : "percentage", // 显示上传进度百分比
			"removeCompleted" : true, // 上传后是否自动删除记录
			'fileTypeDesc' : 'png,jpg,jpeg,zip,doc,docx,xls,xlsx,pdf,ppt,pptx,web', // 支持的文件格式，写filetypeExts该参数必须写
			'fileTypeExts' : '*.png;*.jpg;*.jpeg;*.zip;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.ppt;*.pptx;*.web', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc 
			'multi' : true, // 是否支持多文件上传
			"uploadLimit" : 50, // 上传限制
			"onCancel" : function() {
				
			},
			"onQueueComplete" : function(queueData) {
				alert(2);
			},
			"onUploadSuccess" : function(file, data, response) {//队列中的每个文件上传完成时触发一次
				alert(1);
			},
			'buttonText' : 'Multi File'
		});
	});
	
// 	// only one file upload
// 	KindEditor.ready(function(K) {
// 		var uploadbutton = K.uploadbutton({
// 			button : K('#uploadButton')[0],
// 			fieldName : 'singleFile',
// 			url : '/fileupload/SingleFileUpload',
// 			afterUpload : function(data) {
				
// 			},
// 			afterError : function(str) {
				
// 			}
// 		});
// 		uploadbutton.fileBox.change(function(e) {
// 			uploadbutton.submit();
// 		});
// 	});
	

</script>
</body>
<jsp:include page="../fragments/footer.jsp" />
</html>