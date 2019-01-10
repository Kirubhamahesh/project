package net.codejava.fileupload.dao;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import net.codejava.fileupload.model.UploadFile;
import net.codejava.fileupload.model.UserSignUp;

@Repository
public class FileUploadDAOImpl implements FileUploadDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public FileUploadDAOImpl() {
	}

	public FileUploadDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	@Transactional
	public UploadFile Fileget(UploadFile ob) {
		
		Session session= sessionFactory.getCurrentSession();
		
		UploadFile obj=(UploadFile)session.get(UploadFile.class,ob.getId());
		
		return obj;
		//System.out.println(obj.getId());
	}
	
	
	
	@Override
	@Transactional
	public ArrayList<UploadFile> File_getlist(String name)
	{
		Session session= sessionFactory.getCurrentSession();
		Criteria cr = session.createCriteria(UploadFile.class);
		//To get records having fistName starting with zara
		cr.add(Restrictions.like("fileName", name+"%"));

		
		ArrayList<UploadFile>  ob=(ArrayList<UploadFile>) cr.list();
		return ob;
	}
	
	
	
			
	


	
	
	

	@Override
	@Transactional
	public void save(UploadFile uploadFile) {
		sessionFactory.getCurrentSession().save(uploadFile);
	}

}
