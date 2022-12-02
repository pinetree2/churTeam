package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;
import org.mybatis.jpetstore.domain.Example;
import org.mybatis.jpetstore.domain.Question;
import org.mybatis.jpetstore.domain.TestResult;
import org.mybatis.jpetstore.service.CatalogService;
import org.mybatis.jpetstore.service.EducationService;

import java.util.List;

@SessionScope
public class EducationActionBean extends AbstractActionBean{
    private static final String MAIN = "/WEB-INF/jsp/education/LifeEducation.jsp";
    private static final String VIEW_TEST = "/WEB-INF/jsp/education/Test.jsp";
    private static final String VIEW_RESULT ="/WEB-INF/jsp/education/Result.jsp";
    private static final String VIEW_CHOICE ="/WEB-INF/jsp/education/ChoiceAnimal.jsp";

    @SpringBean
    private transient EducationService educationService;

    private List<Example> exampleList;
    private List<Question> questionList;
    private TestResult testResult;
    private String type;
    private Example example;
    private Question question;
    private String point1;
    public String getPoint() {
        return point1;
    }

    public String getPoint1() {
        return point1;
    }

    public void setPoint1(String point1) {
        this.point1 = point1;
    }

    public Example getExample() {
        return example;
    }

    public void setExample(Example example) {
        this.example = example;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Example> getExampleList() {
        return exampleList;
    }

    public void setExampleList(List<Example> exampleList) {
        this.exampleList = exampleList;
    }

    public List<Question> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<Question> questionList) {
        this.questionList = questionList;
    }

    public TestResult getTestResult() {
        return testResult;
    }

    public void setTestResult(TestResult testResult) {
        this.testResult = testResult;
    }

    @DefaultHandler
    public ForwardResolution viewMain() {
        return new ForwardResolution(MAIN);
    }

    public ForwardResolution viewLifeEducation() {
        return new ForwardResolution(MAIN);
    }

    /**
     * View Question.
     *
     * @return the forward resolution
     */
    public ForwardResolution viewTest() {
        System.out.println("type이다!!!!!!!!!!!!!!!!!!!!!!!!"+type);
        questionList = educationService.getQuestionList(type);
        exampleList =educationService.getExceptionList(type);
        return new ForwardResolution(VIEW_TEST);
    }

    public ForwardResolution viewResult(){

        /**
         *
         *
         * point 는 queNo 마다 달라서 String point1 (이때 1은 queNo)이런식으로 변수지정해서 점수 불러왔음
         * (queNo는 정해져있으니까 )
         * 그걸 다시 int 로 바꿔서 점수 계산
         *
         * 총 점수를 question table에서 queNo의 최대값을 이용해
         * 반복문을 돌려서 point의 총 합 계산
         *
         *
         * updatePoint라는 쿼리문 적용 시켜서
         * testResult table에 합불 여부 적용시키면 될듯합니다.
         *
         * 링크로는 동물 페이지 못넘어가게.
         *
         */

        int totalPoint =0;
        System.out.println("---------------"+point1);
        EducationService.updatePoint(totalPoint);

        return new ForwardResolution(VIEW_RESULT);

    }


    /**
     * 동물 선택 화면
     * */

    public ForwardResolution viewChoice(){
        return new ForwardResolution(VIEW_CHOICE);
    }

    public void clear(){
        exampleList = null;
        questionList = null;
        testResult = null;
    }

}
