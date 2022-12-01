<%@ include file="../common/IncludeTop.jsp"%>

<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>생명윤리교육</title>

</head>
<body>

<h2>생명윤리교육</h2>
<form action="">
    <%out.println("반려동물을 기르기로 결정하고 입양하였다면, 동물의 생명과 안전을 보호하고 동물의 복지에 책임감을 가져야 합니다." +
            "\n" +
            "일반적으로 다음과 같은 사항을 지켜야 합니다. \n" +
            "\n" +
            "1. 동물이 본래의 습성과 신체의 원형을 유지하면서 정상적으로 살 수 있도록 관리해야 합니다.\n" +
            "\n" +
            "2. 동물이 갈증 및 굶주림을 겪거나 영양이 결핍되지 않도록 관리해야 합니다.\n" +
            "\n" +
            "3. 동물이 정상적인 행동을 표현할 수 있고 불편함을 겪지 않도록 해야 합니다.\n" +
            "\n" +
            "4. 동물이 고통ㆍ상해 및 질병으로부터 자유롭도록 해야 합니다.\n" +
            "\n" +
            "5. 동물이 공포와 스트레스를 받지 않도록 해야 합니다.\n" +
            "\n" +
            "6.동물에게 적합한 사료와 물을 공급하고, 운동ㆍ휴식 및 수면이 보장되도록 노력하여야 합니다.\n" +
            "\n" +
            "7.동물이 질병에 걸리거나 부상당한 경우에는 신속하게 치료하거나 그 밖에 필요한 조치를 하도록 노력하여야 합니다.\n" +
            "\n" +
            "반려동물을 기를 환경을 조성할 때에는 다음과 같은 사항을 준수해야 합니다. \n" +
            "\n" +
            "동물의 종류, 크기, 특성, 건강상태를 고려하여 최대한 적절한 환경을 제공하여야 합니다.\n" +
            " 동물의 집은 동물이 자연스러운 자세로 일어나거나 눕거나 움직이는 등 일상적인 동작을 하는 데에 지장이 없는 크기이어야 합니다.\n" +
            "\n" +
            "동물이 원래 살던 곳과 다른 장소로 옮겨진 경우에는 그 동물이 새로운 환경에 적응하는 데에 필요한 조치를 하도록 노력하여야 합니다. \n" +
            "\n" +
            "반려동물을 입양하였다면 반려동물의 건강관리도 신경써야 합니다. \n" +
            "\n" +
            "전염병 예방을 위하여 정기적으로 반려동물의 특성에 따른 예방접종을 실시하여야 합니다.\n" +
            "\n" +
            "또한, 누구든지 동물에 대하여 다음과 같은 학대 행위를 하여서는 안됩니다. \n" +
            "\n" +
            "1. 고의로 죽음에 이르게 하는 행위\n" +
            "2. 도구, 약물 등 물리적 화학적 방법을 사용하여 상해를 입히는 행위\n" +
            "3. 최소한의 생활반경 제공, 사료 및 물 제공 등의 관리 의무를 준수하지 않는 행위\n" +
            "\n" +
            "위와 같은 행위로 동물을 학대한 자는 2년 이하의 징역 또는 2천만원 이하의 벌금에 처해집니다.\n" +
            "\n" +
            "이처럼 생명을 입양할 경우에는 그에 합당한 책임감을 가져야 합니다.\n" +
            "\n" +
            "동물을 입양할 경우 지켜야 하는 의무와 책임감을 이해하셨다면, 다음 페이지에서 테스트를 실시해 보세요. 모든 문항에서 정답을 맞춰야 선택하신 반려동물에 대한 교육을 받으실 수 있습니다.\n" +
            "\n" +
            "반려동물에 대한 교육까지 마치신 분들에 한정하여 동물 입양 절차가 진행됩니다.");%>
</form>
<stripes:link
        class="Button"
        beanclass="org.mybatis.jpetstore.web.actions.EducationActionBean"
        event="TEST">
    테스트 페이지로 이동
</stripes:link>
</body>
</html>
<%@ include file="../common/IncludeBottom.jsp"%>

