/**
 * Created with JetBrains RubyMine.
 * User: wangning
 * Date: 13-11-12
 * Time: 下午6:11
 * To change this template use File | Settings | File Templates.
 */

function studentCreate($scope) {
    $scope.createButtonStyle = "grayButton";
    $scope.createStudent = function () {
        if($scope.createButtonStyle == "grayButton")
        {
            return;
        }
    }

}
