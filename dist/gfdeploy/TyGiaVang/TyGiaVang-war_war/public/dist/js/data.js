function gold(data){
    var listData = data;
    var shows = [];

    for (var i = 0; i < listData.value.length; i++) {
        if (listData.value[i].brand == "")
            listData.value[i].brand = "No Name";
        var show = {
            city : listData.value[i].brand,
            system : listData.value[i].company,
            buy : listData.value[i].buy,
            sell : listData.value[i].sell,
            type: listData.value[i].type
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

function group(data) {
    var shows = [];

    for (var i = 0; i < data.value.length; i++) {
        if (data.value[i].company == "2GROUP") {
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

function currency(data) {
    var listData = data;
    var shows = [];
    
    for (var i = 0; i < listData.length; i++) {
        var show = {
            pair : listData[i].pair,
            bid : listData[i].bid,
            ask : listData[i].ask
        };
        
        shows.push(show);
    }
    
    console.log(shows);

    return shows;
}

var goldRate = angular.module("goldRate", []);
goldRate.controller('goldRateController', function($scope, $http) {  
    $scope.data = {
        dataModule: []
    };
    
    $scope.currency = {
        dataModule: [],
        data: []
    };
    
    $scope.sjc = {
        data: []
    };
    
    $scope.doji = {
        data: []
    };
    
    $scope.group = {
        data: []
    };
    
    $scope.news = {
        data: []
    };
    
    $scope.updated = "";
    var func = function set_data() {
        $http({
            method: 'GET',
            dataType: "jsonp",
            url: name_port + '/GoldRate/jsp/get_data.jsp?url=' + encodeURIComponent('http://www.tygia.com/json.php?ran=0&rate=0&gold=1&bank=VIETCOM&date=now')
        })
        .then(
            function successCallback(response) {
                $scope.data.dataModule = gold(response.data.golds[0]);
                $scope.sjc.data = sjc(response.data.golds[0]);
                $scope.doji.data = doji(response.data.golds[0]);
                $scope.group.data = group(response.data.golds[0]);
                $scope.updated = response.data.golds[0].updated;
            }, 
            function errorCallback(response) {

            }
        );
    }
    
    $scope.percentageRateChange;
    $scope.transactionStamp = "";
    var func_currency = function set_currency() {
        $http({
            method: 'GET',
            dataType: "jsonp",
            url: name_port + '/GoldRate/jsp/get_data.jsp?url=' + encodeURIComponent('http://www.fxdd.com/fileadmin/setup/libraries/pricefeed/feedproxyjson.php?v=rNiw06CtgtjoMAZ')
        })
        .then(
            function successCallback(response) {
                $scope.currency.dataModule = currency(response.data.Result);
                $scope.transactionStamp = response.data.Result[0].transactionStamp;
            }, 
            function errorCallback(response) {

            }
        );
    }
    
    var func_news = function set_news() {
        $scope.news.data = datas;
    }
    
    var func_currency = function set_currency() {
        $scope.currency.data = data_currency;
    }
    
    angular.element(document).ready(function() {
        func();
        setInterval(func, 3000);
        func_currency();
        setInterval(func_currency, 3000);
        func_news();
        func_currency();
    });
});