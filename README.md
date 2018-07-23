# YouLin
JAVA SSH 网上需求互助平台

目 录

1. 绪论	1

1.1.	网上“跳蚤市场”的内容和意义	1

1.2.	网上“跳蚤市场”的特点和呈现方式 	1

1.3.	Java Web简介	1

1.3.1  Java Web的MVC设计模式	2

1.3.2  利用SSH框架开发Java Web项目	3

1.3.3  JavaScript中的Ajax异步通讯	3

1.3.4  前端框架Bootstrap简介	4

1.4.	论文结构 	4

2.	网上“跳蚤市场”的总体设计	5

2.1.	网站实现的功能	5

2.2.	网站的使用流程	6

2.3.	页面之间的关系	7

3.	MySQL数据库的设计	8

3.1. 用户表	8

3.2. 商品表	9

3.3. 商品图片表	10

3.4. 留言板表	11

3.5. 表之间的关联关系	11

4.	模块设计与功能实现	12

4.1.	模块化设计	12

4.1.1  登陆注册模块	12

4.1.2  商品列表模块	14

4.1.3  附近的二手物品模块	16

4.1.4	发布商品模块	17

4.1.5	商品详情模块	18

4.1.6	商品更新维护模块	20

4.1.7	个人中心和信息管理模块	21

4.1.8	留言板模块	23

4.1.9	系统管理员模块	23

4.2.	利用iframe标签整合页面	25

4.3.	焦点图轮播特效的实现	26

4.4.	手机短信验证码的实现	27

4.5.	分类查询、模糊查询以及分页查询	29

4.6.	利用百度地图API实现附近的二手	29

4.7.	AjaxFileUpload上传图片	30

 
1.绪论
1.1网上“跳蚤市场”的内容和意义
“跳蚤市场”在西方被称呼为“flea market”，是一种专门销售旧货的市场。在这个市场中，出售的物品大多是一些旧物，人们将生活中多余的或者交易自己未使用过却过时的物品，从服装衣物到家电汽车，各种各样，种类繁多。同时低廉的价格也让这些物品富有吸引力。但是“跳蚤市场”也有着局限性，比如人们不能直观的找到自己需要的物品，而且不能随时随地的参加。随着“互联网+”概念的提出和网上购物的流行，网上“跳蚤市场”也就应运而生了，这是一种将线上和线下相结合，将传统的地摊式市场过度到互联网平台的一种新型模式。网上“跳蚤市场”继承了传统市场的优点，同时也更加便利了人们的信息共享，方便了人们的生活。

1.2网上“跳蚤市场”的特点和呈现方式
网上“跳蚤市场”不仅继承了传统市场的价格低廉、物品种类齐全的优点，同时又利用了互联网快速又广泛的传播性的特点，实现了信息的共享。在这个网上“跳蚤市场”的平台之上，人与人之间可以随时随地的交换信息，浏览别人发布的旧物信息，搜索查找自己想要的商品，同时也可以将自己的闲置物品发布出去，通过比较低廉的价格来吸引一些有需要的人来购买自己的物品。

网上“跳蚤市场”将采用B/S架构，即浏览器和服务器的结构，随着internet技术的发展，人们无时无刻不在接触着各种各样的网站页面，同时这些网站页面能够给使用的人们带来一种很直观的体验，只需打开浏览器，输上网站的地址，就能够访问形形色色的页面。B/S架构是一种程序项目展现的形式，人们在生活中经常使用浏览器，开发人员写好后台服务逻辑与前台页面的展示效果，将写好的WEB项目发布到服务器上，就能够通过浏览器来浏览和使用页面了。

