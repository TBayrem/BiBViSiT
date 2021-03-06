
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
String SR_start =  request.getParameter("Start_r");
String SR_end =  request.getParameter("End_r");



 int Imma = Integer.parseInt(SImma);
int Num = Integer.parseInt(Snum);
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");   
Date DR_start = (Date)formatter.parse(SR_start); 
Date DR_end = (Date)formatter.parse(SR_end); 

Timestamp R_start = new Timestamp(DR_start.getTime());
Timestamp R_end = new Timestamp(DR_end.getTime()); 

if(visitor.SearchVisitor(Imma)){
	if (reserv.InsertReservation(Num,Imma,R_start,R_end)){
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
			if (reserv.InsertReservation(Num,Imma,R_start,R_end)){
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
