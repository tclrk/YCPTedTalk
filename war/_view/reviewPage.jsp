<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>Write A Review!</title>
		<link rel="stylesheet" href="reviewPage.css">
	</head>
	<body>
		<form id="reviewForm" name="reviewForm" action="${pageContext.servletContext.contextPath}/reviewPage" method="post">
			<div class="Name">
				<label="name">Name</label>
				<input type="text" name ="name" id="name" size=12 value ="${model.name}"/><span id="nameError"></span>
			</div>
		
			<div class="Link">
				<label="ted_talk">TED Talk link</label>
				<input type="text" name ="link" id="link" size=12 value ="${model.link}"/><span id="linkError"></span>
			</div>
		
			<div class="Topic">
				<label="topic">Topic</label>
				<input type="text" name ="topic" id="topic" size=12 value ="${model.topic}"/><span id="topicError"></span>
			</div>
		
			<div class="Author">
				<label="author">Author</label>
				<input type="text" name = "author" id="author" size=12 value ="${model.author}"/><span id="authorError"></span>
			</div>
		
			<div class="Description">
				<label="descript">Description</label><br>
				<textarea name= "descript" id="descript" placeholder="Please write a description for the TED Talk" size=12 value ="${model.description}"></textarea><span id="descriptError"></span>
			</div>
		
			<div class="Review">
				<label="review">Review</label><br>
				<textarea name= "review" id="review" placeholder="Please write a review for the TED Talk" size=12 value ="${model.review}"></textarea><span id="reviewError"></span>
			</div>
			
			<div class="starRating">
				 <label="rating">Rating</label><br>
 				 <input id="rating1" type="radio" name="rating" value="1">
 				 <label for="rating1">1</label>
 				 <input id="rating2" type="radio" name="rating" value="2">
 				 <label for="rating2">2</label>
 				 <input id="rating3" type="radio" name="rating" value="$3">
  				 <label for="rating3">3</label>
 				 <input id="rating4" type="radio" name="rating" value="4">
  				 <label for="rating4">4</label>
 				 <input id="rating5" type="radio" name="rating" value="5">
  				 <label for="rating5">5</label>
			</div>
			
			<div class="Recommendations"><br>
				<label="recommendations" id="recommendations">Recommendations (Optional)</label><br>
				<input type="checkbox" value="${model.recommendation}" name="Awesome!">Awesome!<br>
				<input type="checkbox" value="${model.recommendation}" name="Horrible">1/10, do not recommend<br>
				<input type="checkbox" value="${model.recommendation}" name="Good">A nice watch, but wouldn't watch it again</>
			</div>
			<button onclick="check()">Submit Review!</button>

	</form>
	<div id ="review"></div>
		<script> 
		function check(){
			if(document.reviewForm.name.value == "" || document.reviewForm.link.value == "" || document.reviewForm.topic.value == "" ||
					document.reviewForm.author.value == "" || document.reviewForm.descript.value == "" || document.reviewForm.review.value == "" || document.reviewForm.rating.value == ""){
				alert("Complete all required fields");
			}
			else{
				alert("Your review was submitted!");
			}
		}
		</script>
	</body>
</html>