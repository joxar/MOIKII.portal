$(function() {
	
  chgImg();
  setInterval(chgImg, 5000);

  function chgImg() {
    var dt = new Date();
    var h = dt.getHours();
    var m = dt.getMinutes();

    if (h < 10) h = '0' + h;
    if (m < 10) m = '0' + m;
	var hhmm = '' + h + m;
	var tmp_hhmm = '' + h + ':' + m;
    var srcImg = 'resources/images/time/' + hhmm + '.png';
    $("#clockImg").attr('src', srcImg);
    $("#timeBoard").text(tmp_hhmm);
  }
});
