package com.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.sessionFactory;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int nodeId=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=sessionFactory.getFactory().openSession();
			Transaction tr=s.beginTransaction();
			Note note=(Note)s.get(Note.class, nodeId);
			s.delete(note);
			tr.commit();
			s.close();
			
			response.sendRedirect("index.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}
