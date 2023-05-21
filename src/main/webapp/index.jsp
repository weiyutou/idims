<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:forward page="/admin/login.jsp"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>呵呵，是一种乐观的人生态度</title>
    <link rel="icon" href="icon/H.png">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/donghua.css">
</head>

<body>
<!-- 登录注册容器 -->
<div class="denglubox">
    <div class="form-box">
        <!-- 注册 -->
        <div class="register-box hidden">
            <h1>register</h1>
            <input type="text" placeholder="用户名" id="username2">
            <input type="email" placeholder="邮箱" id="email2">
            <input type="text" placeholder="电话号码" id="phone2">
            <input type="password" placeholder="密码" id="password2">
            <button id="qued2" onclick="qued2()">注册</button>
        </div>
        <!-- 登录 -->
        <div class="login-box">
            <h1>login</h1>
            <input type="text" name="username" id="username" placeholder="用户名">
            <input type="password" name="password" id="password" placeholder="密码">
            <button id="a2">登录</button>
        </div>
    </div>
    <div class="con-box left">
        <img src="img/cat1.jpg" alt="">
        <p>已有账号</p>
        <button id="login">去登录</button>
    </div>
    <div class="con-box right">
        <img src="img/cat1.jpg" alt="">
        <p>没有账号？</p>
        <button id="register">去注册</button>
    </div>
</div>

<!-- 视频拟态框 -->
<div class="ship1">
    <video src="video/ship1.mp4" controls="controls" id="v1"></video>
</div>
<div class="ship2">
    <video src="video/ship2.mp4" controls="controls" id="v2"></video>
</div>
<div class="ship3">
    <video src="video/ship3.mp4" controls="controls" id="v3"></video>
</div>
<div class="ship4">
    <video src="video/ship4.mp4" controls="controls" id="v4"></video>
</div>
<div class="ship5">
    <video src="video/ship5.mp4" controls="controls" id="v5"></video>
</div>
<div class="ship6">
    <video src="video/ship6.mp4" controls="controls" id="v6"></video>
