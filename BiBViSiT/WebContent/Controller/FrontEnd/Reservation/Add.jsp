
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.text.DateFormat"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.sql.Date"%>
		<%@page import="java.sql.Timestamp"%>
	
<%@page import="Model.Reservation"%>
<%@page import="Model.Visitor"%>
<%@page import="Model.Place"%>
<jsp:useBean id="visitor" class="Model.Visitor" scope="session" />
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
<jsp:useBean id="place" class="Model.Place" scope="session" />



<%


String Psydo = request.getParameter("Psydo");
String Fach = request.getParameter("Fach");
  


 int Imma = Integer.parseInt( request.getParameter("Imma"));
int Num = Integer.parseInt(request.getParameter("Num"));
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");   
Date day = (Date)formatter.parse(request.getParameter("day")); 


if(visitor.SearchVisitor(Imma)){
	if (reserv.InsertReservation(Num,Imma,day)){
		if(place.getPlace(Num)!=null){
			place.UpdateAvailability(Num, 0);
			response.sendRedirect("../../../View/Bodys/FrontEnd/Place/Show.jsp");

			
			}else{
				out.print("Platz nicht gefunden");
				}
		}else{
			out.print("fehler bei reservation ");
			}
	}else{
		if(visitor.InsertVisitor(Imma, Psydo, Fach)){
			if (reserv.InsertReservation(Num,Imma,day)){
				if(place.getPlace(Num)!=null){
					place.UpdateAvailability(Num, 0);
					response.sendRedirect("../../../View/Bodys/FrontEnd/Place/Show.jsp");

					}else{
						out.print("Platz nicht gefunden");
						}
				}else{
					out.print("fehler bei reservation ");
					}
			}else{
				out.print("visitor not inserted");
				}
		}

%>
