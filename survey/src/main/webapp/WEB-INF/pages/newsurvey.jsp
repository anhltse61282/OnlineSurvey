<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="create">
	<div class="container">
	<div class="row" id="surveyName">
                <div class="col-lg-12 text-center" >
                    <h2 class="section-heading"><input type="text" class="form-control" placeholder="Tên survey" id="txtSurveyName"> </h2>
                    <h3 class="section-heading"><input type="text" class="form-control" placeholder="Mô tả" id = "txtSurveyDes"></h3>
                    <h3 class="section-heading"><input type="text" class="form-control" placeholder="Image Url" id = "txtImage"></h3>
                    <br/>
                     
                </div>
            </div>
            
            <div class="row" id="addbuttonDiv">
             <div class="col-lg-12 text-center">
                                <button type="button" class="btn" id="btnaddnew">Thêm câu hỏi</button>
              </div>
              </div>
              <br/>
              <div class="container" id="listAnswer">
              	
              </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="button" id="btnCreate" class="btn btn-xl">Tạo survey</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            </div>
            </section>
</body>
</html>