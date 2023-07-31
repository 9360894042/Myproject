<%@page import="import java.util.Calendar"%>

<%
     // Create a Calendar object
  Calendar calendar = Calendar.getInstance();

  // Get current day from calendar
  int day = calendar.get(Calendar.DATE);
  // Get current month from calendar
  int month = calendar.get(Calendar.MONTH) + 1;  
  // Get current year from calendar
  int year = calendar.get(Calendar.YEAR);

  System.out.print("Today's Date : ");
  // printing todays date in dd/mm/yy
  System.out.println(day+"/"+month+"/"+year);

  // adding 1 day to current date
  calendar.add(Calendar.DATE, 1);

  day = calendar.get(Calendar.DATE);
  month = calendar.get(Calendar.MONTH) + 1;  
  year = calendar.get(Calendar.YEAR);

  System.out.print("Tomorrow's Date : ");
  // printing tomorrows date in dd/mm/yy
  System.out.println(day+"/"+month+"/"+year);

  // subtracting 8 days from tomorrows day 
  // to get last weeks date 
  calendar.add(Calendar.DATE, -8);

  day = calendar.get(Calendar.DATE);
  month = calendar.get(Calendar.MONTH) + 1;  
  year = calendar.get(Calendar.YEAR);

  // printing last week's date in dd/mm/yy
  System.out.print("Last Week's Date : ");
  System.out.println(day+"/"+month+"/"+year);
    %>