package org.mybatis.jpetstore.mapper;

import java.util.List;

import org.mybatis.jpetstore.domain.Example;
import org.mybatis.jpetstore.domain.Question;
import org.mybatis.jpetstore.domain.TestResult;

public interface EducationMapper {

    List<Example> getExampleList();

    List<Question> getQuestionList();

    TestResult getTestResult();
}
