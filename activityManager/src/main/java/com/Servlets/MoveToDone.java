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

/**
 * Servlet implementation class MoveToDone
 */
public class MoveToDone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveToDone() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=sessionFactory.getFactory().openSession();
			
			Note note=s.load(Note.class, id);
			note.setCategory("done");
			
			Transaction tr=s.beginTransaction();
			
			s.update(note);
			
			tr.commit();
			
			s.close();
			
			response.sendRedirect("index.jsp");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	

}