1.3 Java Web简介
Java语言起源于1995年的sun公司，作为一门面向对象的编程语言，在Java语言看来，一切事物皆对象，不像一些面向过程的编程语言，如C，C++等，Java语言不需要考虑一件事务的发生过程，它只需要知道事务中涉及了哪些对象，对象包含了哪些属性和方法，然后从对象的属性和方法角度来设计即可。Java语言具有很强大的功能，其平台无关性让其能开发出各种各样的软件和应用程序。Java Web就是利用了Java语言来开发Web应用程序，其中可以利用Java的Servlet，JSP和第三方的开发框架等技术来实现一些具体的功能，让编程变的很有趣味性且编程的样式多种多样。

1.3.1 Java Web的MVC设计模式
MVC(Model-View-Controller)设计模式是开发过程中重要的设计模式，它将整个项目的开发分成三个基本部分：Model数据模型层、View视图表现层、Controller逻辑控制层。
 
数据模型层表示的是企业数据和业务规则，在Java Web中体现为与后台数据库交互频繁的实体类。它能够为视图层提供表现的数据，利用数据模型可以为不同的页面提供使用的数据，就可以减少代码的重复性。

视图层是与用户接触最直接的一层，提供了人机交互的界面，在Java Web中可以通过编写JSP、HTML页面来提供视图层，同时通过添加CSS（层叠样式表）、JavaScript（脚本化语言）来丰富页面的表达形式，给用户更好的体验效果。

逻辑控制层相当于核心控制器，通过接收用户的输入，然后将数据递交给对应的业务模型，得到业务模型处理后的数据，在选择需要表达的视图层，呈现给用户。





1.3.2利用SSH框架开发Java Web项目
 
SSH分别代表得的是Spring、Structs、Hibernate。其中Structs负责对MVC开发模式的分离操作，对事务进行跳转控制，Hibernate可以对持久层提供支持，Spring提供了对各个事务的管理，与Structs、Hibernate密切关联。

1.3.3 JavaScript中的Ajax异步通讯
Ajax它是Javascript中一种与后台服务器之间进行异步通讯的工具，我们利用它就能进行一些局部的验证功能而不用整个的去刷新页面，这样做的好处是方便用户在使用时的直接体验以及一些输入数据的维护。
 
使用Ajax的步骤是首先创建XMLHttpRequest对象，如果浏览器不支持则创建ActiveXObject对象。然后当我们需要发送请求到后台服务器时，就可以调用创建对象的open()和send()方法。其中open()方法需要指定请求的类型method，发送给后台服务器的地址url，以及是否异步还是同步的方法，然后利用send（）方法中可以发送需要传递的数据。当根据服务器状态判断请求成功发送并响应之后，就可以根据回调函数来对反馈的信息进行处理。

通过利用ajax，我们可以进行一些页面的局部更新，同时进行一些逻辑判断，同时又不用刷新整个页面，便利了用户的使用效果。

1.3.4前端框架Bootstrap简介
Bootstrap 是一套在Github（分布式版本控制系统）上很热门的开源项目工具集，它整合了很多HTML，CSS以及JavaScript，是很常用的前端页面开发工具。在一个网站的开发过程中，HTML通过一些标签定义了一个网站的文本结构，也就是大概的文本内容，CSS起到了排版美化的作用，让这个网站文本更具有观赏性，Javascript属于脚本控制语言，不仅可以起着逻辑控制的作用，而且能够实现一些动作特效，让页面看上去更加的酷炫。Bootstrap就是一个整合了这些内容，提供了开发样例的模板工具，我们可以利用这些事先写好的样式直接来美化和简化自己的页面开发。

使用Bootstrap的方法非常的简单，只要在开发的项目之中导入相关的所需要的架包，或者通过Bootstrap所提供的链接，在网页中导入外部资源链接，然后就可以使用了。使用的时候，我们可以在写好的对应的HTML标签上加上对应的class属性，就能得到不错的样式体验了。