</div>
<!-- 黑色遮罩 -->
<div class="bc" onclick="ccc()"></div>
<!-- 导航栏 -->
<div class="nav">
    <!-- 注销登录机关 -->
    <div id="denglu" onclick="tui()">
    </div>
    <!-- 宽度1200px 好看 -->
    <div class="eight">
        <div class="nav_left">
            <ul>
                <li><a href="index.html">首页</a></li>
                <li class="fx"><a href="">发现</a></li>
                <li><a href="404.html">HeHe一下</a></li>
                <li><a href="404.html">Nobook没文化创意</a></li>
            </ul>
        </div>
        <div class="nav_mid">
            <a>
                <h1>He^2.</h1>
            </a>
        </div>
        <div class="nav_right">
            <div class="nav_right_xiao">
                <!-- <div class="dark">
                    <a href=""><img src="img/moon月亮.png" alt="" onclick="dark()"></a>
                </div> -->
                <div id="btnbox">
                    <div class="ooo"><a href="javascript:;" style="list-style-type: none;text-decoration: none;" id="mdfk">登录/注册</a></div>
                </div>
                <div class="mobi">
                    <a href="404.html"><img src="img/shouji.png" alt=""></a>
                    <!-- <ul class="weixindd">
                        <div><img src="img/WEIXINDD.png" height="300px" alt=""></div>
                    </ul> -->
                </div>
                <div class="search">
                    <a href=""><img src="img/搜索.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="main">
    <div class="fk">
        <div class="fk_first">
            <!-- 左右结构 -->
            <div class="gun"><br>
                <div class="lunbotu">
                    <div class="shell">
                        <ul class="images">
                            <li class="img"><a href="#">怕晒摆烂、emo、网抑云……你是哪一种“丧”模式？ | mememurmur</a></li>
                            <li class="img"><a href="#">牛羊必须“付费打嗝”；新东方的直播带货，真的绝；包容性营销不灵了？</a></li>
                            <li class="img"><a href="#">怕晒太阳的我们，该去何处寻找一个藏身之所丨友好城市大挑战</a></li>
                        </ul>
                        <ul class="min-images">
                            <li class="min"></li>
                            <li class="min"></li>
                            <li class="min"></li>
                        </ul>
                        <div class="button" style="color: white;">
                            <div class="button-left" style="color: white;"><</div>
                            <div class="button-right" style="color: white;">></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="twob"><br>
                <!-- 上下结构 -->
                <div class="twob_two"><a href=""><img src="images/lundundaqiao.webp" alt="" width="267.83px" height="270px"></a></div>
                <div class="twob_two"><a href=""><img src="images/yijia.webp" alt="" width="267.63px" height="270px"></a></div>
            </div>
        </div>
        <!-- 过渡用的 -->
        <div class="fk_guodu">
            &nbsp    谭维维&GAI周延——剑拔弩张(《永劫无间》职业联赛主题曲)
            <!-- <div class="guodu_left">谭维维&GAI周延——剑拔弩张(《永劫无间》职业联赛主题曲)</div> -->
            <a href="https://music.163.com/song?id=1951702375&userid=1423608324" target="_blank">立即围观></a>
        </div>
        <!-- 第二页 -->
        <div class="fk_se">
            <div class="tuijiantitle">
                <div class="tuijiantitleleft">
                    He's Pick 呵呵推荐<a href="more.html" style="font-size: 18px;">查看更多>></a>
                </div>
                <!-- <div class="tuijiantitleright"><p>阅读更多>></p></div> -->
            </div>
            <div class="list">
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/nvwang.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">女王</div>
                    <div class="shuaia">王室</div>
                    <div class="shuaia">白金汉宫</div><br>
                    <div class="shuaititle">英女王登基70周年，品牌们各出奇招齐来庆祝</div>
                    <div class="shuaimiaoshu">王室庆典是一门好生意。</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by鲸鱼</div>
                    <div class="shuaib">0 收藏</div>
                    <div class="shuaib">12 评论</div>
                    <div class="shuaib">27 赞</div>
                </div>
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/nibushi.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">Google</div>
                    <div class="shuaia">科技</div>
                    <div class="shuaia">眼神</div><br>
                    <div class="shuaititle">你不是我的用户，但你依旧可以认同我的广告</div>
                    <div class="shuaimiaoshu">Google这波“眼神杀”，你学会了吗。</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by 毛毛.G</div>
                    <div class="shuaib">1 收藏</div>
                    <div class="shuaib">1 评论</div>
                    <div class="shuaib">13 赞</div>
                </div>
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/yun.jpg" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">MIUI</div>
                    <div class="shuaia">云控</div>
                    <div class="shuaia">Joyose</div><br>
                    <div class="shuaititle">云控或许会迟到，但永远不会忘记控制你的手机</div>
                    <div class="shuaimiaoshu">我靠，有脏东西</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by派大宝</div>
                    <div class="shuaib">765 收藏</div>
                    <div class="shuaib">664 评论</div>
                    <div class="shuaib">1282 赞</div>
                </div>
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/lundundaqiao.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">儿歌</div>
                    <div class="shuaia">歌词</div>
                    <div class="shuaia">伦敦大桥</div><br>
                    <div class="shuaititle">为什么伦敦大桥垮下来了？｜You Know What</div>
                    <div class="shuaimiaoshu">看起来人畜无害的儿童竟如此“黑暗”。</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by鲸鱼</div>
                    <div class="shuaib">66 收藏</div>
                    <div class="shuaib">137 评论</div>
                    <div class="shuaib">220 赞</div>
                </div>
            </div>
            <div class="list">
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/muji.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">监狱酒店</div>
                    <div class="shuaia">旧改</div>
                    <div class="shuaia">四季酒店</div><br>
                    <div class="shuaititle">MUJI爱而不得的监狱酒店，怎么成了一桩热门生意？</div>
                    <div class="shuaimiaoshu">外面的人想进来，里面的人想出去</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by 緑midori</div>
                    <div class="shuaib">18 收藏</div>
                    <div class="shuaib">66 评论</div>
                    <div class="shuaib">110 赞</div>
                </div>
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/jeep.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">Jeep</div>
                    <div class="shuaia">越野</div>
                    <div class="shuaia">探险</div><br>
                    <div class="shuaititle">仔细看看Jeep车头，你能看见什么？</div>
                    <div class="shuaimiaoshu">刻在品牌DNA里的自然天性。</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by鲸鱼</div>
                    <div class="shuaib">59 收藏</div>
                    <div class="shuaib">12 评论</div>
                    <div class="shuaib">109 赞</div>
                </div>
                <div class="shuai">
                    <a href="more/wyy.html"><img src="images/xmly.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">喜马拉雅</div>
                    <div class="shuaia">针松</div>
                    <div class="shuaia">植物</div><br>
                    <div class="shuaititle">用喜马拉雅山巅的松针丛，收纳我的快乐与悲伤</div>
                    <div class="shuaimiaoshu">你的发量不会还没它多吧？</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by羊肉汤</div>
                    <div class="shuaib">23 收藏</div>
                    <div class="shuaib">78 评论</div>
                    <div class="shuaib">235 赞</div>
                </div>
                <div class="shuai">
                    <a href="404.html"><img src="images/kedaya.webp" width="278px" height="190px" alt=""></a>
                    <div class="shuaia">社交</div>
                    <div class="shuaia">笑料</div>
                    <div class="shuaia">艺术家</div><br>
                    <div class="shuaititle">和丑东西们的设计师聊了聊，我才明白可达鸭为什么突然这么火</div>
                    <div class="shuaimiaoshu">难道单押也算押？</div>
                    <div class="shuaihengxian"></div>
                    <div class="shuaizuozhe">by昌圈圈仔</div>
                    <div class="shuaib">59 收藏</div>
                    <div class="shuaib">12 评论</div>
                    <div class="shuaib">109 赞</div>
                </div>
            </div>

            <div class="readmore" style="margin: auto;"><br><a href="more.html" class="readmoretext"
                                                               style="list-style-type: none;text-decoration: none;">查看更多</a>
            </div>

        </div>
        <div class="fk_third">
            <a href="404.html"><img src="images/gaosan.webp" width="1200px" alt=""></a>
        </div>

    </div>
