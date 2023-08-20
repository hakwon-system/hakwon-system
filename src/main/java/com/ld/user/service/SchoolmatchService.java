package com.ld.user.service;

import com.ld.user.dao.ISchoolmatchDao;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.SchoolmatchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolmatchService {

	@Autowired
	private ISchoolmatchDao schoolDao;
	public void schoolmatchInsert(SchoolmatchVO schoolmatchVO) {
		schoolDao.schoolmatchInsert( schoolmatchVO);
		
	}

	public List<SchoolmatchVO> schoolmatchlist(Criteria criteria) {
		return schoolDao.schoolmatchlist(criteria);
	}

	public SchoolmatchVO schoolmatchresult(int schoolmatch_seq) {
		return schoolDao.schoolmatchresult(schoolmatch_seq);
	}

}
