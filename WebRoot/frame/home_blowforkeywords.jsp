<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title></title>
<style type="text/css">
        .productno{
        
        }
        .ptitle{
        text-align: left;
        font-size:large;
        font-weight: bold;
        text-decoration:none
        }
        .product{
       
        font-size:medium;
        }
        body
        {
            padding: 0;
            font-size: 10pt;
            behavior:url(css/csshover.htc);
        }
        .topmenu
        {
            display: block;
            width: 220px;
            border: 2px solid #e4393c;
            margin: 0;
            padding: 0;
        }
        .toptitle
        {
            height: 40px;
            line-height: 40px;
            text-align: left;
            font-size: 11pt;
            font-weight: bold;
            color: black;
            background:silver;
            padding-left: 20px;
        }
        .topmenu li
        {
            height: 30px;
            line-height: 30px;
            font-size: 11pt;
            list-style-type: none;
            text-align: left;
            padding-left: 8px;
            z-index: 3;
            background-image: url(1.png);
            background-repeat: no-repeat;
            background-position: right;
        }
        .topmenu li a
        {
            text-decoration: none;
            color: #313131;
        }
        .topmenu li a:hover
        {
            text-decoration: underline;
            color: #e4393c;
        }
        .topmenu li:hover
        {
            border: 1px solid #DDD;
            border-right: 0;
            box-shadow: 0 0 8px #DDD;
            -moz-box-shadow: 0 0 8px #DDD;
            -webkit-box-shadow: 0 0 8px #DDD;
            background-image: none;
        }
        .submenu
        {
            display: none;
            width: 715px;
            left: 220px;
            position: absolute;
            top: 40px;
            border: 1px solid #DDD;
            z-index: 4;
            background: white;
            box-shadow: 0 0 8px #DDD;
            -moz-box-shadow: 0 0 8px #DDD;
            -webkit-box-shadow: 0 0 8px #DDD;
        }
        .leftdiv
        {
            float: left;
            width: 490px;
            margin: 5px;
        }
        .rightdiv
        {
            float: left;
            width: 200px;
            margin: 5px;
        }
        .topmenu li:hover .submenu
        {
            display: block;
        }
        
        .topmenu li:hover span
        {
            background: white;
            display: inline-block;
            z-index: 20;
            width: 20px;
            height: 30px;
            float: right;
            position: relative;
        }
        .leftdiv dl
        {
            display: block;
            border-bottom: 1px solid #EEE;
            padding-bottom: 6px;
            overflow: hidden;
        }
        .leftdiv dl dt
        {
            display: block;
            float: left;
            width: 60px;
            text-align: right;
            height: 22px;
            line-height: 22px;
            padding-right: 6px;
        }
        
        .leftdiv dl dt a
        {
            color: #e4393c;
            font-weight: bold;
            text-decoration: underline;
            font-size: 10pt;
        }
        .leftdiv dl dd
        {
            display: block;
            overflow: hidden;
        }
        .leftdiv dl dd a
        {
            display: block;
            float: left;
            border-left: 1px solid #CCC;
            color: #737373;
            font-size: 9pt;
            padding: 0 8px;
            height: 14px;
            line-height: 14px;
            margin: 4px 0;
        }
        
        .rightdiv dl dd
        {
            margin: 3px 0;
        }
        
        .rightdiv dl dt
        {
            color: #e4393c;
            font-weight: bold;
            font-size: 10pt;
        }
        
        .rightdiv dl dd a
        {
            font-size: 9pt;
            color: #737373;
            line-height: 22px;
        }
        .rightdiv dl dd a:hover
        {
            color: #737373;
     
        }
        
        #list img {float: left;width: 650px;height: 224px;}
        #buttons { position: absolute; height: 10px; width: 100px; z-index: 2; bottom: 20px; left: 280px;}
        #buttons span { cursor: pointer; float: left; border: 1px solid #fff; width: 10px; height: 10px; border-radius: 50%; background: #333;}
        #buttons .on {  background: orangered;}
        .arrow { cursor: pointer; display: none; line-height: 36px; text-align: center; font-size: 36px; font-weight: bold; width: 40px; height: 40px;  position: absolute; z-index: 2; background-color: RGBA(0,0,0,.3); color: #fff;margin-top: 90px;}
        .arrow:hover { background-color: RGBA(0,0,0,.7);}
        #container:hover .arrow { display: block;}
        #prev { left: 20px;}
        #next { right: 20px;}
    </style>
    <script type="text/javascript">
        function searchforkeywords(searchkey){
        parent.frames['home_blow'].window.location.href = 'product_searchKeyForkeywords.action?currPage=1&searchkey='+searchkey;
        return false;
        }
        window.onload = function () {
            var container = document.getElementById('container');
            var list = document.getElementById('list');
            var buttons = document.getElementById('buttons').getElementsByTagName('span');
            var prev = document.getElementById('prev');
            var next = document.getElementById('next');
            var index = 1;
            var animated = false;
            
            function showButton(){
            for(var i=0;i<buttons.length;i++){
            if(buttons[i].className == "on"){
            buttons[i].className = " ";
            break;
            }
            }
            buttons[index-1].className = "on";
            }
            
            function animate(offset){
           animated = true;
           var time = 500;
           var inteval = 10;
           var speed = offset/(time/inteval);
           var left = parseInt(list.style.left)+offset;
            
            function go(){
               if ( (speed > 0 && parseInt(list.style.left) < left) || (speed < 0 && parseInt(list.style.left) > left)) {
               list.style.left = parseInt(list.style.left) + speed + 'px';
               setTimeout(go, inteval);
                    }
               else{
            animated = false;
            list.style.left = left+'px';
            if(parseInt(list.style.left)>-650){
            list.style.left = -1300+'px';
            }
            if(parseInt(list.style.left)<-1300){
            list.style.left = -650+'px';
            }
               
               }
            
            }
            
            go();
/*            list.style.left = left+'px';
            if(parseInt(list.style.left)>-650){
            list.style.left = -1300+'px';
            }
            if(parseInt(list.style.left)<-1300){
            list.style.left = -650+'px';}*/
            
            }
            
            prev.onclick = function(){
            index=index-1;
            if(index<1){index=2;};
            showButton();
            if(!animated){animate(650);}
            
            }
            next.onclick = function(){
            index=index+1;
            if(index>2){index=1;};
            showButton();
            if(!animated){ animate(-650);}
           
            }
 for (var i = 0; i < buttons.length; i++) {
                buttons[i].onclick = function () {
                if(this.className == 'on') {
                        return;
                    }
                 var myIndex = parseInt(this.getAttribute('index'));
                 var offset = -650 * (myIndex - index);
                animate(offset);
                index = myIndex;
                showButton();
                }
                }

            var interval = 2000;
            var timer;
            function play() {
                timer = setTimeout(function () {
                    next.onclick();
                    play();
                }, interval);
            }
            function stop() {
                clearTimeout(timer);
            }
            container.onmouseover = stop;
            container.onmouseout = play;

            play();
        }
        
    </script>

</head>
<body> 

<div style="height:240px; width: 1300px;">
    <div class="lefttype" style="float:left;">
        <ul class="topmenu">
        <div class="toptitle">
                     全部分类
        </div>
        <li><a>闲置数码 手机、相机、笔记本</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手机</a></dt>    
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手机</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手机壳</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">充电器</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电池</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">耳机</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">数据线</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电脑</a></dt>       
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">笔记本</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">平板电脑</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">台式机整机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">显示器</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">鼠标</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">硬盘</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电源</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">U盘</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">闪存卡</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">移动硬盘</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">相机</a></dt>          
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">相机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">镜头</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">单反</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">摄像</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">胶片</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">微单 </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">随声听</a></dt>                  
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">MP3</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">MP4</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">MP5</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">录音笔</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">Wii</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">PSP</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">PS3</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">xbox</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">游戏软件</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>

<li><a>闲置母婴 童装、宝宝用品</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">童装</a></dt>          
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">T恤</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">外套</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">棉袄</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">毛衣</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">羽绒</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">套装</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">童鞋</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">宝宝用品</a></dt>        
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">奶瓶</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">奶嘴</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">婴儿推车</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">婴儿床</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">纸尿裤</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">游泳池</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">学步带</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">尿布</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">湿巾</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">沐浴</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">毛毯</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">婴儿服</a></dt>   
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">哈衣</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">新生儿礼盒</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">肚兜</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">斗篷</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">儿童玩具</a></dt>                       
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">游泳池</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">积木</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">摇铃</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">拼图</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">音乐玩具</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电动玩具</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">智能玩具 </a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手工制作</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">过家家</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>
<li><a>家居日用 家具、家纺、日用</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">家具</a></dt>                    
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">床</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">沙发</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">茶几</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">餐桌</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">椅子</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">衣柜</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">鞋柜</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">床头柜</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">置物架</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">鞋架</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">书架</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">日用日化</a></dt>          
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">毛巾</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">洗衣液</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">洗衣粉</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">伞</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">雨衣</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">垃圾桶</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">家纺家饰</a></dt>            
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">四件套</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">枕头</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">床单</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">被套</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">被子</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">窗帘</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">地毯</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">地垫</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">靠垫</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">桌布</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">家装建材</a></dt>                          
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">台灯</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">壁灯</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">落地灯</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">地板</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">马桶 </a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>

<li><a>影音家电  大家电、小家电</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">大家电</a></dt>                       
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电视机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">洗衣机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">空调</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">冰箱</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">热水器</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">厨房电器</a></dt>              
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">豆浆机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">榨汁机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">酸奶机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">面包机</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">冰淇淋机</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电饭煲</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电炖锅</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">生活家电</a></dt>              
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">吹风机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">剃须刀</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">风扇</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">加湿器</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">挂烫机</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">影音耳机</a></dt>                                 
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">耳机</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">音箱</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">功放</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">低音炮</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">麦克风 </a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">播放器</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">DVD</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">收音机 </a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>

<li><a>鞋服配饰  女装、箱包、配饰</a><span></span> 
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">女装</a></dt>                          
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">连衣裙</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">半身裙</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">T恤</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">衬衫</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">卫衣</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">箱包</a></dt>                
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">女包</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">男包</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">旅行箱</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">女鞋</a></dt>                  
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">运动鞋</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">单鞋</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">皮鞋</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">帆布鞋</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">凉鞋/拖鞋</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">配饰</a></dt>                                      
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">腰带</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">皮带</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">帽子</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">围巾</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">丝巾</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手套</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>
        
<li><a>珠宝收藏  饰品、艺术收藏</a><span></span>
            <div class="submenu">
                <div class="leftdiv">
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">珠宝</a></dt>                              
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">翡翠</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">黄金</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">钻石</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">珍珠</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">碧玺</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">铂金</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">琥珀 </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">饰品</a></dt>                   
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">眼镜</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手链</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">项链</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手镯</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">戒指</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">水晶</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">手表</a></dt>                    
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">机械表</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">石英表</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">电子表</a>
                    </dl>
                    <dl>
                        <dt><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">收藏品</a></dt>                                           
                        <dd>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">古玩</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">邮票</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">钱币</a> <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">和田玉</a>
                            <a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">古玉</a><a href="javascript:void(0);" onclick="searchforkeywords(this.innerHTML);">陶瓷</a>
                        </dd>
                    </dl>
                </div>
            </div>
        </li>        
</ul>
</div>

<div id ="container" style="overflow:hidden;width: 650px;height: 224px;position: relative;margin-left: 30px;float:left;">

<div id="list" style="width:2600px; position: absolute;z-index: 1;left: -650px;">
<img alt="1" src="img/middlephoto2.jpg">
<img alt="1" src="img/middlephoto1.jpg">
<img alt="2" src="img/middlephoto2.jpg">
<img alt="2" src="img/middlephoto1.jpg">
</div>

<div id="buttons">
        <span index="1" class="on"></span>
        <span index="2"></span>
</div>
<a href="javascript:;" id="prev" class="arrow">&lt;</a>
<a href="javascript:;" id="next" class="arrow">&gt;</a>

</div>
<div style="float: left;margin-left: 30px;">
<img src="img/rightphoto.jpg" width="280px;" height="224px;"/>
</div>

</div>
<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#dofefe SIZE=3>

<c:forEach var="product" items="${sessionScope.pageBean.list }">
<label class="productno">【${product.pno }】</label><a href="product_getProduct.action?pno=${product.pno }" target="home_blow" class="ptitle">${product.ptitle }</a><br/>
<div class="product">
类别：<span>${product.keywords }</span>&nbsp;&nbsp;发布地点：${product.publishplace }&nbsp;&nbsp;发布日期：${product.publishdate }

</div>
<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#dofefe SIZE=2>
</c:forEach>

<table border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td align="right">
   <span>第<s:property value="#session.pageBean.currPage" />/<s:property value="#session.pageBean.totalPage" />页</span>
   &nbsp;&nbsp;总共<s:property value="#session.pageBean.totalCount" />条记录
   &nbsp;&nbsp;每页显示<s:property value="#session.pageBean.pageSize" />条
   <span>
   <s:if test="#session.pageBean.currPage > 1">
       <a href="<%=basePath %>product_searchKeyForkeywords.action?currPage=1&searchkey=${sessionScope.searchkey }">[首页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_searchKeyForkeywords.action?currPage=<s:property value="#session.pageBean.currPage-1" />&searchkey=${sessionScope.searchkey }">[上一页]</a>&nbsp;&nbsp;
   </s:if>
   <s:if test="#session.pageBean.currPage < #session.pageBean.totalPage">
       <a href="<%=basePath %>product_searchKeyForkeywords.action?currPage=<s:property value="#session.pageBean.currPage+1" />&searchkey=${sessionScope.searchkey }">[下一页]</a>&nbsp;&nbsp;
       <a href="<%=basePath %>product_searchKeyForkeywords.action?currPage=<s:property value="#session.pageBean.totalPage" />&searchkey=${sessionScope.searchkey }">[尾页]</a>&nbsp;&nbsp;
   </s:if>
   </span>
</td>
</tr>
</table>
</body>
</html>