package com.ld.admin.service;

import com.ld.admin.dao.IAcademyDao;
import com.ld.admin.vo.AcademyVO;
import com.ld.user.vo.Criteria;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AcademyService {

    private final IAcademyDao academyDao;

    public List<AcademyVO> findAcademyList(Criteria cr) {
        return academyDao.academylist(cr);
    }

    public void createAcademy(AcademyVO academyVO) {
        academyDao.academyInsert(academyVO);

    }

    public AcademyVO findAcademyById(int academy_seq) {
        return academyDao.academyread(academy_seq);
    }
}


