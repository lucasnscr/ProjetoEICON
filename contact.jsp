<%-- 
    Document   : contact
    Created on : 19/05/2015, 18:21:29
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/topo.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="undefined-sticky-wrapper" class="sticky-wrapper" style="height: 60px;"><div class="mainmenu-area">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Toggle navigation")%></a></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div> 
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="../index.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%></a></li>
                            <li><a href="shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li><a href="cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li class="active"><a href="contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                            </ul>
                            
                        </div>  
                    </div>
                </div>
            </div></div> <!-- End mainmenu area -->
        <div class="container">


            <p> </p>
            <h1><a><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Visit Us")%></a></h1> 

            <hr class="soften">
            <div class="row">
                <div class="span">
                    <div class="row">
                        <div class="col-sm-4">
                            <h4> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact Details")%> </h4>
                            <p>	<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("cidade cep")%> <br> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("PE , BR")%>
                                <br>
                                <br>
                                <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("info@primogames.com.br")%><br>                                
                                <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Tel")%><br>
                                <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Fax")%><br>
                                <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("web")%>
                            </p>		
                        </div>
                        <div class="col-sm-4">
                            <h4><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Opening Hours")%></h4>
                            <h5> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Monday - Friday")%></h5>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("09:00am - 09:00pm")%><br><br></p>
                            <h5><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Saturday")%></h5>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("09:00am - 07:00pm")%><br><br></p>
                            <h5><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Sunday")%></h5>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("12:30pm - 06:00pm")%><br><br></p>
                        </div>
                        <div class="col-sm-4">
                            <h4><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Email")%></h4>
                            <form class="form-horizontal">
                                <fieldset>
                                    <div class="control-group">


                                        <div class="span4">
                                            <fieldset>
                                                <div class="control-group">

                                                    <input type="text" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Nome")%>" class="input-xlarge">

                                                </div>
                                                <div class="control-group">

                                                    <input type="text" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Email")%>" class="input-xlarge">

                                                </div>
                                                <div class="control-group">

                                                    <input type="text" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Assunto")%>" class="input-xlarge">

                                                </div>
                                                <div class="control-group">
                                                    <textarea rows="3" id="textarea" class="input-xlarge"></textarea>

                                                </div>

                                                <button class="btn btn-large" type="submit">Send Messages</button>

                                            </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                    <hr class="soften"> 
                                    </a>
                                    </li>
                                    </ul>
                                    </nav>                        
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    
                                    <div class="container">
                                    <p> </p>
                                    <div class="row">
                                        <div class="span12">
                                            <iframe width="1170" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3949.9482110067283!2d-34.91500685646462!3d-8.106756067565822!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe0a5692fda5e7080!2sFBV+%7C+DeVry!5e0!3m2!1spt-BR!2sbr!4v1431578724289"></iframe><br><small><a href="https://www.google.com.br/maps/place/FBV+%7C+DeVry/@-8.1067561,-34.9150069,17z/data=!4m2!3m1!1s0x0:0xe0a5692fda5e7080" style="color:#0000FF;text-align:left">View Larger Map</a></small>
                                        </div>
                                    </div>
                                    </div>
    </body>
    <%@include file="../include/rodape.jsp" %>
</html>
