<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>アカウント登録</title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Verdana, Helvetica, sans-serif;
            font-size: 12px;
            color: #333;
            background: #fff;
        }
        #registration-form {
            width: 780px;
            margin: 30px auto;
            border: 1px solid #333;
            padding: 20px;
            box-sizing: border-box;
        }
        #registration-form div {
            margin-bottom: 10px;
        }
        #registration-form label {
            display: inline-block;
            width: 150px;
            text-align: right;
            margin-right: 10px;
        }
        #registration-form input[type="text"],
        #registration-form input[type="password"],
        #registration-form input[type="email"],
        #registration-form select {
            width: 200px;
            padding: 5px;
        }
        #registration-form button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <h1>アカウント登録</h1>
    <s:form id="registration-form" action="RegistConfirmAction" method="post">
        <div>
            <label for="family_name">名前（姓）:</label>
            <s:textfield id="family_name" name="family_name" maxlength="10" key="family_name" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="last_name">名前（名）:</label>
            <s:textfield id="last_name" name="last_name" maxlength="10" key="last_name" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="family_name_kana">カナ（姓）:</label>
            <s:textfield id="family_name_kana" name="family_name_kana" maxlength="10" key="family_name_kana" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="last_name_kana">カナ（名）:</label>
            <s:textfield id="last_name_kana" name="last_name_kana" maxlength="10" key="last_name_kana" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="email">メールアドレス:</label>
            <s:textfield id="email" name="email" maxlength="100" key="email" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="password">パスワード:</label>
            <s:password id="password" name="password" maxlength="10" key="password" />
            <span class="error-message"></span>
        </div>
        <div>
            <label>性別:</label>
            <s:radio id="gender" name="gender" list="{'male':'男', 'female':'女'}" key="gender" />
        </div>
        <div>
            <label for="postal_code">郵便番号:</label>
            <s:textfield id="postal_code" name="postal_code" maxlength="7" key="postal_code" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="prefecture">住所（都道府県）:</label>
            <s:select id="prefecture" name="prefecture" list="{'北海道':'北海道', '青森県':'青森県', '岩手県':'岩手県', '宮城県':'宮城県', '秋田県':'秋田県', '山形県':'山形県', '福島県':'福島県', '茨城県':'茨城県', '栃木県':'栃木県', '群馬県':'群馬県', '埼玉県':'埼玉県', '千葉県':'千葉県', '東京都':'東京都', '神奈川県':'神奈川県', '新潟県':'新潟県', '富山県':'富山県', '石川県':'石川県', '福井県':'福井県', '山梨県':'山梨県', '長野県':'長野県', '岐阜県':'岐阜県', '静岡県':'静岡県', '愛知県':'愛知県', '三重県':'三重県', '滋賀県':'滋賀県', '京都府':'京都府', '大阪府':'大阪府', '兵庫県':'兵庫県', '奈良県':'奈良県', '和歌山県':'和歌山県', '鳥取県':'鳥取県', '島根県':'島根県', '岡山県':'岡山県', '広島県':'広島県', '山口県':'山口県', '徳島県':'徳島県', '香川県':'香川県', '愛媛県':'愛媛県', '高知県':'高知県', '福岡県':'福岡県', '佐賀県':'佐賀県', '長崎県':'長崎県', '熊本県':'熊本県', '大分県':'大分県', '宮崎県':'宮崎県', '鹿児島県':'鹿児島県', '沖縄県':'沖縄県'}" key="prefecture" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="city">住所（市区町村）:</label>
            <s:textfield id="city" name="city" maxlength="10" key="city" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="address">住所（番地）:</label>
            <s:textfield id="address" name="address" maxlength="100" key="address" />
            <span class="error-message"></span>
        </div>
        <div>
            <label for="role">アカウント権限:</label>
            <s:select id="role" name="role" list="{'general':'一般', 'admin':'管理者'}" key="role" />
            <span class="error-message"></span>
        </div>
        <div>
            <s:submit value="確認する" />
        </div>
    </s:form>
</body>
</html>
