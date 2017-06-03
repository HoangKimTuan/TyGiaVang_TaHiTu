var app = angular.module("app", []);
app.controller('exchange-controller', function($scope, $http) { 
    $scope.result = "";
    $scope.getResult = function() {
        var id = document.getElementById("currency").value;
        var input = document.getElementById("input").value;
        $http({
            method : "GET",
            url : "ExchangeCurencyServlet?id=" + id + "&input=" + input
        }).then(function mySucces(response) {
            $scope.result = response.data + " VNĐ";
        }, function myError(response) {
            $scope.result = "Lỗi chuyển đổi";
        });
    };
}); 

