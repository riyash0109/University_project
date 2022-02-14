var empMS = angular.module("empMS", [])
empMS.controller("empMSCtrl", ($scope, $http)=>{

    //retrieve JSON file
    $http.get("https://raw.githubusercontent.com/riyash0109/lab9/main/course_json.json")
    .success((response)=>{
        $scope.courses = response
    })
})

