<!doctype html>

<html>
<head lang="en">
<title>Angular Smart Table with Spring MVC-Basic with Ajax call</title>
<link data-require="bootstrap-css@3.2.0" data-semver="3.2.0" rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />  
    <script data-require="angular.js@1.2.25" data-semver="1.2.25" src="https://code.angularjs.org/1.2.25/angular.js"></script>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
   <script  type="text/javascript" src="/SpringAngularTable/resources/script/smart-table.min.js"></script>
     
     
</head>
<script type="text/javascript">

angular.module('myApp',['smart-table'])
  .controller('mainCtrl',['$scope','$http',function($scope,$http){    
  $scope.rowCollection = [];
   $http.get('/SpringAngularTable/basicAjax').success(function(incomingData) {	
   			
	        $scope.rowCollection =incomingData;	
	  });
  }]);
</script>
<body ng-app="myApp">
	<br>
	<div   ng-controller="mainCtrl">
		<table st-table="rowCollection" class="table table-striped">
	<thead>
	<tr>
		<th>first name</th>
		<th>last name</th>
		<th>birth date</th>
		<th>balance</th>
		<th>email</th>
	</tr>
	</thead>
	<tbody>
	<tr ng-repeat="row in rowCollection">
		<td>{{row.firstName}}</td>
		<td>{{row.lastName}}</td>
		<td>{{row.birthDate}}</td>
		<td>{{row.balance}}</td>
		<td>{{row.email}}</td>
	</tr>
	</tbody>
</table>
	</div>
</body>
</html>
