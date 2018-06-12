<script language="javascript">
delay = 2500
imageNum = 1
images=5
theImages = new Array()

for(i = 1; i < images +1; i++) {   
theImages[i] = new Image()   
theImages[i].src = "graphics/imgchange2/" + i + ".jpg"

}

function animate() {   
document.img.src = theImages[imageNum].src   
 
imageNum++   
if(imageNum > images) {      
imageNum = 1   }
}
</script>
<table width="388" height="196" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="265" height="194"><p><img src="graphics/imgchange2/1.jpg" name="img" width="258" height="194" align="top" id="img" onload="setTimeout('animate()', delay)"></p>
  </td>
<td width="123" valign="top"> 
  <br><strong>Sustainable Energy Project,</strong><br />
<strong>Karatu &ndash; Tanzania</strong><br />
<span class="homeHeader">&Oslash;ko-Net samarbejder med en lokal partner  i Tanzania om: B&aelig;redygtigt Energi Projekt - Karatu. </span><br><br> <strong>Læs mere <a href="tanzania.asp">her</a></strong> <br />
og
    bes&oslash;g projektets site:<br />
    <a href="http://www.sepk.org" target="_blank"><strong>www.sepk.org </strong></a></td>
</tr>
<tr> 
<td background="/shared/graphics/layout/dots_horz.gif" height="2" colspan="3"><img src="/shared/graphics/spacer.gif" width="3" height="1"></td>
</tr>
</table>