var app = angular.module("reviewer", []);

app.controller("Ctrl", ["$scope", "$log", function($scope, $log) {
    $log.debug("Initializing Controller");

    $scope.good = [];
    $scope.bad = [];
    $scope.improve = [];

    // var DBNAME = "development";
    // var db = openDatabase(DBNAME, '1.0', 'ay lmao', 2 * 1024 * 1024);

    function testSetUp() {
        for (var i = 0; i < 10; i++) {
            $scope.good.push({
                id: i,
                body: "suh dude",
                author: "ski",
                date: "yes"
            });
            $scope.bad.push({
                id: i,
                body: "suh dude",
                author: "ski",
                date: "yes"
            });
            $scope.improve.push({
                id: i,
                body: "suh dude",
                author: "ski",
                date: "yes"
            });
        }
    }

    testSetUp();
    $log.debug("set up test data");

    // db.transaction(function(tx) {
    //     tx.executeSql('INSERT INTO bad VALUES (24, 'emily', 'TEAM_BLUE: 2017-02-06', 'bad stuff yikes hs', '');');
    // });

    // function importData() {

    // }

}]);

