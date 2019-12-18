<%--
  Created by IntelliJ IDEA.
  User: Captivate
  Date: 2019/12/9
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Single</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--theme-style-->
    <link href="assets/css/style4.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <script src="assets/js/jquery.min.js"></script>
    <!--- start-rate---->
    <script src="assets/js/jstarbox.js"></script>
    <link rel="stylesheet" href="assets/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
    <script type="text/javascript">
        jQuery(function() {
            jQuery('.starbox').each(function() {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function(event, value) {
                    if(starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' '+val);
                        return val;
                    }
                })
            });
        });
    </script>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <base href="<%=basePath%>">
    <!---//End-rate---->
    <link href="assets/css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.html"><img src="assets/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >
                    <li><a href="user/tologin">Login</a></li>
                    <li><a href="product/jsp">Register</a></li>
                    <li><a href="cart/getcart">Checkout</a></li>
                    <li><a href="#">${email},欢迎你！</a></li>
                </ul>
            </div>

            <div class="col-sm-5 header-social">
                <ul >
                    <li><a href="#"><i></i></a></li>
                    <li><a href="#"><i class="ic1"></i></a></li>
                    <li><a href="#"><i class="ic2"></i></a></li>
                    <li><a href="#"><i class="ic3"></i></a></li>
                    <li><a href="#"><i class="ic4"></i></a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="product/list/null">Home</a></li>

                            <li class="dropdown mega-dropdown active">
                                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Women<span class="caret"></span></a>
                                <div class="dropdown-menu">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu1</h4>
                                                <ul>
                                                    <li><a href="product.html">Accessories</a></li>
                                                    <li><a href="product.html">Bags</a></li>
                                                    <li><a href="product.html">Caps & Hats</a></li>
                                                    <li><a href="product.html">Hoodies & Sweatshirts</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                    <li><a href="product.html">Jackets & Coats</a></li>
                                                    <li><a href="product.html">Jeans</a></li>
                                                    <li><a href="product.html">Jewellery</a></li>
                                                    <li><a href="product.html">Jumpers & Cardigans</a></li>
                                                    <li><a href="product.html">Leather Jackets</a></li>
                                                    <li><a href="product.html">Long Sleeve T-Shirts</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu3</h4>
                                                <ul>
                                                    <li><a href="product.html">Shirts</a></li>
                                                    <li><a href="product.html">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="product.html">Sunglasses</a></li>
                                                    <li><a href="product.html">Sweatpants</a></li>
                                                    <li><a href="product.html">Swimwear</a></li>
                                                    <li><a href="product.html">Trousers & Chinos</a></li>

                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu4</h4>
                                                <ul>
                                                    <li><a href="product.html">T-Shirts</a></li>
                                                    <li><a href="product.html">Underwear & Socks</a></li>
                                                    <li><a href="product.html">Vests</a></li>
                                                    <li><a href="product.html">Jackets & Coats</a></li>
                                                    <li><a href="product.html">Jeans</a></li>
                                                    <li><a href="product.html">Jewellery</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1 col5">
                                            <img src="assets/images/me.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <li class="dropdown mega-dropdown active">
                                <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span class="caret"></span></a>
                                <div class="dropdown-menu mega-dropdown-menu">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu1</h4>
                                                <ul>
                                                    <li><a href="product.html">Accessories</a></li>
                                                    <li><a href="product.html">Bags</a></li>
                                                    <li><a href="product.html">Caps & Hats</a></li>
                                                    <li><a href="product.html">Hoodies & Sweatshirts</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                    <li><a href="product.html">Jackets & Coats</a></li>
                                                    <li><a href="product.html">Jeans</a></li>
                                                    <li><a href="product.html">Jewellery</a></li>
                                                    <li><a href="product.html">Jumpers & Cardigans</a></li>
                                                    <li><a href="product.html">Leather Jackets</a></li>
                                                    <li><a href="product.html">Long Sleeve T-Shirts</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu3</h4>

                                                <ul>
                                                    <li><a href="product.html">Shirts</a></li>
                                                    <li><a href="product.html">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="product.html">Sunglasses</a></li>
                                                    <li><a href="product.html">Sweatpants</a></li>
                                                    <li><a href="product.html">Swimwear</a></li>
                                                    <li><a href="product.html">Trousers & Chinos</a></li>

                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu4</h4>
                                                <ul>
                                                    <li><a href="product.html">T-Shirts</a></li>
                                                    <li><a href="product.html">Underwear & Socks</a></li>
                                                    <li><a href="product.html">Vests</a></li>
                                                    <li><a href="product.html">Jackets & Coats</a></li>
                                                    <li><a href="product.html">Jeans</a></li>
                                                    <li><a href="product.html">Jewellery</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1 col5">
                                            <img src="assets/images/me1.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <li><a class="color3" href="product.html">Sale</a></li>
                            <li><a class="color4" href="404.html">About</a></li>
                            <li><a class="color5" href="typo.html">Short Codes</a></li>
                            <li ><a class="color6" href="contact.html">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="follow/getfollow" >
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                    <li>
                        <a href="cart/getcart">
                            <img src="assets/images/cart.png" alt=""/>
                        </a>
                    </li>
                </ul>

                <div class="clearfix"> </div>

                <!----->

                <!---pop-up-box---->
                <link href="assets/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                <script src="assets/js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!---//pop-up-box---->
                <script>
                    search = function(){
                        var contents = document.getElementById("contents").value;
                        console.log(contents);
                        window.location.href='product/list/' + contents;
                    }
                </script>
                <div id="small-dialog" class="mfp-hide">
                    <div class="login-search">
                        <div class="login">
                            <input type="submit" value="" onclick="search();">
                            <input id="contents" type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">
                        </div>
                        <p>Shopin</p>
                    </div>
                </div>
                <script>
                    $(document).ready(function() {
                        $('.popup-with-zoom-anim').magnificPopup({
                            type: 'inline',
                            fixedContentPos: false,
                            fixedBgPos: true,
                            overflowY: 'auto',
                            closeBtnInside: true,
                            preloader: false,
                            midClick: true,
                            removalDelay: 300,
                            mainClass: 'my-mfp-zoom-in'
                        });

                    });
                </script>
                <!----->
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Single</h1>
        <em></em>
        <h2><a href="index.html">Home</a><label>/</label>Single</a></h2>
    </div>
