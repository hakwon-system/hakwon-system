package com.ld.admin.service;

import com.ld.admin.dao.IUpdatorDao;
import com.ld.admin.vo.UpdatorVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdatorService {

    private final IUpdatorDao carrotService;

    public void updateUpdator(UpdatorVO updatorVO) {
        carrotService.updateUpdator(updatorVO);
    }

}