</div>
<!-- 视频可以看 -->
<div class="lingganshipin">
    <div class="main">
        <br><br><br>
        <div class="tuijiantitle">
            <div class="tuijiantitleleft">
                Adult video 灵感视频<a href="more.html" style="font-size: 18px;">查看更多>></a>
            </div>
        </div>
        <div class="liangge">
            <div class="shipone" onclick="ship1()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">1:00</div>
                <img src="images/shipone.webp" width="587px" height="320px" alt="">
                <a href="">如何形容一个人没被时间打败？这条牛仔裤给了答案</a>
            </div>
            <div class="shiptwo" onclick="ship2()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">1:23</div>
                <img src="images/shiptwo.webp" width="587px" height="320px" alt="">
                <a href="">感受韩国的韵律-瑞山</a>
            </div>
        </div>
        <div class="sige">
            <div class="sige_one" onclick="ship3()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">0:40</div>
                <img src="images/sige_one.webp" width="278px" height="156px" alt="">
                <a href="">当麦当劳广告歌加上英国王室的滤镜……</a>
            </div>
            <div class="sige_two" onclick="ship4()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">2:36</div>
                <img src="images/sige_two.webp" width="278px" height="156px" alt="">
                <a href="">户外广告要多努力，才能引起你的注意力？</a>
            </div>
            <div class="sige_three" onclick="ship5()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">0:30</div>
                <img src="images/sige_three.webp" width="278px" height="156px" alt="">
                <a href="">我在外面辛苦打工，我的钱也不能躺平</a>
            </div>
            <div class="sige_four" onclick="ship6()">
                <div class="bofangbtn"><img src="" alt=""></div>
                <div class="timebox">1:11</div>
                <img src="images/sige_four.webp" width="278px" height="156px" alt="">
                <a href="">拖延症憋慌！去了这家“赶稿咖啡馆”之后，你再也不怕DDL了 |</a>
            </div>
        </div>
        <div class="readmore" style="margin: auto;"><br><a href="more.html" class="readmoretext"
                                                           style="list-style-type: none;text-decoration: none;">查看更多</a>
        </div>
    </div>
