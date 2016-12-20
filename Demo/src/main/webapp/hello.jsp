<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hello</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script>
	var app = angular.module("loginform",[]);
	app.controller("loginController", function($scope, $http) {
		$scope.login=function(){
			console.log(angular.toJson($scope.loginform));
			$http({  
                method : "POST",  
                url : "${pageContext.request.contextPath}/loginForm",  
                data : angular.toJson($scope.loginform),  
                mediaType: "Json",
                headers : {  
                    "Content-Type" : "application/json;charset=utf-8" ,
                    "Accept": "application/json"
                }  
            }).then(function successCallback(response) {
            	
            	 console.log("success"+JSON.stringify(response.data));
            },function errorCallback(response) {
            	console.log("error"+response);
            });
		
        };  

	});
	 function _success(response) {  
		  console.log("success"+response);
     }  

     function _error(response) {  
    	 console.log("error"+response);
     }  

	</script>
</head>
<body>
	<div ng-app="loginform" ng-controller="loginController">
	<br>
		<form role="form" ng-submit="login()" name="loginform">
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					 id="userName" name="userName"
					ng-model="loginform.userName" />
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					 id="password" name="password"
					ng-model="loginform.password" />
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>