package com.view;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.entities.Note;
import com.helper.sessionFactory;

public class DBView {
	public static List<Note> selectAllPlan(){
		List<Note> result=new ArrayList<Note>();
		
		try {
			
			Session s=sessionFactory.getFactory().openSession();
			
			@SuppressWarnings("unchecked")
			Query<Note> q=s.createQuery("from Note n where n.category='plan' ");
			
			result=q.list();
			
			s.close();
			
		}
		catch(HibernateException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public static List<Note> selectAllDoing(){
		List<Note> result=new ArrayList<Note>();
		
		try {
			
			Session s=sessionFactory.getFactory().openSession();
			
			@SuppressWarnings("unchecked")
			Query<Note> q=s.createQuery("from Note n where n.category='doing' ");
			
			result=q.list();
			
			s.close();
			
		}
		catch(HibernateException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static List<Note> selectAllBacklog(){
		List<Note> result=new ArrayList<Note>();
		
		try {
			
			Session s=sessionFactory.getFactory().openSession();
			
			@SuppressWarnings("unchecked")
			Query<Note> q=s.createQuery("from Note n where n.category='backlog' ");
			result=q.list();
			
			s.close();
			
		}
		catch(HibernateException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static List<Note> selectAllDone(){
		List<Note> result=new ArrayList<Note>();
		
		try {
			
			Session s=sessionFactory.getFactory().openSession();
			
			@SuppressWarnings("unchecked")
			Query<Note> q=s.createQuery("from Note n where n.category='done' order by n.addedDate");
			
			result=q.list();
			
			s.close();
			
		}
		catch(HibernateException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
