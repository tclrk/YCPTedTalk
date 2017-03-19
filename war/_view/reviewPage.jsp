<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>Write A Review!</title>
		<style type="text/css">
		body{
			background-color: #FFFF91; /*pale yellow color*/
			/* To see the outline of the form */
  			padding: 1em;
  			text-align: top left;
  			font-family: Arial;
 		}
		
		form div + div {
  			margin-top: .5em;
		}
		
		input{
			font: 1em sans-serif;

  			/*give same size to all text fields */
  			width: 300px;
  			box-sizing: border-box;

  			/* make all text boxes appear the same */
 		 	border: 1px solid #999;
		}
		
		textarea{
			width:300px;
			height: 150px;
			border: 1px solid #999;
		}
		</style>
	</head>
	<body>
		<form id="reviewForm" name="reviewForm" action="${pageContext.servletContext.contextPath}/reviewPage" method="post">
			<div class="Name">
				<label="name">Name</label>
				<input type="text" name ="name" id="name" size=12 value ="${name}"/><span id="nameError"></span>
			</div>
		
			<div class="Link">
				<label="ted_talk">TED Talk link</label>
				<input type="text" name ="link" id="link" size=12 value ="${link}"/><span id="linkError"></span>
			</div>
		
			<div class="Topic">
				<label="topic">Topic</label>
				<input type="text" name ="topic" id="topic" size=12 value ="${topic}"/><span id="topicError"></span>
			</div>
		
			<div class="Author">
				<label="author">Author</label>
				<input type="text" name = "author" id="author" size=12 value ="${author}"/><span id="authorError"></span>
			</div>
		
			<div class="Description">
				<label="descript">Description</label>
				<textarea name= "descript" id="descript" size=12 value ="${descript}"></textarea><span id="descriptError"></span>
			</div>
		
			<div class="Review">
				<label="review">Review</label>
				<textarea name= "review" id="review" size=12 value ="${review}"></textarea><span id="reviewError"></span>
			</div>
			
			<div class="Recommendations">
				<label="recommendations" id="recommendations">Recommendations (Optional)</label><br>
				<input type="checkbox" name="Awesome!">Awesome!<br>
				<input type="checkbox" name="Horrible">1/10, do not recommend<br>
				<input type="checkbox" name="Good">A nice watch, but wouldn't watch it again</>
			</div>
			<button onclick="check()">Submit Review!</button>

	</form>
		<script> 
		function check(){
			if(document.reviewForm.name.value == "" || document.reviewForm.link.value == "" || document.reviewForm.topic.value == "" ||
					document.reviewForm.author.value == "" || document.reviewForm.descript.value == "" || document.reviewForm.review.value == ""){
				alert("Complete all required fields");
			}
			else{
				alert("Your review was submitted!");
			}
		}
		</script>
	</body>
</html>