<%@ include file="includes/header.jsp" %>
            <div align="center" class="navbar">
                <div align="center" class="navbar-inner" >
                    <div align="center" class="container" >
                        <ul class="nav" align="center">
                            <li><a href="#" id="step1">Generate UID</a></li>
                            <li><a href="#" id="step2">Register a New User</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
            <div align="center">
            	<div id="Step1">
                    <%@ include file="step1.jsp" %>
            	</div>
            	<div id="Step2">
                    <%@ include file="basic.jsp" %>
            	</div>
            </div>
    </body>
</html>
<%@ include file="includes/footer.jsp" %>