1.4论文结构
本论文主要介绍网上“跳蚤市场”的设计与实现，阐述了网上“跳蚤市场”的现实意义、特点和呈现的方式，并从开发角度来说明如何开发出一个二手物品交易平台。论文总共分为五章，第一章，从“跳蚤市场”的产生和特点，以及互联网技术的发展，引出网上“跳蚤市场”这一论题，从需求上分析了网上“跳蚤市场”的现实意义与特点，然后从可行性和设计开发 
的角度来介绍了网上“跳蚤市场”的呈现方式，并介绍了一些相关的专业技术。第二章，介绍了网上“跳蚤市场”的总体设计方案，包含了需要实现的功能，以及网站使用和开发的流程，各个网站页面之间是如何关联的。第三章包含了“跳蚤市场”的MySQL数据库的详细设计，还有各个表之间的关联属性。第四章将介绍具体的模块化编程设计，它将系统划分成各个不同的模块，讲诉各个不同模块的实现，以及一些详细功能的实现。第五章，对这次网上“跳蚤市场”的设计总结和反思，以及一些结论。

 
2. 网上“跳蚤市场”的总体设计
我将这个网上“跳蚤市场”命名为“友邻”，有着大家都是友好的邻里，可以互帮互助的含义。接下来我将从网站实现的功能，整个项目网站的使用流程以及各个页面的相互关联来对整个“友邻”进行总体设计分析。
2.1网站实现的功能
经过分析，“友邻”是给用户使用的，按照用户的类型，应该将使用者分为普通用户和系统管理员。对于普通用户来说，首先是注册登陆页面的功能，然后进入主界面后，可以浏览并且搜索“友邻”中自己需要的二手物品功能，找到自己需要的二手物品之后，应该有查看二手商品详细信息的功能，查看详细信息之后，应该有查看发布这条二手物品的发布者的信息的功能，从而能够根据发布者信息找到其联系方式。紧接着如果该用户对商品感兴趣的话，应当有对商品进行留言评价的功能。同时，用户在使用“友邻”时，不仅可以寻找自己需要的二手物品，同时应该可以发布自己的二手物品。在发布自己的二手物品之后，应当有对自己发布的物品的管理维护的功能。然后就是维护用户自己的个人信息的功能，最后因为可能会需要查看在自己周边发布的一些物品，所以有查看附近的二手物品信息的功能。
对于系统管理员用户来说，它属于系统内设账号，它具有着“友邻”的超级权限，所以应该在普通用户的基础上，有着管理所有二手商品和所有用户的功能。
根据自己对网站的功能分析
(1)普通用户
(2)系统管理员
 

2.2网站的使用流程
整个“友邻”系统属于二手物品信息平台，作为一个系统，它将被分为两大主体，一个是用户的登陆注册，另一个部分是进入主界面后的部分。所以对此可以分析出整个系统使用的流程是：
首先进入的是登陆页面，对于系统管理员来说，由于自身是系统内置的已经提前设定好的账号，所以可以直接利用存在的账号密码来登陆。对于普通用户来说，就要进行分情况来处理，如果已经注册了账号可以利用账号密码来登陆系统，如果未申请账号，需要进入注册页面填写注册信息来申请账号,然后就可以利用账号来进行登陆操作，登陆成功后将进入系统的主界面。
在主界面中，首先看到的是列表首页，展示了一些数据库中存储的部分数据，同时可以进行分类查询和标题的模糊搜索来查找用户所需要的相关的二手物品，然后也可以进入“附近的二手”中查看周边的二手物品信息，我将会将周边的范围设定成附近2000米，然后也可以进入“我的闲置”查看自己发布的闲置物品列表，通过点击标题查看自己发布的单个商品的详细信息，在详情页面可以对自己的二手物品进行修改操作，如果想取消发布，也可以对已经发布的商品进行删除操作，然后也可以进入发布二手物品页面发布自己新的二手物品信息。同时也会有个人中心页面，在这个页面里可以选择查看自己的个人信息并且更改自己的部分信息，最后如果想重新登陆，可以通过退出登陆重新进入登陆页面。

 
2.3页面之间的关系      
整个“友邻”网上“跳蚤市场”会包含许许多多的页面，页面之间是相互关联的。对于登陆界面来说，与之具有相互关联关系的页面有注册页面和用户的主页面，在用户的主页面中存在着列表搜索页，附近的二手商品页，发布二手物品页，我的闲置页，个人中心页，如果是管理员则还有商品管理页和用户管理页。当在列表搜索页，附近的二手页，我的闲置页中查看特定的某一个商品时，进入的是商品详情页面，并且在商品详情页面都包含了发布人信息页面，不同的是从我的闲置中进入的详情页可以进入到我的二手商品管理页面，进行信息的修改或者删除发布的二手物品。                                                                                                                                                                                    
 
