<style>
	#chat-box p {
		margin:0;
	}

	#chat-box-parent {
		height:200;
		width:400;
		border-style:ridge;
		border-color:#C8C8C8 ;
		position:relative;
	}	
	#chat-box {
		overflow:auto;
		position:absolute;
		left:20;
		top:10;
		width:358;
		height:140;
		border-style:ridge;
		border-color:#C8C8C8 ;
	}
	#input-box {
		position:absolute;
		bottom:10;
		left:20;
	}
	#input {
		width:300;
	}
</style>

<script>
	window.onload = setTimeout(test, 1000);
	
	function test(){
		alert("test");		
	}

	function append(){
		var input = document.getElementById('input').value;
		var chatBox = document.getElementById('chat-box');
		var newElement = document.createElement("p");
		var text = document.createTextNode(input);
		
		chatBox.appendChild(newElement);
		newElement.appendChild(text);
		
		updateScroll();
		document.getElementById('input').value = "";
		document.getElementById('input').focus();
		document.getElementById('input').select();
	}
	
	function updateScroll(){
	    var element = document.getElementById("chat-box");
	    element.scrollTop = element.scrollHeight;
	}
	
	function checkKeyPressed(e) {
	    if (e.keyCode == "13") {
	        append();
	    }
	}
	
	function listen(){
		window.addEventListener("keydown", checkKeyPressed, false);
		
	}
	
	function stopListen(){
		window.removeEventListener("keydown", checkKeyPressed);
	}
	
</script>

<div id="chat-box-parent">
	<div id="chat-box">
		
	</div>

	<div id="input-box">
		<input id="input" type="text" name="input" onFocus="listen()" onblur="stopListen()">
		<button onclick="append()">Enter</button>
	</div>
</div>