var index1=0;
var flag1=1;
var index2=1;
var flag2=2;
window.onload =function aa(){
	var a=document.getElementsByClassName("bd");
	var b=document.getElementsByClassName("ph");
	var c=document.getElementsByClassName("ph2");
	var d=document.getElementsByClassName("ph3");
	var e=document.getElementsByClassName("ph4");
	var f=document.getElementsByClassName("num");
	var aspan = document.getElementsByTagName("aspan");
	for(var i=0; i<3; i++){
		a[i].innerHTML=i+1;
		f[i].innerHTML=i+1;
	}
	for(var i=1; i<4; i++){
		b[i].innerHTML=i;
		c[i].innerHTML=i;
		d[i].innerHTML=i;
		e[i].innerHTML=i;
	}
	var aColor = ['red', '#FF7333', 'yellow'];
	var atxt = ["武侠仙侠", "玄幻异能", "古代言情","现代言情"];
	
	   
for(var i=0; i<3; i++){
	a[i].style.backgroundColor = aColor[i];
	b[i].style.color = aColor[i];
	c[i].style.color = aColor[i];
	d[i].style.color = aColor[i];
	e[i].style.color = aColor[i];
	f[i].style.backgroundColor = aColor[i];
}

	while(true){
		aa();
	};
	for(var j=0;j<4;j++){
		aspan[j].innerHTML=atxt[j];
	}
}