3 MySQL数据库的设计
在对页面进行总体设计之后，接下来对友邻“网上跳蚤市场”进行详细的设计。首先是数据库方面，我采用的是MySQL数据库语言，管理软件采用的是具有可视化操作的navicat，方便我开发时的维护操作。在数据库表的设计上，我总共设计了4张数据库表，他们分别是用户表（User）、商品表（Product）、商品图片信息表（ProductIntroduceImage）、留言板表（MessageBoard）。在对于生成每张表时，由于我应用了SSH(Spring、Structs、Hibernate)框架，所以我可以使用Hibernate框架来自动生成MySQL数据库表。

对于利用Hibernate框架来自动生成MySQL数据库表的主要方法是，首先在Model模型层中写好对应的实体类，然后生成对应的xml文件，在xml文件中引入Hibernate之后，再在Hibernate的配置文件applicationContext中进行相关操作，操作包含引入外部的连接MySQL数据库的属性文件，然后进行c3p0连接池的相关配置，然后再对Hibernate的属性进行相关的配置，比如注入连接池和配置数据库的方言，最后在加载Hibernate的映射文件配置中写入我们之前写实体类所写好的xml文件。
主要能够自动生成数据库表的方法是利用了配置文件中的数据库方言的<prop key="hibernate.hbm2ddl.auto">update</prop>这样一条属性语句，让它自动创建并更新数据库的相关表结构，从而实现利用写好Java的相关实体类和对应的xml属性文件，就能达到自动生成并更新出相关的我们所需要的数据库表。

3.1 用户表
该表主要用于表示登陆注册“友邻”的用户信息并且对于发布商品时也会用到该表中的相关数据，用户表User的设计，我将加入如下的字段：
Userid：用户id，为用户表的主键，用来唯一区别不同的用户
Username：用户名，即用户登陆友邻网上“跳蚤市场”的账号
Password：登陆密码，即用户登陆友邻网上“跳蚤市场”的密码
Sex：性别，表示用户的性别
Nickname：昵称，用来表示用户在友邻网上“跳蚤市场”的社交称呼
Birthday：生日，用来表示用户的出生日期
Registerday：注册日期，用来表示用户是哪一天注册使用系统的
Phonenubmer： 手机号，用户在注册账号时所使用的手机号码
qqnumber： QQ号，用户的社交联系方式之一
weichat： 微信号，用户的社交联系方式之一
permanentaddress： 常住城市，用来表示用户经常居住的城市
usertype：用户类型，用来判断该用户是普通用户还是系统管理员，有两个值，如果该字段值为1则表示该用户为普通用户，如果值为0则表示该用户为系统管理员。
数据库中该用户表，表名为user
 
对于数据库中表的生成，因为利用了Hibernate来自动生成，所以我先写了一个User的实体类，表中的字段全部都是该类的属性，将属性声明为private的，然后加上其对应的set()和get()方法，然后生成对应的User.hbm.xml，引入对应的User实体类，并在hibernate-mapping中声明其对应的主键userid，以及其他对应的属性，然后在applicationContext.xml配置文件的加载hibernate映射文件mappingResources中引入写好的对应的User.hbm.xml即可完成。