</div>
<!-- 本来想放美女照 -->
<div class="nicepic">
    <div class="main">
        <br><br><br>
        <div class="tuijiantitle">
            <div class="tuijiantitleleft">
                Nice pic 精选图片<a href="more.html" style="font-size: 18px;">查看更多>></a>
            </div>
        </div>
        <div class="list">
            <div class="shuai">
                <div class="zhezhao">
                    EntwinedLives
                </div>
                <a href="#"><img src="images/EntwinedLives.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    龙卷风
                </div>
                <a href="404.html"><img src="images/龙卷风.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    Asghar Khamseh
                </div>
                <a href="404.html"><img src="images/Asghar Khamseh.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    Sinabung火山的剩余部分
                </div>
                <a href="404.html"><img src="images/Sinabung火山的剩余部分.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    迁徙的沙丁鱼群
                </div>
                <a href="404.html"><img src="images/迁徙的沙丁鱼群.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    日出之光照亮雷尼尔山
                </div>
                <a href="404.html"><img src="images/日出之光照亮雷尼尔山.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    新生的希望
                </div>
                <a href="404.html"><img src="images/新生的希望.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    Goran Tomasevic
                </div>
                <a href="404.html"><img src="images/Goran Tomasevic.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    日出时分恋爱终结
                </div>
                <a href="404.html"><img src="images/richu.jpg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    据说这里都是外地人
                </div>
                <a href="404.html"><img src="images/中山路.jpg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    芜湖！冬兵
                </div>
                <a href="404.html"><img src="images/冬日的骑士.jpeg" width="278px" height="190px" alt=""></a>
            </div>
            <div class="shuai">
                <div class="zhezhao">
                    燕八哥的漩涡
                </div>
                <a href="404.html"><img src="images/燕八哥的漩涡.jpeg" width="278px" height="190px" alt=""></a>
            </div>

        </div>
        <div class="readmore" style="margin: auto;"><br><a href="more.html" class="readmoretext"
                                                           style="list-style-type: none;text-decoration: none;">查看更多</a>
        </div>
    </div>
</div>
<!-- 其他平台的一些有意思的 -->
<div class="zuihhh">
    <div class="main">
        <br><br><br>
        <div class="tuijiantitle">
            <div class="tuijiantitleleft">
                New float 新大陆 | 海的那边还是海吗<a href="more.html" style="font-size: 18px;">查看更多>></a>
            </div>
        </div>
        <div class="sige">
            <div class="sige_one">
                <a href="https://www.bilibili.com/video/BV1J54y1o7yS?spm_id_from=333.851.b_7265636f6d6d656e64.4"><div class="pos">这才是武侠片该有的样子</div>
                    <img src="images/z1.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_two">
                <a href="https://www.bilibili.com/video/BV13g411d7C3?spm_id_from=333.851.b_7265636f6d6d656e64.7"><div class="pos">世界最高峰被我用MC还原了？</div>
                    <img src="images/z2.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_three">
                <a href="https://www.bilibili.com/video/BV1ag411o71Y?spm_id_from=333.851.b_7265636f6d6d656e64.5"><div class="pos">⚡老 爹 的 澎 湖 湾⚡</div>
                    <img src="images/z3.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_four">
                <a href="https://www.bilibili.com/video/BV1CT411V79S?spm_id_from=333.851.b_7265636f6d6d656e64.7"><div class="pos">你们那好好说中文判几年</div>
                    <img src="images/z4.webp" width="278px" height="156px" alt="">
                </a>
            </div>
        </div>
        <div class="sige">
            <div class="sige_one">
                <a href="https://www.bilibili.com/video/BV1ca411L7Wp?spm_id_from=333.851.b_7265636f6d6d656e64.3"><div class="pos">“今天，我的DNA彻底燃起来了”</div>
                    <img src="images/z5.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_two">
                <a href="https://www.bilibili.com/video/BV13R4y1P7v1?spm_id_from=333.851.b_7265636f6d6d656e64.4"><div class="pos">人类高质量社死行为...</div>
                    <img src="images/z6.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_three">
                <a href="https://www.bilibili.com/video/BV1x5411Q748?spm_id_from=333.851.b_7265636f6d6d656e64.3"><div class="pos">新海诚那些无法超越的台词和画面！</div>
                    <img src="images/z7.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_four">
                <a href="https://www.bilibili.com/video/BV1J94y1S7QA?spm_id_from=333.851.b_7265636f6d6d656e64.4"><div class="pos">“有的人天生就是主角❺”！</div>
                    <img src="images/z8.webp" width="278px" height="156px" alt="">
                </a>
            </div>
        </div>
        <div class="sige">
            <div class="sige_one">
                <a href="https://www.youtube.com/watch?v=Zv11L-ZfrSg"><div class="pos">Ultimate Wild Animals Collection in 8K ULTRA HD </div>
                    <img src="images/z9.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_two">
                <a href="https://www.youtube.com/watch?v=x1Oa8sm743U"><div class="pos">《獅子山下》</div>
                    <img src="images/z10.webp" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_three">
                <a href="https://www.youtube.com/watch?v=kXpOEzNZ8hQ"><div class="pos">BTS (방탄소년단)</div>
                    <img src="images/z12.jpg" width="278px" height="156px" alt="">
                </a>
            </div>
            <div class="sige_four">
                <a href="https://www.youtube.com/watch?v=R4PhcEE22AA"><div class="pos">FLYING OVER JAPAN</div>
                    <img src="images/z13.webp" width="278px" height="156px" alt="">
                </a>
            </div>
        </div>
        <div class="readmore" style="margin: auto;"><br><a href="more.html" class="readmoretext"
                                                           style="list-style-type: none;text-decoration: none;">查看更多</a>
        </div>
    </div>
