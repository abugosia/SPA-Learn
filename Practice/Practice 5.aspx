<%@ Page Language="C#" AutoEventWireup="true" ClassName="Practice_1" Inherits="System.Web.UI.Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" data-ng-app="">
<head runat="server">
    <title>AngularJS </title>
    <script src="Scripts/angular.min.js"></script>
</head>
<body>
    <h1>Creating a View and Controller</h1>

    <div class="container" data-ng-controller="SimpleController">
        <h3>Adding a Simple Controller</h3>
        <ul>
            <li data-ng-repeat="customer in customers">{{ customer.name}} - {{ customer.city | uppercase }}</li>
        </ul>
    </div>
    <script>
        function SimpleController($scope) {
            $scope.customers = [{ name: 'Abu Ali', city: 'Madina' }
                , { name: 'Hamid Khatri', city: 'Makkah' }
                , { name: 'Abdul Lateef', city: 'Madina' }
                , { name: 'Qasim', city: 'Hyderabad' }];
        }
    </script>
    <hr />
    <h3>With pagination</h3>
    <div data-ng-controller="EmployeeController">
        <table style="width: 26%">
            <tr style="background-color:#d4def7;">
                <th><a href="" ng-click="predicate= 'name'; reverse=!reverse">Name</a></th>
                <th><a href="" ng-click="predicate = 'salary'; reverse=!reverse">Salary</a></th>
                <th><a href="" ng-click="predicate = 'age'; reverse=!reverse">Age</a></th>
            </tr>
            <tr data-ng-repeat="emp in employees | orderBy:predicate:reverse">
                <td>{{emp.name}}</td>
                <td>{{emp.salary}}</td>
                <td>{{emp.age}}</td>
            </tr>
        </table>
    </div>
    <script>
        function EmployeeController($scope) {
            $scope.employees = [
                { name: 'Abu Gosia Shahzad Attari', salary: 1000, age: 30 },
                { name: 'Gosia Attaria', salary: 8000, age: 5 },
                { name: 'Fatima Attaria', salary: 7000, age: 4 },
                { name: 'Javeria Attaria', salary: 6000, age: 2.5 },
                { name: 'Wahab Azam', salary: 7500, age: 24 },
                { name: 'Waqas Azam', salary: 3000, age: 26 },
                { name: 'Owais Azam', salary: 9000, age: 28 },
                { name: 'Zeeshan Qadri', salary: 500, age: 12 }
            ]
            $scope.predicate = 'name';
        }
    </script>
</body>
</html>
