package org.mybatis.jpetstore.web.actions;
import javax.servlet.http.HttpSession;
import com.mysql.cj.Session;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;
import org.mybatis.jpetstore.domain.Example;
import org.mybatis.jpetstore.domain.Question;
import org.mybatis.jpetstore.domain.TestResult;
import org.mybatis.jpetstore.service.AccountService;
import org.mybatis.jpetstore.service.CatalogService;
import org.mybatis.jpetstore.service.EducationService;

import java.util.List;

@SessionScope
public class EducationActionBean extends AbstractActionBean{
    private static final String MAIN = "/WEB-INF/jsp/education/LifeEducation.jsp";
    private static final String VIEW_TEST = "/WEB-INF/jsp/education/Test.jsp";
    private static final String VIEW_RESULT ="/WEB-INF/jsp/education/Result.jsp";
    private static final String VIEW_CHOICE ="/WEB-INF/jsp/education/ChoiceAnimal.jsp";
    private static final String VIEW_FISH = "/WEB-INF/jsp/education/FishEducation.jsp";
    private static final String VIEW_DOG = "/WEB-INF/jsp/education/DogEducation.jsp";
    private static final String VIEW_CAT = "/WEB-INF/jsp/education/CatEducation.jsp";
    private static final String VIEW_REPTILE = "/WEB-INF/jsp/education/ReptileEducation.jsp";
    private static final String VIEW_BIRD = "/WEB-INF/jsp/education/BirdEducation.jsp";
    private static final String SIGNON = "/WEB-INF/jsp/account/SignonForm.jsp";
    @SpringBean
    private transient EducationService educationService;

    private List<Example> exampleList;
    private List<Question> questionList;
    private TestResult testResult = new TestResult();
    private String type;
    private Example example;
    private Question question;
    private String point1;
    private String point2;
    private String point3;
    private String point4;
    private String point5;
    private String point6;
    private String point7;
    private String point8;
    private String point9;
    private String point10;
    private String tName;

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String getPoint1() {
        return point1;
    }
    public void setPoint1(String point1) {
        this.point1 = point1;
    }
    public String getPoint2() {
        return point2;
    }
    public void setPoint2(String point2) {
        this.point2 = point2;
    }
    public String getPoint3() {
        return point3;
    }
    public void setPoint3(String point3) { this.point3 = point3; }
    public String getPoint4() {
        return point4;
    }
    public void setPoint4(String point4) {
        this.point4 = point4;
    }
    public String getPoint5() {
        return point5;
    }
    public void setPoint5(String point5) { this.point5 = point5; }
    public String getPoint6() {
        return point6;
    }
    public void setPoint6(String point6) {
        this.point6 = point6;
    }
    public String getPoint7() {
        return point7;
    }
    public void setPoint7(String point7) {
        this.point7 = point7;
    }
    public String getPoint8() {return point8;}
    public void setPoint8(String point8) {this.point8 = point8;}
    public String getPoint9() {return point9;}
    public void setPoint9(String point9) {this.point9 = point9;}
    public String getPoint10() {return point10;}
    public void setPoint10(String point10) {this.point10 = point10;}

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
    public void pointclear(){
        setPoint1(null);
        setPoint2(null);
        setPoint3(null);
        setPoint4(null);
        setPoint5(null);
        setPoint6(null);
        setPoint7(null);
        setPoint8(null);
        setPoint9(null);
        setPoint10(null);
    };
    @DefaultHandler
    public ForwardResolution viewMain() {
        return new ForwardResolution(MAIN);
    }

    public ForwardResolution viewLifeEducation() {
        HttpSession s = context.getRequest().getSession();
        s.setAttribute("TestResult",educationService.getTestResult((String)s.getAttribute("UserId")));
        return new ForwardResolution(MAIN);
    }

    public ForwardResolution FishEducation() {return  new ForwardResolution(VIEW_FISH);}
    public ForwardResolution DogEducation() {return  new ForwardResolution(VIEW_DOG);}
    public ForwardResolution CatEducation() {return  new ForwardResolution(VIEW_CAT);}
    public ForwardResolution BirdEducation() {return  new ForwardResolution(VIEW_BIRD);}
    public ForwardResolution ReptileEducation() {return  new ForwardResolution(VIEW_REPTILE);}

    /**
     * View Question.
     *
     * @return the forward resolution
     */
    public ForwardResolution viewTest() {

        HttpSession s = context.getRequest().getSession();
        if(s.getAttribute("accountBean")==null) return new ForwardResolution(SIGNON);
        else {
            pointclear();
            System.out.println("type = " + type);
            questionList = educationService.getQuestionList(type);
            exampleList = educationService.getExampleList(type);
            return new ForwardResolution(VIEW_TEST);}
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
        String[] points = {point1,point2,point3,point4,point5,point6,point7,point8,point9,point10};
        for(int i=0;i<points.length;i++){
            if(points[i] == null)return new ForwardResolution(VIEW_TEST);
        }
        int totalPoint =0;

        totalPoint += Integer.parseInt(point1);
        totalPoint += Integer.parseInt(point2);
        totalPoint += Integer.parseInt(point3);
        totalPoint += Integer.parseInt(point4);
        totalPoint += Integer.parseInt(point5);
        totalPoint += Integer.parseInt(point6);
        totalPoint += Integer.parseInt(point7);
        totalPoint += Integer.parseInt(point8);
        totalPoint += Integer.parseInt(point9);
        totalPoint += Integer.parseInt(point10);


        int flag=0;
        testResult = educationService.getTestResult(tName);

        if(type=="ET" && totalPoint==50) flag=1;
        else if(type!="ET" && totalPoint>=40) flag=1;
        System.out.println(flag);
        switch (type) {
            case "ET":
                testResult.setET(flag);
                break;
            case "DG":
                testResult.setDG(flag);
                break;
            case "CT":
                testResult.setCT(flag);
                break;
            case "FI":
                testResult.setFI(flag);
                break;
            case "BD":
                testResult.setBD(flag);
                break;
            case "RT":
                testResult.setRT(flag);
                break;
        }

        System.out.println("---------------"+totalPoint);

        educationService.updatePoint(testResult);
        HttpSession s = context.getRequest().getSession();

        s.setAttribute("educationBean", this);
        return new ForwardResolution(VIEW_RESULT);
    }


    /**
     * 동물 선택 화면
     * */

    public ForwardResolution viewChoice(){
        return new ForwardResolution(VIEW_CHOICE);
    }
    public ForwardResolution Choice(){
        switch (type) {
            case "DG":
                return new ForwardResolution(VIEW_DOG);

            case "CT":
                return new ForwardResolution(VIEW_CAT);

            case "FI":
                return new ForwardResolution(VIEW_FISH);

            case "BD":
                return new ForwardResolution(VIEW_BIRD);

            case "RT":
                return new ForwardResolution(VIEW_REPTILE);

        }
        return new ForwardResolution(MAIN);
    }
    public void clear(){
        exampleList = null;
        questionList = null;



    }

}
