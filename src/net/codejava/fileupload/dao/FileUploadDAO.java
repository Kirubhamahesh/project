package net.codejava.fileupload.dao;



import java.util.ArrayList;

import net.codejava.fileupload.model.UploadFile;
import net.codejava.fileupload.model.UserSignUp;

public interface FileUploadDAO {
	void save(UploadFile uploadFile);
	public UploadFile Fileget(UploadFile ob);

	
	public ArrayList<UploadFile> File_getlist(String name);
	
	
}
