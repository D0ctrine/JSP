package com.web.blog;

import java.util.ArrayList;

public interface MapperDAO {
	public ArrayList<memberDTO> selectUsers();
	public void insertUser(memberDTO m);
	public memberDTO loginchk(memberDTO m);
	public void insertGesi(gesiDTO g);
	public ArrayList<gesiDTO> selectGesi();
}
