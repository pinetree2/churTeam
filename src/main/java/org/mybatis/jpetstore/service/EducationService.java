package org.mybatis.jpetstore.service;

import org.mybatis.jpetstore.domain.Example;
import org.mybatis.jpetstore.domain.Question;
import org.mybatis.jpetstore.domain.TestResult;
import org.mybatis.jpetstore.mapper.EducationMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * The Class EducationService.
 *
 * @author ywk
 */
@Service
public class EducationService {
    private final EducationMapper educationMapper;

    public EducationService(EducationMapper educationMapper) {
        this.educationMapper = educationMapper;
    }

    public List<Question> getQuestionList(String type) {
        return educationMapper.getQuestionList(type);
    }

    public List<Example> getExceptionList(String type) {return educationMapper.getExampleList(type);
    }

    public TestResult getTestResult() {
        return educationMapper.getTestResult();
    }

}
