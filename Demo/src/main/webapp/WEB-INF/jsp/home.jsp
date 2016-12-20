<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
<h1>Hi {{vm.user.firstName}}!</h1>
<p>You're logged in!!</p>
<h3>All registered users:</h3>
<ul>
    <li ng-repeat="user in vm.allUsers">
        {{user.username}} ({{user.firstName}} {{user.lastName}})
        - <a href="#" ng-click="vm.deleteUser(user.id)">Delete</a>
    </li>
</ul>
<p>&nbsp;</p>
<p><a href="#/login" class="btn btn-primary">Logout</a></p>

</html>