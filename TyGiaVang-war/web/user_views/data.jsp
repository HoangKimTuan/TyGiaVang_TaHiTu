<%-- 
    Document   : data
    Created on : Apr 9, 2017, 10:37:33 PM
    Author     : HoangKimTuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="network.HttpURLConnectionGoldRate"%>

<script>
    var data_main = <%= HttpURLConnectionGoldRate.sendGet("http://www.tygia.com/json.php?ran=0&rate=0&gold=1&bank=VIETCOM&date=now") %>;
    var name_port = "http://"+"<%=request.getServerName()%>"+":"+"<%=request.getServerPort()%>";
    
    function gold(data) {
        var shows = [];

        for (var i = 0; i < data.value.length; i++) {
            if (data.value[i].brand == "")
                data.value[i].brand = "No Name";
            var show = {
                city : data.value[i].brand,
                system : data.value[i].company,
                buy : data.value[i].buy,
                sell : data.value[i].sell,
                type: data.value[i].type
            };
            shows.push(show);
        }

        for(var i = 0; i < shows.length - 1; i++) {
            for(var j = i + 1; j < shows.length; j++){
                if(shows[i].city.localeCompare(shows[j].city) > 0)
                    shows[j] = [shows[i], shows[i] = shows[j]][0];
                if(shows[i].city.localeCompare(shows[j].city) == 0 && shows[i].system.localeCompare(shows[j].system) > 0)
                    shows[j] = [shows[i], shows[i] = shows[j]][0];
                if(shows[i].city.localeCompare(shows[j].city) == 0 && shows[i].system.localeCompare(shows[j].system) == 0
                        && shows[i].buy.localeCompare(shows[j].buy) < 0)
                    shows[j] = [shows[i], shows[i] = shows[j]][0];
            }
        }

        for(var i = 0; i < shows.length - 1; i++) {
            if(shows[i].city == shows[i+1].city && shows[i].system == shows[i+1].system) {
                shows.splice(i+1, 1);
                i--;
            }
        }
        
        return shows;
    }
    
    function sjc(data) {
        var shows = [];

        for (var i = 0; i < data.value.length; i++) {
            if (data.value[i].company == "SJC") {
                var show = {
                    city : data.value[i].brand,
                    buy : data.value[i].buy,
                    sell : data.value[i].sell,
                    type: data.value[i].type
                };
                shows.push(show);
            }
        }

        return shows;
    }

    function doji(data) {
        var shows = [];

        for (var i = 0; i < data.value.length; i++) {
            if (data.value[i].company == "DOJI") {
                var show = {
                    city : data.value[i].brand,
                    buy : data.value[i].buy,
                    sell : data.value[i].sell,
                    type: data.value[i].type
                };
                shows.push(show);
            }
        }

        return shows;
    }
    
    var goldRate = angular.module("goldRate", []);
    goldRate.controller('goldRateController', function($scope, $http) {  
        $scope.gold = {
            data: []
        };
        
        $scope.sjc = {
            data: []
        };

        $scope.doji = {
            data: []
        };

        $scope.updated = "";
        
        var func_gold = function set_gold() {
            $http({
                method: 'GET',
                dataType: "jsonp",
                url: name_port + '/TyGiaVang-war/user_views/get_data.jsp?url=' + encodeURIComponent('http://www.tygia.com/json.php?ran=0&rate=0&gold=1&bank=VIETCOM&date=now')
            })
            .then(
                function successCallback(response) {
                    $scope.gold.data = gold(response.data.golds[0]);
                    $scope.updated = response.data.golds[0].updated;
                    $scope.sjc.data = sjc(response.data.golds[0]);
                    $scope.doji.data = doji(response.data.golds[0]);
                }, 
                function errorCallback(response) {
                    console.log(response);
                }
            );
        }

        angular.element(document).ready(function() {
            func_gold();
            setInterval(func_gold, 3000);
        });
    });
</script>