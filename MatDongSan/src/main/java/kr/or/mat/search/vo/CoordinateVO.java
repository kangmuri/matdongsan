package kr.or.mat.search.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class CoordinateVO implements Serializable{
	private Double minX;
	private Double maxX;
	private Double minY;
	private Double maxY;
	private String userNo;
	private String[] buildingType;
	private String[] dealingType;
	private String[] roomType;
	
	//기본값 주기
	private String parkingYn;
	private String elvtrYn;
}
