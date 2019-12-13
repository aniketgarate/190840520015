package in.cdac;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ModelDemoServlet
 */
@WebServlet("/ModelDemo")
public class ModelDemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id= 100;
		
		ArrayList<Integer> idList= new ArrayList<Integer>();
		idList.add(101);
		idList.add(102);
		
		String cityName= "Juhu";
		ArrayList<String> cityList= new ArrayList<String>();
		cityList.add("Airoli");
		cityList.add("Dadar");
		cityList.add("Chembur");
		
		User user= new User();
		user.setId(1);
		user.setName("CDAC");
		
		ArrayList<User> userList= new ArrayList<>();
		for(int i=0; i<5; i++)
		{
			User user1= new User();
			user1.setId(1);
			user1.setName("CDAC" + i);
			
			userList.add(user1);
		}
		
		request.setAttribute("ID", id);
		request.setAttribute("IDLIST", idList);
		
		request.setAttribute("CITYNAME", cityName);
		request.setAttribute("CITYLIST", cityList);
		
		request.setAttribute("USER", user);
		request.setAttribute("USERLIST", userList);
		
		request.getRequestDispatcher("/ModelDemo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
