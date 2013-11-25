/**
 * Created with JetBrains RubyMine.
 * User: wangning
 * Date: 13-11-12
 * Time: 下午6:11
 * To change this template use File | Settings | File Templates.
 */

function studentCreate($scope) {
    $scope.inputCourses = '';

    $("li.courseLists").mouseover(function () {
        $(this).css({
            "background-color" : "#A9A9A9",
            "color" : "#FFFFFF"
        })
    })
    $("li.courseLists").mouseout(function () {
        $(this).css({
            "background-color" : "#FFFFFF",
            "color" : "#696969"
        })
    })
    $("li#clearSelect").mouseover(function () {
        $(this).css({"color":"red"})
    })

    //按钮
    $scope.createButtonStyle = "grayButton";

    //student_obtain_courses输入框
    $("#student_obtain_courses").attr("readonly","readonly");

    $scope.showAndHide = function (listObj, display) {
        var Layer = window.document.getElementById(listObj);
        switch (display) {
            case "show":
                $("#" + listObj).slideDown('fast');
                break;
            case "hide":
                $("#" + listObj).slideUp('fast');
                break;
        }
    }
    $scope.getValue = function (inputObj, selectedCourses) {
        if ($scope.inputCourses.length < 1 && selectedCourses != "clearAll") {
            $scope.inputCourses = selectedCourses;
        }
        else if( selectedCourses == "clearAll" )
        {
            $scope.inputCourses = '';
        }
        else if ($scope.inputCourses.indexOf(selectedCourses) < 0) {
            $scope.inputCourses += ';' + selectedCourses;
        }
    }
}