</div>
<div class="single">

    <div class="container">
        <div class="col-md-9">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="assets/images/si.jpg">
                            <div class="thumb-image"> <img src="assets/images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="assets/images/si1.jpg">
                            <div class="thumb-image"> <img src="assets/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="assets/images/si2.jpg">
                            <div class="thumb-image"> <img src="assets/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7 single-top-in">
                <div class="span_2_of_a1 simpleCart_shelfItem">
                    <h3>${product.productName}</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom item_price">￥${product.productCurrentPrice}</span>
                        <a href="#">click for offer</a>
                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="wish-list">
                        <ul>
                            <li class="wish"><a href="#"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>Add to Wishlist</a></li>
                            <li class="compare"><a href="#"><span class="glyphicon glyphicon-resize-horizontal" aria-hidden="true"></span>Add to Compare</a></li>
                        </ul>
                    </div>
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"  id="quantity"><span>1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>
                    <!--quantity-->
                    <script>
                        $('.value-plus').on('click', function(){
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus').on('click', function(){
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
                            if(newVal>=1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->
                    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
                    <script>
                        addcart = function(){
                            var num = document.getElementById("quantity").innerText;
                            var uid = "${uid}";
                            var pid = "${pid}";
                            console.log(num);
                            // alert(JSON.stringify(arry));
                            $.ajax({
                                //json格式
                                url:"cart/postcart",
                                contentType:"application/json;charset=UTF-8",
                                data:JSON.stringify({
                                    "purchaseQuantity":num,
                                    "userId":uid,
                                    "productId":pid
                                }),
                                dataType:"text",
                                type:"post",
                                success:function(data){
                                    data = data.toString();
                                    if (data == "success")
                                        alert("添加成功");
                                    else
                                        alert("添加失败");
                                },
                                error:function (data) {
                                    alert("失败");
                                }
                            });
                        }

                        addfollow = function(){
                            var uid = "${uid}";
                            var pid = "${pid}";
                            // alert(JSON.stringify(arry));
                            $.ajax({
                                //json格式
                                url:"follow/postfollow",
                                contentType:"application/json;charset=UTF-8",
                                data:JSON.stringify({
                                    "userId":uid,
                                    "productId":pid
                                }),
                                dataType:"text",
                                type:"post",
                                success:function(data){
                                    data = data.toString();
                                    if (data == "success")
                                        alert("添加成功");
                                    else
                                        alert("添加失败");
                                },
                                error:function (data) {
                                    alert("失败");
                                }
                            });
                        }
                    </script>
                    <a onclick="addfollow();" class="add-to item_add hvr-skew-backward">Add to follow</a>
                    <a onclick="addcart();" class="add-to item_add hvr-skew-backward">Add to cart</a>
                    <div class="clearfix"> </div>
                </div>

            </div>
            <div class="clearfix"> </div>
            <!---->
            <div class="tab-head">
                <nav class="nav-sidebar">
                    <ul class="nav tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">Product Description</a></li>
                        <li class=""><a href="#tab2" data-toggle="tab">Additional Information</a></li>
                        <li class=""><a href="#tab3" data-toggle="tab">Reviews</a></li>
                    </ul>
                </nav>
                <div class="tab-content one">
                    <div class="tab-pane active text-style" id="tab1">
                        <div class="facts">
                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab2">

                        <div class="facts">
                            <p > Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
                            <ul >
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Multimedia Systems</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Digital media adapters</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Set top boxes for HDTV and IPTV Player  </li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab3">

                        <div class="facts">
                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
                            </ul>
                        </div>

                    </div>

                </div>
                <div class="clearfix"></div>
            </div>
            <!---->
        </div>
        <!----->

        <div class="col-md-3 product-bottom product-at">
            <!--categories-->
            <div class=" rsidebar span_1_of_left">
                <h4 class="cate">Categories</h4>
                <ul class="menu-drop">
                    <li class="item1"><a href="#">Men </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="#">Women </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="#">Kids</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="#">Accessories</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails</a></li>
                        </ul>
                    </li>

                    <li class="item4"><a href="#">Shoes</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function() {
                    var menu_ul = $('.menu-drop > li > ul'),
                        menu_a  = $('.menu-drop > li > a');
                    menu_ul.hide();
                    menu_a.click(function(e) {
                        e.preventDefault();
                        if(!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true,true).slideUp('normal');
                        }
                    });

                });
            </script>
            <!--//menu-->
            <section  class="sky-form">
                <h4 class="cate">Discounts</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
                    </div>
                </div>
            </section>


            <!---->
            <section  class="sky-form">
                <h4 class="cate">Type</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Sofa Cum Beds (30)</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Bags  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Caps & Hats (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jackets & Coats   (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jeans  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Shirts   (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sunglasses  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Swimwear  (30)</label>
                    </div>
                </div>
            </section>
            <section  class="sky-form">
                <h4 class="cate">Brand</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Roadstar</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Levis</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Persol</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nike</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Edwin</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>New Balance</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Paul Smith</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Ray-Ban</label>
                    </div>
                </div>
            </section>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--brand-->
<div class="container">
    <div class="brand">
        <div class="col-md-3 brand-grid">
            <img src="assets/images/ic.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="assets/images/ic1.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="assets/images/ic2.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="assets/images/ic3.png" class="img-responsive" alt="">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//brand-->
</div>

</div>
<!--//content-->
<!--//footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="col-md-3 footer-middle-in">
                <a href="index.html"><img src="assets/images/log.png" alt=""></a>
                <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
            </div>

            <div class="col-md-3 footer-middle-in">
                <h6>Information</h6>
                <ul class=" in">
                    <li><a href="404.html">About</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="contact.html">Site Map</a></li>
                </ul>
                <ul class="in in1">
                    <li><a href="#">Order History</a></li>
                    <li><a href="wishlist.html">Wish List</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Tags</h6>
                <ul class="tag-in">
                    <li><a href="#">Lorem</a></li>
                    <li><a href="#">Sed</a></li>
                    <li><a href="#">Ipsum</a></li>
                    <li><a href="#">Contrary</a></li>
                    <li><a href="#">Chunk</a></li>
                    <li><a href="#">Amet</a></li>
                    <li><a href="#">Omnis</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Newsletter</h6>
                <span>Sign up for News Letter</span>
                <form>
                    <input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <ul class="footer-bottom-top">
                <li><a href="#"><img src="assets/images/f1.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="assets/images/f2.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="assets/images/f3.png" class="img-responsive" alt=""></a></li>
            </ul>
            <p class="footer-class">Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//footer-->
<script src="assets/js/imagezoom.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="assets/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen" />

<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>

<script src="assets/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="assets/js/bootstrap.min.js"></script>


</body>
</html>