<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>アカウント登録確認</title>
    <style type="text/css">
        /* CSS スタイルは省略 */
    </style>
</head>
<body>
    <h1>アカウント登録確認</h1>
    <div>
        <label for="family_name">名前（姓）:</label>
        <s:property value="%{familyName}" />
    </div>
    <div>
        <label for="last_name">名前（名）:</label>
        <s:property value="%{lastName}" />
    </div>
    <div>
        <label for="family_name_kana">カナ（姓）:</label>
        <s:property value="%{familyNameKana}" />
    </div>
    <div>
        <label for="last_name_kana">カナ（名）:</label>
        <s:property value="%{lastNameKana}" />
    </div>
    <div>
        <label for="email">メールアドレス:</label>
        <s:property value="%{email}" />
    </div>
    <div>
        <label for="password">パスワード:</label>
        <s:property value="********" />
    </div>
    <div>
        <label>性別:</label>
        <s:property value="%{gender}" />
    </div>
    <div>
        <label for="postal_code">郵便番号:</label>
        <s:property value="%{postalCode}" />
    </div>
    <div>
        <label for="prefecture">住所（都道府県）:</label>
        <s:property value="%{prefecture}" />
    </div>
    <div>
        <label for="city">住所（市区町村）:</label>
        <s:property value="%{city}" />
    </div>
    <div>
        <label for="address">住所（番地）:</label>
        <s:property value="%{address}" />
    </div>
    <div>
        <label for="role">アカウント権限:</label>
        <s:property value="%{role}" />
    </div>
    <s:form action="registerComplete" method="post">
        <s:submit value="登録する" />
    </s:form>
    <s:form action="regist" method="post">
        <s:submit value="前に戻る" />
    </s:form>
</body>
</html>