3.2 商品表
该表表示发布的二手物品所包含的一些信息，在列表页，商品详情页等都会用到该表的一些数据，我会在商品表Product的设计中加入如下的字段：
Pid：商品id，每个商品都有属于自己的唯一id
userid：用户id，发布商品者的id，与用户表中的userid相对应
pusername：发布者昵称，发布该条二手商品人的昵称，与用户表的Nickname相对应
pno：商品编号，每个商品发布时，都会自动生成一个属于自己独一无二的商品编号
ptitl：商品标题，是用户在发布二手商品对商品信息的概括总结的标题
keywords：类别，表示所发布的二手商品所属于的具体分类
shortintroduce：简介，对自己发布的商品的简短介绍
publishplace：发布地点，该商品发布时发布者所在的城市
publishdate：发布日期，商品发布的详细日期
contactway：联系方式，默认为发布用户的手机号码
Xplace：经度，发布商品的地理位置之一，经度
Yplace：纬度，发布商品的地理位置之一，纬度
Price：价格，发布商品人希望的商品价格
数据库中该商品表，表名为product
 
与用户表的生成类似，在Java中，我们建立了实体类Product，并写出对了对应的映射文件Product.hbm.xml，然后在applicationContext.xml配置文件的加载hibernate映射文件mappingResources设置中引入写好的对应的Product.hbm.xml。

3.3商品图片表
表示了发布的每一个二手商品所包含的图片的信息。对于商品图片表ProductIntroduceImage的设计，我将加入如下的字段：
Imageid：图片id，每张商品图片唯一id 
Pno：商品编号，与商品表的pno相对应，即表示每张图片所属于的商品的编号
Imagename：图片名称，每张图片的文件名
Imagepath：图片路径，图片在硬盘中的物理路径
Uploaddate：上传时间，每张图片是什么时间上传的
数据库中该商品图片表，表名为productintroduceimage，具体字段的设计如下:
 
在Java中，我们建立了实体类ProductIntroduceImage，上述字段都为该类的属性，并写出对了对应的映射文件ProductIntroduceImage.hbm.xml，在applicationContext.xml配置文件的加载hibernate映射文件mappingResources中引入写好的对应ProductIntroduceImage.hbm.xml。
3.4留言板表
该表用于生成并且记录每个商品表中的留言板的信息，对于留言板表MessageBoard的设计，我将加入如下的字段：
Messageboardid：每条留言信息的id，是独属于每条留言信息的标识标志。
Senderid：发送者id，发送该条留言信息的用户的id，与用户表的userid对应
sendernickname：发送者昵称，发送该条留言信息的用户昵称，与用户表的Nickname对应
sendermessage：发送信息，即每条留言信息的文本信息。
senddate：发送时间，发送该条留言的时间
pno：商品编号，即该条留言属于哪一条商品，与商品表的pno相对应。
receiverid：接收者id，接收该条留言信息的用户的id，与用户表的userid对应
receivernickname：接收者昵称，接收该条留言信息的用户昵称，与用户表的Nickname对应
数据库中该留言板表，表名为messageboard，具体字段的设计如下:
 
在Java中，我们建立了实体类MessageBoard，上述字段都为该类的属性，并写出对了对应的映射文件MessageBoard.hbm.xml，在applicationContext.xml配置文件的加载hibernate映射文件mappingResources中引入写好的对应MessageBoard.hbm.xml。

3.5表之间的关联关系
对于设计好的这四张表，它们之间是有着关联关系的，对于一个用户来说，他可以发布多个商品，所以对应着多个商品，然而每个商品又可以有着多个商品图片和多个留言消息。用户表与商品表之间联系的是userid用户id，商品表与商品描述图片表之间的联系的是pno商品编号。
因为这四张表是用Java的四个实体类的形式产生的

 
4张表之间的关联关系

4模块设计与功能实现

接下来通过不同模块化的设计以及一些具体功能的实现来对“友邻”网上“跳蚤市场”进行详细设计。

4.1模块化设计
模块化的划分之后，我们就能够针对不同的模块来一步一步的实现，避免了面临一整个项目时设计的无序性，通过模块化的编程思想让我们的每一步都有明确的目标，让我们的编程更加的有针对性。

