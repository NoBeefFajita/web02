<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String food = request.getParameter("food");
	if (food == null) food = "meat";
	String[] src = {};
	if (food.equals("meat")) {
		String[] meatSrc = { 
		"https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434__340.jpg",
		"https://cdn.pixabay.com/photo/2018/07/08/20/18/sausages-3524649__480.jpg",
		"https://cdn.pixabay.com/photo/2017/05/02/14/55/black-forest-ham-2278383__340.jpg",
		"https://cdn.pixabay.com/photo/2020/02/02/15/07/meat-4813261__480.jpg",
		"https://cdn.pixabay.com/photo/2019/11/23/15/25/korea-food-4647402__480.jpg",
		"https://cdn.pixabay.com/photo/2019/09/05/01/08/food-4452838__480.jpg",
		"https://cdn.pixabay.com/photo/2020/04/01/05/16/meat-4989941__480.jpg",
		"https://cdn.pixabay.com/photo/2018/04/29/07/57/meat-3359248__480.jpg",
		"https://cdn.pixabay.com/photo/2014/04/05/11/19/turkey-315079__480.jpg",
		"https://cdn.pixabay.com/photo/2017/09/03/07/10/shish-kebab-2709499__480.jpg",
		"https://cdn.pixabay.com/photo/2018/08/29/19/03/steak-3640560__480.jpg",
		"https://cdn.pixabay.com/photo/2020/09/02/08/19/dinner-5537679__480.png",
		"https://cdn.pixabay.com/photo/2019/09/05/01/08/food-4452842__480.jpg" };
		src = meatSrc;
	} else if (food.equals("fish")) {
		String[] fishSrc = {
            "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__480.jpg",
            "https://cdn.pixabay.com/photo/2019/12/20/18/47/grill-4709068__480.jpg",
            "https://cdn.pixabay.com/photo/2014/05/26/14/53/sushi-354628__340.jpg",
            "https://cdn.pixabay.com/photo/2016/12/30/04/26/restaurant-1939958__480.jpg",
            "https://cdn.pixabay.com/photo/2016/09/26/06/52/caviar-sandwich-1695360__480.jpg",
            "https://cdn.pixabay.com/photo/2018/12/10/00/27/tang-fish-cakes-3866061__480.jpg",
            "https://cdn.pixabay.com/photo/2015/10/17/21/39/food-993457__480.jpg",
            "https://cdn.pixabay.com/photo/2016/07/17/03/02/shrimp-1523135__480.jpg",
            "https://cdn.pixabay.com/photo/2019/03/01/15/14/roll-mops-4028046__480.jpg",
            "https://cdn.pixabay.com/photo/2017/09/10/18/34/fish-2736523__480.jpg",
            "https://cdn.pixabay.com/photo/2016/07/03/02/49/seafood-1494193__480.jpg",
            "https://cdn.pixabay.com/photo/2017/10/09/17/36/zander-filet-2834177__340.jpg",
            "https://cdn.pixabay.com/photo/2016/09/21/13/54/fish-1684828__480.jpg",
            "https://cdn.pixabay.com/photo/2014/09/08/22/50/tuna-439755__480.jpg"
		};
		src = fishSrc;
	} else if (food.equals("vegetable")) {
		String[] vegSrc = {
            "https://cdn.pixabay.com/photo/2016/03/05/19/02/vegetables-1238252__340.jpg",
            "https://cdn.pixabay.com/photo/2015/07/17/13/44/cucumbers-849269__340.jpg",
            "https://cdn.pixabay.com/photo/2016/05/16/22/47/onions-1397037__340.jpg",
            "https://cdn.pixabay.com/photo/2016/04/02/04/14/bell-peppers-1302126__480.jpg",
            "https://cdn.pixabay.com/photo/2016/02/17/19/14/peas-1205673__480.jpg",
            "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062__480.jpg",
            "https://cdn.pixabay.com/photo/2016/11/18/15/31/cooking-1835369__480.jpg",
            "https://cdn.pixabay.com/photo/2010/12/13/10/25/potatoes-2795__480.jpg",
            "https://cdn.pixabay.com/photo/2018/04/13/17/12/vegetable-skewer-3317055__340.jpg",
            "https://cdn.pixabay.com/photo/2018/09/03/11/51/avocado-3651037__480.png",
            "https://cdn.pixabay.com/photo/2021/01/10/04/37/salad-5904093__480.jpg"
		};
		src = vegSrc;
	} else if (food.equals("bread")) {
		String[] breadSrc = {
            "https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438__480.jpg",
            "https://cdn.pixabay.com/photo/2016/03/26/18/23/bread-1281053__340.jpg",
            "https://cdn.pixabay.com/photo/2015/12/05/11/04/bread-1077984__340.jpg",
            "https://cdn.pixabay.com/photo/2015/05/04/10/03/honey-752145__480.jpg",
            "https://cdn.pixabay.com/photo/2016/07/01/19/43/pretzels-1491789__480.jpg",
            "https://cdn.pixabay.com/photo/2017/07/23/17/00/bread-2531902__480.jpg",
            "https://cdn.pixabay.com/photo/2018/08/29/19/01/fig-3640553__480.jpg",
            "https://cdn.pixabay.com/photo/2016/03/05/22/09/beef-1239198__480.jpg",
            "https://cdn.pixabay.com/photo/2017/03/07/04/40/swede-cakes-2123191__480.jpg",
            "https://cdn.pixabay.com/photo/2016/06/03/14/31/pink-wine-1433496__480.jpg",
            "https://cdn.pixabay.com/photo/2017/03/10/06/20/bruschetta-2131893__480.jpg"
		};
		src = breadSrc;
	} else if (food.equals("fruit")) {
		String[] fruitSrc = {
            "https://cdn.pixabay.com/photo/2017/09/26/13/42/apple-2788662__340.jpg",
            "https://cdn.pixabay.com/photo/2017/05/07/19/32/strawberry-2293337__340.jpg",
            "https://cdn.pixabay.com/photo/2017/05/11/19/44/fresh-fruits-2305192__340.jpg",
            "https://cdn.pixabay.com/photo/2018/06/07/16/38/blueberries-3460423__340.jpg",
            "https://cdn.pixabay.com/photo/2014/04/10/11/06/tomatoes-320860__480.jpg",
            "https://cdn.pixabay.com/photo/2015/11/05/18/56/lemon-1024641__480.jpg",
            "https://cdn.pixabay.com/photo/2016/01/02/02/03/orange-1117645__340.jpg",
            "https://cdn.pixabay.com/photo/2016/07/27/20/03/berries-1546125__480.jpg",
            "https://cdn.pixabay.com/photo/2013/10/17/10/59/pomegranate-196800__480.jpg",
            "https://cdn.pixabay.com/photo/2017/02/02/14/04/grapes-2032838__480.jpg",
            "https://cdn.pixabay.com/photo/2016/07/16/20/48/peaches-1522680__480.jpg",
            "https://cdn.pixabay.com/photo/2015/06/10/19/56/apples-805124__480.jpg",
            "https://cdn.pixabay.com/photo/2017/03/10/15/15/lime-2133091__480.jpg",
            "https://cdn.pixabay.com/photo/2017/03/11/18/13/slice-of-lemon-2135548__480.jpg"
		};
		src = fruitSrc;
	}
	%>

	<header>
		<div></div>
		<h1>Images (<%= food %>)</h1>
		<div id="user_menu">
            <p id="icon">
                <button id="iconBtn">
                    <img src="https://blog.kakaocdn.net/dn/wN5pU/btrGq1KeqVw/9ZzHlukPOqMKTAK1H5XXk0/img.png" width="25" alt="user">
                </button>
            </p>
            <p id="drop">
                <ul id="layer">
                    <li>
                        <button id="signIn">sign in</button>
                    </li>
                    <li>
                        <button id="signUp">sign up</button>
                    </li>
                </ul>
            </p>
        </div>
	</header>
	<nav>
		<a href="../index.html">Home</a> <a href="../recipes/index.jsp">Recipe</a>
	</nav>
	<main>
		<%
        for(String source : src) {
            out.print("<img src=\"" + source + "\" height=\"230\">");
        }
        %>
	</main>
    <footer>
        <form action="index.jsp" name="form1">
            <span>Food:</span>
            <select name="food" id="">
                <option value="<%= food %>">-------</option>
                <option value="meat">meat</option>
                <option value="fish">fish</option>
                <option value="vegetable">vegetable</option>
                <option value="bread">bread</option>
                <option value="fruit">fruit</option>
            </select>
            <button>go</button>
        </form>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>