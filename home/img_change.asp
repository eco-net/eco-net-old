<script language="javascript">
delay = 2500
imageNum = 1
images=15
theImages = new Array()
theTexts = new Array()
for(i = 1; i < images +1; i++) {   
theImages[i] = new Image()   
theImages[i].src = "graphics/imgchange/" + i + ".jpg"
theTexts[i] = new Image()
theTexts[i].src = "graphics/imgchange/" + i + ".gif"
}

function animate() {   
document.img.src = theImages[imageNum].src   
document.txt.src = theTexts[imageNum].src  
imageNum++   
if(imageNum > images) {      
imageNum = 1   }
}
</script>
<table width="388" border="0" cellspacing="0" cellpadding="0">
<tr> 
<td><img src="graphics/imgchange/1.jpg" name="img" width="258" height="200" id="img" onload="setTimeout('animate()', delay)"></td>
<td valign="top"> 
<table width="100%" border="0" cellspacing="0" cellpadding="7">
<tr> 
<td class="home"><p class="contentHeader2"><span class="homeHeader">ROCK MED! <br>
  FOR MINDRE KLODE-SLITAGE og 
FOR ST&Oslash;RRE GLOBAL ANSVARLIGHED. <br>
p&aring;:</span><br>
  <br>
    <a href="http://www.cdbu.dk">www.cdbu.dk</a> </p>
  </td>
</tr>
<tr>
  <td valign="bottom" class="home"><p><br>
    <br>
    <br>
    <img src="graphics/imgchange/1.gif" name="txt" width="120" height="40" id="txt">  </p>    </td>
</tr>
</table></td>
</tr>
<tr> 
<td background="/shared/graphics/layout/dots_horz.gif" height="1" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>