4.1.1登陆注册模块
登陆注册模块是用户进入“友邻”网上“跳蚤市场”后首先接触的模块，当用户想要使用“友邻”网上“跳蚤市场”时，是需要进行登陆操作的，当用户输入用户账号和密码之后，如果错误，则会提示提示错误信息，并重新填写登陆信息。如果没有账号，可以点击注册按钮进入注册页面，注册成功后返回登陆页面，登陆成功后会进入系统。
提示信息的实现，可以使用structs标签的<s:actionerror />来实现，只需要在用户名密码输入
错误的时候，给错误提示信息actionerror赋值即可。

 
 
4.1.2商品列表模块
商品列表模块主要是将数据库中存储的商品数据以列表的形式将数据加载出来，当用户登陆成功时，会去查询数据库，然后加载页面数据。

 
 
4.1.3附近的二手物品模块
每个商品在发布的时候都会留下发布地点的经度和纬度，附近的二手物品模块，就是当用户进入页面时，利用用户当前的登陆地址的经度为和纬度，查询数据库中的所有商品，筛选出两点距离不大于2000米的商品，然后再在前台遍历出来，从而实现显示出附近2000米的商品的目的，前台也会有两点坐标的距离算法，并将结果显示在页面列表中。
 
Java中利用两点坐标的经纬度来计算两点坐标的距离的算法：
public static int getDistanceFromXtoY(String myYplace,String myXplace,String productYplace,String productXplace){
Double pk = 180 / 3.14169;
Double a1 = Double.parseDouble(myYplace) / pk;
Double a2 = Double.parseDouble(myXplace) / pk;
Double b1 = Double.parseDouble(productYplace) / pk;
  
Double t1 = Math.cos(a1) * Math.cos(a2) * Math.cos(b1) * Math.cos(b2);
Double t2 = Math.cos(a1) * Math.sin(a2) * Math.cos(b1) * Math.sin(b2);
Double t3 = Math.sin(a1) * Math.sin(b1);
Double tt = Math.acos(t1 + t2 + t3);
int resultdis = (int) (6366000 * tt);
return resultdis;}

利用计算距离的算法，查询数据库中的商品数据来筛选出符合距离小于2000米的数据：

