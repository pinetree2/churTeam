package org.mybatis.jpetstore.mapper;

import java.util.List;

import org.mybatis.jpetstore.domain.Example;
import org.mybatis.jpetstore.domain.Question;
import org.mybatis.jpetstore.domain.TestResult;

public interface EducationMapper {

    List<Example> getExampleList(String type);

    List<Question> getQuestionList(String type);

    TestResult getTestResult();
}