</div>
<!-- footer -->
<div class="thx">
    <div class="eee">
        <div class="ba">
            <h1>He^2.</h1>
        </div>
        <div class="bt">
            <div class="ydd">
                <a href="">加入我们</a>
                <a href="">联系我们</a>
                <a href="">关于我们</a>
                <a href="免责声明.html">免责声明</a>
            </div>
        </div>
        <div class="bs">
            关注我们
            <br><br>
            <div class="wb"></div>
        </div>
        <div class="bf">
            &nbsp;&nbsp; 扫码进群
            <br><br>
            <img src="images/杆菌的备胎01号群群聊二维码.png" width="200px" alt="">
            <div class="blackk"></div>
        </div>
    </div>
</div>

</body>
<script>
    // 获取按钮元素
    let left = document.querySelector('.button-left')
    let right = document.querySelector('.button-right')
    // 获取图片元素
    let min = document.querySelectorAll('.min')
    let images = document.querySelector('.images')

    // 初始化变量
    let index = 0
    let time

    function position() {
        images.style.left = (index * -100) + "%"
    }
    function add(){
        if(index >= min.length-1){
            index = 0
        }else{
            index++
        }
    }
    function desc(){
        if(index <1){
            index = min.length-1
        }else{
            index--
        }
    }
    // 计时
    function timer(){
        time = setInterval(()=>{
            index++
            desc()
            add()
            position()
        },3000)
    }
    left.addEventListener('click',()=>{
        desc()
        position()
        clearInterval(time)
        timer()
    })
    right.addEventListener('click',()=>{
        add()
        position()
        clearInterval(time)
        timer()
    })
    for(let i = 0;i<min.length;i++){
        min[i].addEventListener('click',()=>{
            index = i
            position()
            clearInterval(time)
            timer()
        })
    }
    timer()

</script>
<script>
    // 获取一堆
    // 我不喜欢写注释,因为这样就没人看得懂我的代码,这样我就不会被炒鱿鱼
    var dlbox = document.querySelector('.denglubox')
    var btnbox = document.querySelector('.ooo');
    var close = document.querySelector('.bc');
    var bc = document.querySelector('.bc');
    var shipa = document.querySelector('.ship1');
    var shipb = document.querySelector('.ship2');
    var shipc = document.querySelector('.ship3');
    var shipd = document.querySelector('.ship4');
    var shipe = document.querySelector('.ship5');
    var shipf = document.querySelector('.ship6');
    var viedo1 = document.getElementById('v1');
    var viedo2 = document.getElementById('v2');
    var viedo3 = document.getElementById('v3');
    var viedo4 = document.getElementById('v4');
    var viedo5 = document.getElementById('v5');
    var viedo6 = document.getElementById('v6');
    // 然后就是一大堆显示/隐藏
    btnbox.addEventListener('click', function () {
        bc.style.display = 'block';
        dlbox.style.display = 'block';
    })
    close.addEventListener('click', function () {
        bc.style.display = 'none';
        dlbox.style.display = 'none';
        shipa.style.display = 'none';
        shipb.style.display = 'none';
        shipc.style.display = 'none';
        shipd.style.display = 'none';
        shipe.style.display = 'none';
        shipf.style.display = 'none';
    })
    function ccc(){
        bc.style.display = 'none';
        dlbox.style.display = 'none';
        shipa.style.display = 'none';
        shipb.style.display = 'none';
        shipc.style.display = 'none';
        shipd.style.display = 'none';
        shipe.style.display = 'none';
        shipf.style.display = 'none';
        if (viedo1.play) { // 放着赶紧停
            viedo1.pause();
        }
        if (viedo2.play) {
            viedo2.pause();
        }
        if (viedo3.play) {
            viedo3.pause();
        }
        if (viedo4.play) {
            viedo4.pause();
        }
        if (viedo5.play) {
            viedo5.pause();
        }
        if (viedo6.play) {
            viedo6.pause();
        }

    }
    // 这样就可以骗自己是自动播放
    function ship1(){
        bc.style.display = 'block';
        shipa.style.display = 'block';
        viedo1.play();
    }
    function ship2(){
        bc.style.display = 'block';
        shipb.style.display = 'block';
        viedo2.play();
    }
    function ship3(){
        bc.style.display = 'block';
        shipc.style.display = 'block';
        viedo3.play();
    }
    function ship4(){
        bc.style.display = 'block';
        shipd.style.display = 'block';
        viedo4.play();
    }
    function ship5(){
        bc.style.display = 'block';
        shipe.style.display = 'block';
        viedo5.play();
    }
    function ship6(){
        bc.style.display = 'block';
        shipf.style.display = 'block';
        viedo6.play();
    }

