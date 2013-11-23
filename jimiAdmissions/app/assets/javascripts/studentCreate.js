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
        this.style.backgroundColor = "#A9A9A9";
        this.style.color = "#FFFFFF";
    })
    $("li.courseLists").mouseout(function () {
        this.style.backgroundColor = "#FFFFFF";
        this.style.color = "#696969";
    })

    //判断按钮
    $scope.createButtonStyle = "grayButton";
    $scope.createStudent = function () {
        if($scope.createButtonStyle == "grayButton")
        {
            return;
        }
    }


    $scope.showAndHide = function (obj,types) {
        var Layer=window.document.getElementById(obj);
        switch(types){
            case "show":
                $("#"+obj).slideDown('fast');
                break;
            case "hide":
                $("#"+obj).slideUp('fast');
                break;
        }
    }
    $scope.getValue = function (obj,str) {
        if($scope.inputCourses.length < 1)
        {
            $scope.inputCourses = str;
        }
        else if( $scope.inputCourses.indexOf(str) < 0)
        {
            $scope.inputCourses += ';' + str;
        }
    }


    $("document").ready(function () {
        $("input#student_obtain_courses").bind("onkeydown onkeyup oncontextmenu",function () {
            alert(1);
            return false;})
    })

}
