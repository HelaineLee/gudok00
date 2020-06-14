package com.project.gudok.model;

import com.project.gudok.entity.DStatus;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
public class DeliveryDTO {

    private Long dId;
    private String dAddr;
    private DStatus dStatus;
}
