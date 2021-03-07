
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.text.DateFormat"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
		<%@page import="java.sql.Timestamp"%>
	
<%@page import="Model.Reservation"%>
<%@page import="Model.Visitor"%>
<%@page import="Model.Place"%>
<jsp:useBean id="visitor" class="Model.Visitor" scope="session" />
<jsp:useBean id="reserv" class="Model.Reservation" scope="session" />
<jsp:useBean id="place" class="Model.Place" scope="session" />



<%

String SImma = request.getParameter("Imma");
String SPsydo = request.getParameter("Psydo");
String SFach = request.getParameter("Fach");
String Snum = request.getParameter("Num");
String SR_start =  request.getParameter("day");


 int Imma = Integer.parseInt(SImma);
int Num = Integer.parseInt(Snum);
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");   
Date day = (Date)formatter.parse(SR_start); 


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
		if(visitor.InsertVisitor(Imma, SPsydo, SFach)){
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
