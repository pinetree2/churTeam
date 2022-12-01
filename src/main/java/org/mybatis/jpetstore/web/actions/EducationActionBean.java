package org.mybatis.jpetstore.web.actions;

import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;
import org.mybatis.jpetstore.domain.Category;
import org.mybatis.jpetstore.service.EducatiionService;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@SessionScope
public class EducationActionBean extends AbstractActionBean {
    private static final String LifeEducation = "/WEB-INF/jsp/Education/LifeEducation.jsp";
    private static final String TEST= "/WEB-INF/jsp/Education/Test.jsp";
    private static final String Choice = "/WEB-INF/jsp/Education/ChoiceAnimal.jsp";
    private static final String DogEducation = "/WEB-INF/jsp/Education/DogEducation.jsp";
    private static final String CatEducation = "/WEB-INF/jsp/Education/CatEducation.jsp";
    private static final String FishEducation = "/WEB-INF/jsp/Education/FishEducation.jsp";
    private static final String BirdEducation = "/WEB-INF/jsp/Education/BirdEducation.jsp";
    private static final String PASS = "/WEB-INF/jsp/Education/Result.jsp";

    private String RDO_Animal;

    public String getRDO_Animal() {
        return RDO_Animal;
    }

    public void setRDO_Animal(String rdo_animal) {
        this.RDO_Animal =rdo_animal;
    }

    private String categoryId;
    private Category category;
    private List<Category> categoryList;

    /*
    @SpringBean
    private transient EducatiionService educatiionService;

    public EducatiionService getEducatiionService() {
        return educatiionService;
    }

    public void setEducatiionService(EducatiionService educatiionService) {
        this.educatiionService = educatiionService;
    }
*/
    public ForwardResolution LifeEducation() {
        System.out.println("Life Education");
        return new ForwardResolution(LifeEducation);
    }

    public ForwardResolution TEST(){
        System.out.println("Test");
        return new ForwardResolution(TEST);
    }

    public ForwardResolution Choice(){
        System.out.println("Choice Animal");
        return new ForwardResolution(Choice);
    }

    public ForwardResolution DogEducation(){
        System.out.println("Choice Dog");
        return new ForwardResolution(DogEducation);
    }

    public ForwardResolution CatEducation(){
        System.out.println("Choice Cat");
        return new ForwardResolution(CatEducation);
    }
    public ForwardResolution FishEducation(){
        System.out.println("Choice Fish");
        return new ForwardResolution(FishEducation);
    }
    public ForwardResolution BirdEducation(){
        System.out.println("Choice Bird");
        return new ForwardResolution(BirdEducation);
    }

    public ForwardResolution AfterChoice(){
        System.out.println("After Choice");
        String rdo_animal = context.getRequest().getParameter("RDO_Animal");
        setRDO_Animal(rdo_animal);
        System.out.println("choice:" + rdo_animal);
        if(rdo_animal == null){
            System.out.println("Choice is null");
            return new ForwardResolution(TEST);
        }
        return new ForwardResolution(TEST);
    }

    public ForwardResolution PASS() {
        System.out.println("TEST PASS");
        return new ForwardResolution(PASS);
    }
}