</script>
<script>
    // 要操作到的元素
    let login=document.getElementById('login');
    let register=document.getElementById('register');
    let form_box=document.getElementsByClassName('form-box')[0];
    let register_box=document.getElementsByClassName('register-box')[0];
    let login_box=document.getElementsByClassName('login-box')[0];
    // 去注册按钮点击事件
    register.addEventListener('click',()=>{
        form_box.style.transform='translateX(137.4%)';
        login_box.classList.add('hidden');
        register_box.classList.remove('hidden');
    })
    // 去登录按钮点击事件
    login.addEventListener('click',()=>{
        form_box.style.transform='translateX(0%)';
        register_box.classList.add('hidden');
        login_box.classList.remove('hidden');
    })
</script>
<script>
    //注册

    function qued2(){
        var users = localStorage.getItem("users");
        if(users){ //判断本地存储是否有users,没有就添加
            var users = JSON.parse(users);
        }else{
            var users=[];
            localStorage.setItem("users",JSON.stringify(users));//存储数组
            var users = localStorage.getItem("users");
            var users = JSON.parse(users);
        }

        // 定义一个本地temp
        var temp = {};
        // 获取阿巴阿巴
        temp.username = document.getElementById('username2').value;
        temp.password = document.getElementById("password2").value;
        temp.phone = document.getElementById("phone2").value;
        temp.email = document.getElementById('email2').value;

        var flag = 0;
        if(temp.username =="" || temp.password == ""){
            alert("用户名和密码不能为空！");
        }else{
            users.forEach(function(item,index){
                if(temp.username == item.username){
                    flag=1;
                }
            });
            if(flag == 1){
                alert("该用户名已被注册！");
            }else{
                users.push(temp);
                localStorage.setItem("users",JSON.stringify(users));
                alert("注册成功！");
                location.href="index.html";
            }
        }
    }
</script>
<script>
    // 获取阿巴阿巴
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    var users = localStorage.getItem("users");
    var users = JSON.parse(users);

    var tempuser = localStorage.getItem("tempuser");
    if(tempuser){
        var tempuser = JSON.parse(tempuser);
    }else{
        var tempuser={};
        localStorage.setItem("tempuser",JSON.stringify(tempuser));
        var tempuser = localStorage.getItem("tempuser");
        var tempuser = JSON.parse(tempuser);
    }

    a2.onclick=function(){
        var flag=0;
        if(username.value=='admin' & password.value=='admin'){ /* 判断登录的是否是管理员账号 */
            flag = 2;
        }else{
            users.forEach(function(item,index){
                if(item.username==username.value & item.password==password.value){
                    tempuser = item.username;
                    localStorage.setItem("tempuser",JSON.stringify(tempuser));
                    flag=1;
                }
            });
        }
        if(flag==0){
            alert("登录失败！请检查用户名或密码是否正确！");
            username.value="";
            password.value="";

        }else if(flag==2){
            alert("卧槽管理员大哥请进！");
            location.href="client.html";
        }else{
            alert("登录成功！");
            window.location.reload();//刷新页面
        }
    }
    // 我真的不写注释了!!!
</script>
<script>
    // 改那个头头用的,很帅
    var tempuser = localStorage.getItem("tempuser");

    if(tempuser){
        var tempuser = JSON.parse(tempuser);
    }else{
        var tempuser={};
        localStorage.setItem("tempuser",JSON.stringify(tempuser));
        var tempuser = localStorage.getItem("tempuser");
        var tempuser = JSON.parse(tempuser);
    }
    var denglu = document.getElementById('mdfk');
    if(JSON.stringify(tempuser)=='{}'){
        denglu.innerHTML='登录/注册';
        console.log('1');
    }else{
        denglu.innerHTML='<a href=#">'+tempuser+'</a>';
        console.log('2');
    }
    //退出登录
    function tui(){
        tempuser={};
        localStorage.setItem("tempuser",JSON.stringify(tempuser));
        window.location.reload();//刷新页面
    }
</script>
</html>
