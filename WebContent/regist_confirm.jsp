<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Registration</title>
</head>
<body>
    <h1>確認画面</h1>
    <s:form action="RegistCompleteAction" method="post">
        <div>
            <label>名前（姓）:</label>
            <s:property value="family_name" />
        </div>
        <div>
            <label>名前（名）:</label>
            <s:property value="last_name" />
        </div>
        <div>
            <label>カナ（姓）:</label>
            <s:property value="family_name_kana" />
        </div>
        <div>
            <label>カナ（名）:</label>
            <s:property value="last_name_kana" />
        </div>
        <div>
            <label>メールアドレス:</label>
            <s:property value="email" />
        </div>
        <div>
            <label>パスワード:</label>
            <s:property value="password" />
        </div>
        <div>
            <label>性別:</label>
            <s:property value="gender" />
        </div>
        <div>
            <label>郵便番号:</label>
            <s:property value="postal_code" />
        </div>
        <div>
            <label>住所（都道府県）:</label>
            <s:property value="prefecture" />
        </div>
        <div>
            <label>住所（市区町村）:</label>
            <s:property value="city" />
        </div>
        <div>
            <label>住所（番地）:</label>
            <s:property value="address" />
        </div>
        <div>
            <label>アカウント権限:</label>
            <s:property value="role" />
        </div>
        <div>
            <s:submit value="登録する" />
        </div>
    </s:form>
</body>
</html>
