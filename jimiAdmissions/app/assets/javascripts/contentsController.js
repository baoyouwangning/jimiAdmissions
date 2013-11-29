/**
 * Created with JetBrains RubyMine.
 * User: wangning
 * Date: 13-11-23
 * Time: 下午4:28
 * To change this template use File | Settings | File Templates.
 */


$(document).ready(function () {
    var notice = $("#notice").html();
    if(notice.length > 1)
    {
        $("#notice").css({ "height":"110px","line-height" : "110px"})
        setTimeout(function() {
            $("#notice").slideUp(1500);
        }, 1600);
    }
})


