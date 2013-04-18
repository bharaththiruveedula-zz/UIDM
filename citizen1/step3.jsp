<%@ include file="../includes/database.jsp" %>
<%@ include file="includes/header.jsp" %>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="step1">Step1</a></li>
                            <li><a href="1.jsp" id="step2">Step2</a></li>
                         	</ul>
                    </div>
                </div>
            </div>
	<table><tr><td valign=top>
	<div id="title2">Please Take your snapshot for UID purposes</div>
	
	<!-- First, include the JPEGCam JavaScript Library -->
	<script type="text/javascript" src="webcam.js"></script>
	
	<!-- Configure a few settings -->
	<script language="JavaScript">
		webcam.set_api_url( 'snapshot.jsp' );
		webcam.set_quality( 90 ); // JPEG quality (1 - 100)
		webcam.set_shutter_sound( true ); // play shutter click sound
	</script>
	
	<!-- Next, write the movie to the page at 320x240 -->
	<div id="camera">
	<script language="JavaScript">
		document.write( webcam.get_html(320, 240) );
	</script>
	<br/>
	
	<!-- Some buttons for controlling things -->
	<br/><form>
		<input type=button value="Configure..." onClick="webcam.configure()" class="btn btn-warning">
		&nbsp;&nbsp;
		<input type=button value="Take Snapshot" onClick="take_snapshot()" class="btn btn-success">
	</form>
	</div>	
	<!-- Code to handle the server response (see test.php) -->
	<script language="JavaScript">
		webcam.set_hook( 'onComplete', 'my_completion_handler' );
		
		function take_snapshot() {
			// take snapshot and upload to server
			//document.getElementById('upload_results').innerHTML = '<h1>Uploading...</h1>';
			webcam.snap();
		}
		
		function my_completion_handler(msg) {
				var image_url = RegExp.$1;
				console.log(image_url);
				webcam.reset();
				window.location="http://localhost:8080/UID/citizen1/insert.jsp";
		}
	</script>
	
	</td><td width=50>&nbsp;</td><td valign=top>
		<div id="upload_results" style="background-color:#eee;"></div>
	</td></tr></table>
</body>
</html>
<%@ include file="includes/footer.jsp" %>