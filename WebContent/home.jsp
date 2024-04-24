<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Home画面</title>
    <style type="text/css">
    .logo img {
        width: 200px;
        height: 70px;
    }

    header {
        top: 0x ;
        left: 0px ;
        width: 99% ;
        height: 40px ;
        background-color:black;
        margin: 0 auto;
    }

    header ul {
        float:left;
        line-height:10px;
        padding-left: 10px;
    }

    header ul li {
        float: left ;
        list-style: none ;
        padding-right:50px ;
        margin-left: 20px;
        margin-bottom :5px;
        color: white ;
        font-size: 18px ;
    }

    h1 {
        margin-top: 1px;
        margin-left: 1px;
        margin-bottom: 0px;
        margin-right: 0px;
        border-left: 5px solid black;
        border-bottom: 2px solid black;
        padding-left: 5px;
    }

    h4 {
        font-family: serif;
        margin: 7px;
    }

    .book img {
        width: 100%;
        height: 600px;
    }

    h3 {
        font-family: serif;
        margin: 2px;
    }

    .b {
        font-family: serif;
        border-bottom: 3px solid gray;
    }

    .a {
        margin-top: 25px;
    }

    .box2 {
        width:100%;
        background-color: lightgray;
        text-align:center;
    }

    .box2 img {
        width:220px;
        margin:20px 10px -10px 10px;
    }

    .box2 .box_pic2 {
        display:inline-block;
    }

    .box_pic2 p {
        font-size: 10px;
    }

    .left {
        float: left;
        width: 69%;
        height: 1220px;
        margin-bottom: 40px;
        border-top:5px solid blue;
        border-right:5px solid blue;
        border-bottom:5px solid blue;
        margin-bottom: 1px;
    }

    .right {
        float:left;
        width: 30%;
        height:1220px;
        margin-bottom: 40px;
        border-top:5px solid red;
        border-left:5px solid red;
        border-bottom:5px solid red;
        margin-bottom: 1px;
    }

    .kiji, .link, .kateg {
        list-style: none;
        margin-left: 20px;
        margin-top: 20px;
    }

    footer {
        clear: left;
        width: 99%;
        height: 60px;
        color:white;
        background-color: black;
        text-align: center;
        line-height: 60px;
        margin: 0 auto;
    }
    </style>
</head>
<body>
    <div class="logo"><img src="diblog_logo.jpg"></div>

    <header>
        <ul>
            <li>トップ</li>
            <li>プロフィール</li>
            <li>D.I.Blog について</li>
            <li>登録フォーム</li>
            <li>問い合わせ</li>
            <li>その他</li>
            <li><div>
                    <a href='<s:url action="regist.jsp"/>'>アカウント登録</a>
                </div>
            </li>
        </ul>
    </header>

    <main>
        <div class="left">
            <h1>プログラミングに役立つ書籍</h1>
            <h4>2017年1月15日</h4>
            <div class="book"><img src="bookstore.jpg"></div>
            <h3>D.I.BlogはD.I.Wroksが提供する演習課題です。</h3>
            <h3>記事中身</h3>
            <div class="box2">
                <div class="box_pic2">
                    <img src="pic1.jpg">
                    <p>ドメイン取得方法</p>
                </div>
                <div class="box_pic2">
                    <img src="pic2.jpg">
                    <p>快適な職場環境</p>
                </div>
                <div class="box_pic2">
                    <img src="pic3.jpg">
                    <p>Linuxの基礎</p>
                </div>
                <div class="box_pic2">
                    <img src="pic4.jpg">
                    <p>マーケティング入門</p>
                </div>
                <div class="box_pic2">
                    <img src="pic5.jpg">
                    <p>アクティブラーニング</p>
                </div>
                <div class="box_pic2">
                    <img src="pic6.jpg">
                    <p>CSSの効率的な勉強方法</p>
                </div>
                <div class="box_pic2">
                    <img src="pic7.jpg">
                    <p>リーダブルコードとは</p>
                </div>
                <div class="box_pic2">
                    <img src="pic8.jpg">
                    <p>HTML5の可能性</p>
                </div>
            </div>
        </div>

        <div class="right">
            <div class="a">
                <h3 class="b">人気の記事</h3>
                <h4 class="kiji">
                    <li>PHPオススメ本</li>
                    <li>PHP MyAdminの使い方</li>
                    <li>いま人気のエディタTops</li>
                    <li>HTMLの基礎</li>
                </h4>

                <h3 class="b">オススメリンク</h3>
                <h4 class="link">
                    <li>ディーアイワークス株式会社</li>
                    <li>XAMPPのダウンロード</li>
                    <li>Eclipseのダウンロード</li>
                    <li>Braketsのダウンロード</li>
                </h4>

                <h3 class="b">カテゴリー</h3>
                <h4 class="kateg">
                    <li>HTML</li>
                    <li>PHP</li>
                    <li>MySQL</li>
                    <li>JavaScript</li>
                </h4>
            </div>
        </div>
    </main>

    <footer>
        Copyright D.I.workslD.I.blog is the one which provides A to Z about programming
    </footer>
</body>
</html>
