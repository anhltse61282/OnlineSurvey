$(document).ready(function(){
	 $("#btnAddAns").click(function(){
	    	alert('aaaa');
	    });
    $("#btnaddnew").click(function(){
    	$("#listAnswer").append( 
    			 "<div class=\"row\">"+
                "<div class=\"col-md-6\">"+
                    "<div class=\"form-group\">"+
                    	"<label>Câu hỏi:</label><br/>"+
                        "<input type=\"text\" class=\"form-control\" placeholder=\" Tên câu hỏi\"><br/>"+
                        "<input type=\"text\" class=\"form-control\" placeholder=\" Câu trả lời\">"+
                        "<button class='btn btn-x2'>Xóa</button>"+
                        "<p class=\"help-block text-danger\"></p>"+
                    "</div>"+
    			"</div>");
    });
   $("#listAnswer").on("click",".btn",function(){
	  $(this).closest('.row').remove();
   });
   $("#btnCreate").click(function(){
	   var children = $('#listAnswer').children();
	   var survey = JSON.stringify({
			"surveyName" :$("#txtSurveyName").val(),
			"surveyDescription":$("#txtSurveyDes").val(),
			"imageUrl": $("#txtImage").val()
		});
	   var surveyArr= {
			    surveys: []
	   };
	    $(children).each(function(index, item){   
	    	console.log(index);
	    	console.log(item);
	        	var surveyQuestion = ($(item).children().children().children());
	        	var question = $(surveyQuestion[2]).val();
	        	var answer = $(surveyQuestion[4]).val();
	        	surveyArr.surveys.push({
	        		"question": question,
	        		"answer":answer
	        	});
	        	console.log(question);
	        	console.log(answer);
	        	console.log(JSON.stringify(surveyArr.surveys));
	        	
	       
	    }); 
	    $.ajax({
    		url:"/survey/createnewSurvey",
    		type: 'POST',
    		dataType: 'json',
    		data: (survey),
    		beforeSend: function(xhr) {
	            xhr.setRequestHeader("Accept", "application/json");
	            xhr.setRequestHeader("Content-Type", "application/json");
	        }, 
		 success: function(food) { 
		 		alert("success" );
		 		 $.ajax({
		     		url:"/survey/createnewSurveyQuestion",
		     		type: 'POST',
		     		dataType: 'json',
		     		data: (JSON.stringify(surveyArr.surveys)),
		     		beforeSend: function(xhr) {
		 	            xhr.setRequestHeader("Accept", "application/json");
		 	            xhr.setRequestHeader("Content-Type", "application/json");
		 	        }, 
		 		 success: function(food) { 
		 		 		alert("success" );
		 		    } 
		     	});
		    } 
    	});
	   
   });
});