package com.ld.admin.vo;

import lombok.Builder;
import lombok.Data;

@Data
public class UpdatorVO {
    private int carrotSeq;
    private String updatorName;

    @Builder
    private UpdatorVO(int carrotSeq, String updatorName) {
        this.carrotSeq = carrotSeq;
        this.updatorName = updatorName;
    }
}
