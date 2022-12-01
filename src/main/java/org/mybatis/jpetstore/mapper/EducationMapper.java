package org.mybatis.jpetstore.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.mybatis.jpetstore.domain.Education;

public interface EducationMapper {
  //  void insertEDU_T1(String u_ID , String u_OLD);
  void InsertSum(@Param("sum") int sum);
  // void insertEDU_T1(@Param("u_ID") String u_ID , @Param("u_OLD") String  u_OLD);
  // List<Education> SearchEDU_T1(@Param("u_ID") String u_ID );

}




