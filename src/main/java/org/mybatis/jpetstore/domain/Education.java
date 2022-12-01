package org.mybatis.jpetstore.domain;

import java.io.Serializable;
import java.sql.Array;

public class Education implements Serializable {
    private static final long serialVersionUID = 8751282105532159742L;


    private String RDO_Animal;

    public String getRDO_Animal() {
        return RDO_Animal;
    }

    public void setRDO_Animal(String rdo_animal) {
        this.RDO_Animal =rdo_animal;
    }
}
