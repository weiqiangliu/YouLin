var groups=document.isc.example.options.length 
var group=new Array(groups) 
for (I=0; I<groups; I++) 
group[I]=new Array() 
group[0][0]=new Option("-请选择类别-"," "); 
group[1][0]=new Option("-请选择类别-"," "); 
group[1][1]=new Option("手机","手机"); 
group[1][2]=new Option("电脑","电脑"); 
group[1][3]=new Option("相机","相机");
group[1][4]=new Option("随声听","随声听");
group[2][0]=new Option("-请选择类别-"," "); 
group[2][1]=new Option("童装","童装"); 
group[2][2]=new Option("宝宝用品","宝宝用品");
group[2][3]=new Option("婴儿服","婴儿服");
group[2][4]=new Option("儿童玩具","儿童玩具"); 
group[3][0]=new Option("-请选择类别-"," "); 
group[3][1]=new Option("家具","家具"); 
group[3][2]=new Option("日用日化","日用日化");
group[3][3]=new Option("家纺家饰","家纺家饰");
group[3][4]=new Option("家装建材","家装建材");
group[4][0]=new Option("-请选择类别-"," "); 
group[4][1]=new Option("大家电","大家电"); 
group[4][2]=new Option("厨房电器","厨房电器");
group[4][3]=new Option("生活家电","生活家电");
group[4][4]=new Option("影音耳机","影音耳机"); 
group[5][0]=new Option("-请选择类别-"," "); 
group[5][1]=new Option("女装","女装"); 
group[5][2]=new Option("箱包","箱包");
group[5][3]=new Option("女鞋","女鞋");
group[5][4]=new Option("配饰","配饰");  
group[6][0]=new Option("-请选择类别-"," "); 
group[6][1]=new Option("珠宝","珠宝"); 
group[6][2]=new Option("饰品","饰品");
group[6][3]=new Option("手表","手表");
group[6][4]=new Option("收藏品","收藏品"); 
var temp=document.isc.stage2 
function redirect(x){ 
for (m=temp.options.length-1;m>0;m--) 
temp.options[m]=null 
for (I=0;I<group[x].length;I++){ 
temp.options[I]=new Option(group[x][I].text,group[x][I].value) 
} 
temp.options[0].selected=true 
redirect1(0) 
} 
var secondGroups=document.isc.stage2.options.length 
var secondGroup=new Array(groups) 
for (I=0; I<groups; I++) { 
secondGroup[I]=new Array(group[I].length) 
for (j=0; j<group[I].length; j++) { 
secondGroup[I][j]=new Array() }} 
secondGroup[0][0][0]=new Option("-请选择类别-"," "); 
secondGroup[1][0][0]=new Option("-请选择类别-"," "); 
secondGroup[1][1][0]=new Option("-请选择类别-"," "); 
secondGroup[1][1][1]=new Option("手机","手机"); 
secondGroup[1][1][2]=new Option("手机壳","手机壳"); 
secondGroup[1][1][3]=new Option("充电器","充电器"); 
secondGroup[1][1][4]=new Option("电池","电池");
secondGroup[1][1][5]=new Option("耳机","耳机");
secondGroup[1][1][6]=new Option("数据线","数据线"); 
secondGroup[1][2][0]=new Option("-请选择类别-"," ");
secondGroup[1][2][1]=new Option("笔记本","笔记本"); 
secondGroup[1][2][2]=new Option("平板电脑","平板电脑"); 
secondGroup[1][2][3]=new Option("台式机整机","台式机整机"); 
secondGroup[1][2][4]=new Option("显示器","显示器"); 
secondGroup[1][2][5]=new Option("鼠标","鼠标"); 
secondGroup[1][2][6]=new Option("硬盘","硬盘"); 
secondGroup[1][2][7]=new Option("电源","电源"); 
secondGroup[1][2][8]=new Option("U盘","U盘"); 
secondGroup[1][2][9]=new Option("闪存卡","闪存卡"); 
secondGroup[1][2][10]=new Option("移动硬盘","移动硬盘"); 
secondGroup[1][3][0]=new Option("-请选择类别-"," "); 
secondGroup[1][3][1]=new Option("相机","相机"); 
secondGroup[1][3][2]=new Option("镜头","镜头"); 
secondGroup[1][3][3]=new Option("单反","单反"); 
secondGroup[1][3][4]=new Option("摄像","摄像"); 
secondGroup[1][3][5]=new Option("胶片","胶片"); 
secondGroup[1][3][6]=new Option("微单","微单");
secondGroup[1][4][0]=new Option("-请选择类别-"," ");        
secondGroup[1][4][1]=new Option("MP3","MP3");  
secondGroup[1][4][2]=new Option("MP4","MP4"); 
secondGroup[1][4][3]=new Option("MP5","MP5"); 
secondGroup[1][4][4]=new Option("录音笔","录音笔"); 
secondGroup[1][4][5]=new Option("Wii","Wii"); 
secondGroup[1][4][6]=new Option("PSP","PSP"); 
secondGroup[1][4][7]=new Option("PS3","PS3"); 
secondGroup[1][4][8]=new Option("xbox","xbox"); 
secondGroup[1][4][9]=new Option("游戏软件","游戏软件");
secondGroup[2][0][0]=new Option("-请选择类别-"," "); 
secondGroup[2][1][0]=new Option("-请选择类别-"," "); 
secondGroup[2][1][1]=new Option("T恤","T恤"); 
secondGroup[2][1][2]=new Option("外套","外套"); 
secondGroup[2][1][3]=new Option("棉袄","棉袄"); 
secondGroup[2][1][4]=new Option("毛衣","毛衣"); 
secondGroup[2][1][5]=new Option("羽绒","羽绒"); 
secondGroup[2][1][6]=new Option("套装","套装"); 
secondGroup[2][1][7]=new Option("童鞋","童鞋");
secondGroup[2][2][0]=new Option("-请选择类别-"," ");           
secondGroup[2][2][1]=new Option("奶瓶","奶瓶"); 
secondGroup[2][2][2]=new Option("奶嘴","奶嘴"); 
secondGroup[2][2][3]=new Option("婴儿推车","婴儿推车"); 
secondGroup[2][2][4]=new Option("婴儿床","婴儿床"); 
secondGroup[2][2][5]=new Option("纸尿裤","纸尿裤"); 
secondGroup[2][2][6]=new Option("游泳池","游泳池"); 
secondGroup[2][2][7]=new Option("学步带","学步带"); 
secondGroup[2][2][8]=new Option("尿布","尿布"); 
secondGroup[2][2][9]=new Option("湿巾","湿巾"); 
secondGroup[2][2][10]=new Option("沐浴","沐浴"); 
secondGroup[2][2][11]=new Option("毛毯","毛毯"); 
secondGroup[2][3][0]=new Option("-请选择类别-"," ");           
secondGroup[2][3][1]=new Option("哈衣","哈衣"); 
secondGroup[2][3][2]=new Option("新生儿礼盒","新生儿礼盒");
secondGroup[2][3][3]=new Option("肚兜","肚兜");
secondGroup[2][3][4]=new Option("斗篷","斗篷");         
secondGroup[2][4][0]=new Option("-请选择类别-"," ");           
secondGroup[2][4][1]=new Option("游泳池","游泳池");
secondGroup[2][4][2]=new Option("积木","积木");
secondGroup[2][4][3]=new Option("摇铃","摇铃");
secondGroup[2][4][4]=new Option("拼图","拼图");
secondGroup[2][4][5]=new Option("音乐玩具","音乐玩具");
secondGroup[2][4][6]=new Option("电动玩具","电动玩具");
secondGroup[2][4][7]=new Option("智能玩具","智能玩具");
secondGroup[2][4][8]=new Option("手工制作","手工制作");
secondGroup[2][4][9]=new Option("过家家","过家家");
secondGroup[3][0][0]=new Option("-请选择类别-"," "); 
secondGroup[3][1][0]=new Option("-请选择类别-"," ");           
secondGroup[3][1][1]=new Option("床","床");
secondGroup[3][1][2]=new Option("沙发","沙发");
secondGroup[3][1][3]=new Option("茶几","茶几");
secondGroup[3][1][4]=new Option("餐桌","餐桌");
secondGroup[3][1][5]=new Option("椅子","椅子");
secondGroup[3][1][6]=new Option("衣柜","衣柜");
secondGroup[3][1][7]=new Option("鞋柜","鞋柜");
secondGroup[3][1][8]=new Option("床头柜","床头柜");
secondGroup[3][1][9]=new Option("置物架","置物架");
secondGroup[3][1][10]=new Option("鞋架","鞋架");
secondGroup[3][1][11]=new Option("书架","书架");
secondGroup[3][2][0]=new Option("-请选择类别-"," ");           
secondGroup[3][2][1]=new Option("毛巾","毛巾");
secondGroup[3][2][2]=new Option("洗衣液","洗衣液");
secondGroup[3][2][3]=new Option("洗衣粉","洗衣粉");
secondGroup[3][2][4]=new Option("伞","伞");
secondGroup[3][2][5]=new Option("雨衣","雨衣");
secondGroup[3][2][6]=new Option("垃圾桶","垃圾桶");
secondGroup[3][3][0]=new Option("-请选择类别-"," ");           
secondGroup[3][3][1]=new Option("四件套","四件套");
secondGroup[3][3][2]=new Option("枕头","枕头");
secondGroup[3][3][3]=new Option("床单","床单");
secondGroup[3][3][4]=new Option("被套","被套");
secondGroup[3][3][5]=new Option("被子","被子");
secondGroup[3][3][6]=new Option("窗帘","窗帘");
secondGroup[3][3][7]=new Option("地毯","地毯");
secondGroup[3][3][8]=new Option("地垫","地垫");
secondGroup[3][3][9]=new Option("靠垫","靠垫");
secondGroup[3][3][10]=new Option("桌布","桌布");
secondGroup[3][4][0]=new Option("-请选择类别-"," ");          
secondGroup[3][4][1]=new Option("台灯","台灯");
secondGroup[3][4][2]=new Option("壁灯","壁灯");
secondGroup[3][4][3]=new Option("落地灯","落地灯");
secondGroup[3][4][4]=new Option("地板","地板");
secondGroup[3][4][5]=new Option("马桶","马桶");  
secondGroup[4][0][0]=new Option("-请选择类别-"," ");     
secondGroup[4][1][0]=new Option("-请选择类别-"," ");          
secondGroup[4][1][1]=new Option("电视机","电视机");
secondGroup[4][1][2]=new Option("洗衣机","洗衣机");
secondGroup[4][1][3]=new Option("空调","空调");
secondGroup[4][1][4]=new Option("冰箱","冰箱");
secondGroup[4][1][5]=new Option("热水器","热水器");       
secondGroup[4][2][0]=new Option("-请选择类别-"," ");          
secondGroup[4][2][1]=new Option("豆浆机","豆浆机");
secondGroup[4][2][2]=new Option("榨汁机","榨汁机");
secondGroup[4][2][3]=new Option("酸奶机","酸奶机");
secondGroup[4][2][4]=new Option("面包机","面包机");
secondGroup[4][2][5]=new Option("冰淇淋机","冰淇淋机");
secondGroup[4][2][6]=new Option("电饭煲","电饭煲");
secondGroup[4][2][7]=new Option("电炖锅","电炖锅");
secondGroup[4][3][0]=new Option("-请选择类别-"," ");              
secondGroup[4][3][1]=new Option("吹风机","吹风机");
secondGroup[4][3][2]=new Option("剃须刀","剃须刀");
secondGroup[4][3][3]=new Option("风扇","风扇");
secondGroup[4][3][4]=new Option("加湿器","加湿器");
secondGroup[4][3][5]=new Option("挂烫机","挂烫机");
secondGroup[4][4][0]=new Option("-请选择类别-"," ");                     
secondGroup[4][4][1]=new Option("耳机","耳机");
secondGroup[4][4][2]=new Option("音箱","音箱");
secondGroup[4][4][3]=new Option("功放","功放");
secondGroup[4][4][4]=new Option("低音炮","低音炮");
secondGroup[4][4][5]=new Option("麦克风","麦克风");
secondGroup[4][4][6]=new Option("播放器","播放器");
secondGroup[4][4][7]=new Option("DVD","DVD");
secondGroup[4][4][8]=new Option("收音机","收音机");
secondGroup[5][0][0]=new Option("-请选择类别-"," ");     
secondGroup[5][1][0]=new Option("-请选择类别-"," ");              
secondGroup[5][1][1]=new Option("连衣裙","连衣裙");
secondGroup[5][1][2]=new Option("半身裙","半身裙");
secondGroup[5][1][3]=new Option("T恤","T恤");
secondGroup[5][1][4]=new Option("衬衫","衬衫");
secondGroup[5][1][5]=new Option("卫衣","卫衣");
secondGroup[5][2][0]=new Option("-请选择类别-"," ");               
secondGroup[5][2][1]=new Option("女包","女包");
secondGroup[5][2][2]=new Option("男包","男包");
secondGroup[5][2][3]=new Option("旅行箱","旅行箱");
secondGroup[5][3][0]=new Option("-请选择类别-"," ");              
secondGroup[5][3][1]=new Option("运动鞋","运动鞋");
secondGroup[5][3][2]=new Option("单鞋","单鞋");
secondGroup[5][3][3]=new Option("皮鞋","皮鞋");
secondGroup[5][3][4]=new Option("帆布鞋","帆布鞋");
secondGroup[5][3][5]=new Option("凉鞋/拖鞋","凉鞋/拖鞋 ");
secondGroup[5][4][0]=new Option("-请选择类别-"," ");              
secondGroup[5][4][1]=new Option("腰带","腰带");
secondGroup[5][4][2]=new Option("皮带","皮带");
secondGroup[5][4][3]=new Option("帽子","帽子");
secondGroup[5][4][4]=new Option("围巾","围巾");
secondGroup[5][4][5]=new Option("丝巾","丝巾");
secondGroup[5][4][6]=new Option("手套","手套");
secondGroup[6][0][0]=new Option("-请选择类别-"," ");          
secondGroup[6][1][0]=new Option("-请选择类别-"," "); 
secondGroup[6][1][1]=new Option("翡翠","翡翠");
secondGroup[6][1][2]=new Option("黄金","黄金");
secondGroup[6][1][3]=new Option("钻石","钻石");
secondGroup[6][1][4]=new Option("珍珠","珍珠");
secondGroup[6][1][5]=new Option("碧玺","碧玺");
secondGroup[6][1][6]=new Option("铂金","铂金");
secondGroup[6][1][7]=new Option("琥珀","琥珀");
secondGroup[6][2][0]=new Option("-请选择类别-"," "); 
secondGroup[6][2][1]=new Option("眼镜","眼镜");
secondGroup[6][2][2]=new Option("手链","手链");
secondGroup[6][2][3]=new Option("项链","项链");
secondGroup[6][2][4]=new Option("手镯","手镯");
secondGroup[6][2][5]=new Option("戒指","戒指");
secondGroup[6][2][6]=new Option("水晶","水晶");
secondGroup[6][3][0]=new Option("-请选择类别-"," "); 
secondGroup[6][3][1]=new Option("机械表","机械表");
secondGroup[6][3][2]=new Option("石英表","石英表");
secondGroup[6][3][3]=new Option("电子表","电子表");
secondGroup[6][4][0]=new Option("-请选择类别-"," "); 
secondGroup[6][4][1]=new Option("古玩","古玩");
secondGroup[6][4][2]=new Option("邮票","邮票");
secondGroup[6][4][3]=new Option("钱币","钱币");
secondGroup[6][4][4]=new Option("和田玉","和田玉");
secondGroup[6][4][5]=new Option("古玉","古玉");
secondGroup[6][4][6]=new Option("陶瓷","陶瓷");

var temp1=document.isc.stage3 
function redirect1(y){ 
document.getElementById("keywords").value=temp.options[temp.selectedIndex].value;	
for (m=temp1.options.length-1;m>0;m--) 
temp1.options[m]=null 
for (I=0;I<secondGroup[document.isc.example.options.selectedIndex][y].length;I++){ 
temp1.options[I]=new Option(secondGroup[document.isc.example.options.selectedIndex][y][I].text,secondGroup[document.isc.example.options.selectedIndex][y][I].value) 
} 
temp1.options[0].selected=true 
} 
function redirect2(z){ 
document.getElementById("keywords").value=temp1.options[temp1.selectedIndex].value;
} 