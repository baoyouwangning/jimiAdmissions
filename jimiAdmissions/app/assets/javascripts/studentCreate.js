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

    function showAndHide(listObj, display) {
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
    function getValue(inputObj, selectedCourses) {
        var inputCourses = $("input#student_obtain_courses").val();

        if (inputCourses.length < 1 && selectedCourses != "clearAll") {
            $("input#student_obtain_courses").val(selectedCourses);
        }
        else if( selectedCourses == "clearAll" )
        {
            $("input#student_obtain_courses").val('');
        }
        else if (inputCourses.indexOf(selectedCourses) < 0) {
            $("input#student_obtain_courses").val(inputCourses + ';' + selectedCourses);
        }
    }

    //课程选择
    $("input#student_obtain_courses").blur(function () { showAndHide('List2','hide'); })
        .click(function () { showAndHide('List2','show');})

    //课程列表
    $("li.courseLists").mousedown(function () {
        getValue('txt2',this.title);
        showAndHide('List2','hide');
    })
}
