$(document).ready(function() {
    //nav     
    var obj = null;
    var As = document.getElementById('starlist').getElementsByTagName('a');
    obj = As[0];
    for (i = 1; i < As.length; i++) {
        if (window.location.href.indexOf(As[i].href) >= 0){
            obj = As[i];
            //分类查看主目录名选中
            if (obj.parentElement.parentElement.parentElement.getElementsByTagName("a")[0].text==="分类查看"){
                obj.parentElement.parentElement.parentElement.getElementsByTagName("a")[0].id="selected";
            }
        }
    }
    obj.id = 'selected';
    //nav
    $("#mnavh").click(function() {
        $("#starlist").toggle();
        $("#mnavh").toggleClass("open");
    });
    //search  
    $(".searchico").click(function() {
        $(".search").toggleClass("open");
    });
    //searchclose 
    $(".searchclose").click(function() {
        $(".search").removeClass("open");
    });
    //banner
    $('#banner').easyFader();
    //nav menu   
    $(".menu").click(function(event) {
        $(this).children('.sub').slideToggle();
    });
    //tab
    $('.tab_buttons li').click(function() {
        $(this).addClass('newscurrent').siblings().removeClass('newscurrent');
        $('.newstab>div:eq(' + $(this).index() + ')').show().siblings().hide();
    });
});