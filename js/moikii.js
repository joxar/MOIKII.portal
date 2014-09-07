$(function() {

  setInterval(chgImg, 1000);

  function chgImg() {
    var hdk = new Date();
    var h = hdk.getHours();
    var m = hdk.getMinutes();

    if (h < 10) h = '0' + h;
    if (m < 10) m = '0' + m;
    var imgSrc = 'material/' + h + m + '.png';

    $("#content").attr('src', imgSrc);
  }

});
