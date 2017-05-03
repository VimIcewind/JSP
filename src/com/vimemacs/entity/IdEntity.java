package com.vimemacs.entity;

/**
 * Created by hwd on 2015/10/3.
 */
public abstract class IdEntity {
    protected Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