public List<Product> totalArroundProducts(String myYplace,String myXplace,List<Product> totalproduct){
 
if(totalproduct.size()>0){
for(int i=0;i<totalproduct.size();i++){
Yplace = totalproduct.get(i).getYplace();
Xplace = totalproduct.get(i).getXplace();
if(ArroundUtil.getDistanceFromXtoY(myYplace, myXplace, Yplace, Xplace)<=arrounddis){
arroundproductlist1.add(totalproduct.get(i));
}}}

将得到的结果传到前台并且再次利用距离算法算出距离遍历显示效果如下： 

4.1.4发布商品模块
发布商品模块就是用户发布二手物品信息的页面，前台将填好数据的<form>表单，提交到后台服务器，后台服务器将前台传来的数据保存到数据库的商品表中，然后重新查询数据库，显示新的列表页，发布商品模块的程序流程图如下：

 
4.1.5商品详情模块
当用户点击列版模块中的商品标题时，会进入商品详情页，查看商品的详细信息。主要实现的原理是，当用户点击某个商品的标题时候，会进入后台查询的方法，同时传递的参数是商品的编号，因为每个商品都有自己的唯一编号，然后根据编号就可以得到具体的某个商品的信息，然后在在前台显示出来就行了，对于商品详情模块的主要流程

Java中查询某个具体商品的代码如下：
public Product getProduct(String pno) {
	Product pro = null;
 	if(null!=list&&list.size()>0){
	pro = list.get(0);}return pro;}
public String getProduct(){
	Product pro = productService.getProduct(product.getPno());
	List<ProductIntroduceImage> imagelist = productIntroduceImageService.getProductImages(product.getPno());
	List<MessageBoard> messagelist = messageboardService.getMessageBoard(product.getPno());
 在前台页面也是使用EL表达式来读取数据的，格式如${sessionScope.Product..xxx}


 
4.1.6商品更新维护模块
商品更新维护模块就是可以将自己发布的商品，进行编辑更新信息或者通过删除商品来取消发布二手商品，主要流程包含从我的闲置中读取具体的某一个商品，然后通过详情页中的编辑商品按钮进入更新维护页中，更新维护页首先会加载原来的数据，然后用户可以在原来的数据上进行更改从而进行更新维护操作。然而同时也可以通过删除商品按钮来直接删除掉该商品。

 
Java代码实现：
根据userid筛选出我的闲置物品列表：
public String searchForUserId(){
 }
public List<Product> searchByUserid(int begin, int pageSize, Integer userid) {
 }
得到单个我的物品后更新删除商品：

 
4.1.7个人中心和信息管理模块
个人中心和信息管理模块和商品的更新模块类似，区别是一个对商品的操作，一个是对用户的信息的维护，主要流程是获取用户信息，然后更新用户信息到数据库。

 
4.1.8留言板模块
留言班主要是一个功能模块，用户可以在每个商品后面进行留言。发布留言其实就是在数据库留言板表中插入一条新的数据,实现留言板功能的主要Java代码：

 
4.1.9系统管理员模块
当用户登陆成功之后会usertype字段来判断登陆用户的类型，如果是系统管理员，除了基本的使用本系统之外，还可以进行用户管理和商品管理的操作
 
 
4.2 利用iframe标签整合页面
通过对“友邻”网上“跳蚤市场”的设计分析可以知道，整个系统会包含很多的页面，所以我会使用iframe框架来整合不同的页面，iframe是HTML标签中一个专门用来整合不同页面的一个标签，我准备将用户使用界面划分为上下两个部分，上半部分作为导航页来使用，包含的功能有：进入首页、查看附近的二手物品、查看我的闲置、发布二手闲置、搜索框以及系统管理员功能、退出登陆返回登陆页面，查看个人中心。对于页面的下半部分，主要的功能就是显示列表页以及一些具体的详情页面，比如商品详情页，个人信息页等。

对于具体的实现方法是：
在页面的<body>标签内加上<iframe>标签：
	
<iframe src="frame/home_top.jsp"/>
<iframe id="home_blow" name="home_blow"  src="frame/home_blow.jsp" />

iframe标签的scr指向具体的页面资源，所以我们在使用后的方法之后得到了相关的数据，然后通过改变iframe的src来实现跳转到不同的页面的视觉体验，在跳转的时候，上方的导航部分可以保持不变，给人一种局部刷新页面的体验，也简化了页面的编程代码。

4.3 焦点图轮播特效的实现
有时候我们在一些页面的主页经常可以看见一些自动切换的图片，鼠标放在图片上时，自动切换效果消失，然后会出现向左和向右的按钮，或者下方的小焦点，点击后也可以让图片发生切换的效果，这种页面特效叫做焦点图轮播。在页面中加入焦点图轮播特效，让原本简单静态的页面富有了活力，给用户一种赏心悦目的感觉，让用户在使用系统时有了更好的体验效果。

对于焦点图轮播特效的实现原理其实很简单，简单的来说就是设置一定大小的可见的矩形区域，在这个矩形区域中使用<img>标签插入图片，图片的长和框设定为与矩形区域相同的长和宽，把自己事先准备好的图片与这个矩形区域在同一个高度上首尾横向并排排列。开始的时候显示的是第一张图片，图片有个属性是left，表示当前图片与左边的距离，我们通过使用JavaScript脚本来改变当前图片的left值，让当前图片左移或者右移一个图片的长度，那么它旁边的图片就会向左或者向右浮动一个图片的长度，然后就实现了切换图片的功能，然后我们可以利用JavaScript中的定时器setTimeout()或者setInterval()方法来让这个切换动作自动播放即可，再加上一些细节的处理，即可实现焦点图轮播。

其中主要的JavaScript方法是：

   function go(){ if ( (speed > 0 && parseInt(list.style.left) < left) || (speed < 0 && parseInt(list.style.left) > left)) {
list.style.left = parseInt(list.style.left) + speed + 'px';
setTimeout(go, inteval);
} else{animated = false;list.style.left = left+'px';
if(parseInt(list.style.left)>-650){
list.style.left = -1300+'px';}
if(parseInt(list.style.left)<-1300){
list.style.left = -650+'px';}}}

触发的事件有：onclick()鼠标的点击事件、onmouseover()鼠标经过时的事件、onmouseout()鼠标离开时的事件。

 
4.4 手机短信验证码的实现
在注册账号的时候，我们经常会用到手机短信验证码的功能，加上了手机短信验证码，在一定程度上可以起着防止有人恶意注册的目的。对于手机短信验证码的实现，我是这样做的，首先现在本地生成随机的验证码，然后将验证码通过第三方短信平台发送到我们所填写的手机号上，然后将用户填写的验证码与我们随机产生的验证码进行判断，如果一致，才能进行注册的功能，同时可以利用定时器setTimeout()方法制作1分钟倒计时效果，在倒计时期间，另按钮的disabled属性为true,这样实现让注册者每隔一分钟之后才能继续发送验证码。

第三方的验证码平台，我使用的是互亿无线的短信验证码平台，我们需要如下的信息：
Account:我们在互亿无线注册后所拥有的APIID
Password: 我们在互亿无线注册后所拥有的APIKEY
Mobile:需要发送到的手机号
Content:短信内容，即每条验证码发送到指定手机号上的内容格式。
url:需要提交的链接，为“ http://106.ihuyi.com/webservice/sms.php”
method:所使用的方法


利用JavaScript的随机数生成随机验证码

for(var i=0;i<4;i++) 
{ var Num+=Math.floor(Math.random()*10); }



利用Ajax的异步通讯将我们生成的随机验证码发送到用户留下的手机号上
 
xmlhttp.open("POST","http://106.ihuyi.com/webservice/sms.php?method=Submit&account=APIID&password=APIKEY&mobile="+phonenubmer+"&content=您的验证码是："+Num+"。请不要把验证码泄露给其他人。",true);
xmlhttp.send();
}
};
 

 
4.4 分类查询、模糊查询以及分页查询
分类查询：即首页中根据商品的分类来查询某一个类别下的商品，利用了数据库的查询语句来进行精确查询，实现MySQL语句为 
模糊查询：利用了通过搜索商品标题来进行模糊查询，查找商品标题中包含搜索关键字的商品，其中实现的MySQL语句为 
分页查询：对于分页查询的实现，我是先在Java定义了一个PageBean的类，该类包含当前页currPage、每一页的大小pageSize、总数量totalCount、总页数totalPage以及一个list集合才存放对象的集合。List集合的获取也是通过数据库的查询语句来实现的，这里在Java中，因为我使用了Hibernate框架，可以通过使用如下代码来获得包含一页大小数量的list：
 然后前台将PageBean遍历出来即可，效果图如下： 
 
4.5 利用百度地图API实现附近的二手
在附近的二手中，我加入了百度地图的功能，这里我采用的是百度地图的JavaSript官方API
使用时，我们需要在页面的<head>内引入百度地图提供的外部连接：
	
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=产品秘钥"></script>
 
4.6 AjaxFileUpload上传图片
在发布商品时，可以上传图片，这里我采用的是AjaxFileUpload来进行图片的上传操作，首先我在Java后台写了一个FileuploadServlet类来进行文件的创建工作，它从AjaxFileUpload发来的文件获取文件流。其实它主要也是用了Ajax的异步通讯来进行异步的上传，后台的FileuploadServlet类主要用了File类来进行文件的上传操作。
