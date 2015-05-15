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
   $http.get('/SpringAngularTable/508Ajax').success(function(incomingData) {	
   			
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
		<th col="0" row="0">first name</th>
		<th col="1" row="0">last name</th>
		<th col="2" row="0">birth date</th>
		<th col="3" row="0">balance</th>
		<th col="4" row="0">email</th>
	</tr>
	</thead>
	<tbody>
	<tr ng-repeat="row in rowCollection" ng-init="rowIndex=$index+1">
		<td col="0"  row="{{rowIndex}}">{{row.firstName}}</td>
		<td col="1"  row="{{rowIndex}}">{{row.lastName}}</td>
		<td col="2"  row="{{rowIndex}}">{{row.birthDate}}</td>
		<td col="3"  row="{{rowIndex}}">{{row.balance}}</td>
		<td col="4"  row="{{rowIndex}}">{{row.email}}</td>
	</tr>
	</tbody>
</table>
	</div>
</body>
</html>
