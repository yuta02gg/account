<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <form action="regist_confirm.jsp" method="POST" id="registration-form">
        <div>
            <label for="family_name">名前（姓）:</label>
            <input type="text" id="family_name" name="family_name" maxlength="10" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label for="last_name">名前（名）:</label>
            <input type="text" id="last_name" name="last_name" maxlength="10" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label for="family_name_kana">カナ（姓）:</label>
            <input type="text" id="family_name_kana" name="family_name_kana" maxlength="10" required pattern="[\u30A1-\u30FC]+" title="カタカナで入力してください">
            <span class="error-message"></span>
        </div>
        <div>
            <label for="last_name_kana">カナ（名）:</label>
            <input type="text" id="last_name_kana" name="last_name_kana" maxlength="10" required pattern="[\u30A1-\u30FC]+" title="カタカナで入力してください">
            <span class="error-message"></span>
        </div>
        <div>
            <label for="email">メールアドレス:</label>
            <input type="email" id="email" name="email" maxlength="100" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label for="password">パスワード:</label>
            <input type="password" id="password" name="password" maxlength="10" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label>性別:</label>
            <input type="radio" id="gender_male" name="gender" value="male" checked>
            <label for="gender_male">男</label>
            <input type="radio" id="gender_female" name="gender" value="female">
            <label for="gender_female">女</label>

        </div>
        <div>
            <label for="postal_code">郵便番号:</label>
            <input type="text" id="postal_code" name="postal_code" maxlength="7" required pattern="[0-9]+" title="半角数字で入力してください">
            <span class="error-message"></span>
        </div>
        <div>
		    <label for="prefecture">住所（都道府県）:</label>
		    <select id="prefecture" name="prefecture" required>
		        <option value="" selected disabled>選択してください</option>
		        <option value="北海道">北海道</option>
		        <option value="青森県">青森県</option>
		        <option value="岩手県">岩手県</option>
		        <option value="宮城県">宮城県</option>
		        <option value="秋田県">秋田県</option>
		        <option value="山形県">山形県</option>
		        <option value="福島県">福島県</option>
		        <option value="茨城県">茨城県</option>
		        <option value="栃木県">栃木県</option>
		        <option value="群馬県">群馬県</option>
		        <option value="埼玉県">埼玉県</option>
		        <option value="千葉県">千葉県</option>
		        <option value="東京都">東京都</option>
		        <option value="神奈川県">神奈川県</option>
		        <option value="新潟県">新潟県</option>
		        <option value="富山県">富山県</option>
		        <option value="石川県">石川県</option>
		        <option value="福井県">福井県</option>
		        <option value="山梨県">山梨県</option>
		        <option value="長野県">長野県</option>
		        <option value="岐阜県">岐阜県</option>
		        <option value="静岡県">静岡県</option>
		        <option value="愛知県">愛知県</option>
		        <option value="三重県">三重県</option>
		        <option value="滋賀県">滋賀県</option>
		        <option value="京都府">京都府</option>
		        <option value="大阪府">大阪府</option>
		        <option value="兵庫県">兵庫県</option>
		        <option value="奈良県">奈良県</option>
		        <option value="和歌山県">和歌山県</option>
		        <option value="鳥取県">鳥取県</option>
		        <option value="島根県">島根県</option>
		        <option value="岡山県">岡山県</option>
		        <option value="広島県">広島県</option>
		        <option value="山口県">山口県</option>
		        <option value="徳島県">徳島県</option>
		        <option value="香川県">香川県</option>
		        <option value="愛媛県">愛媛県</option>
		        <option value="高知県">高知県</option>
		        <option value="福岡県">福岡県</option>
		        <option value="佐賀県">佐賀県</option>
		        <option value="長崎県">長崎県</option>
		        <option value="熊本県">熊本県</option>
		        <option value="大分県">大分県</option>
		        <option value="宮崎県">宮崎県</option>
		        <option value="鹿児島県">鹿児島県</option>
		        <option value="沖縄県">沖縄県</option>
		    </select>
		    <span class="error-message"></span>
        </div>
        <div>
            <label for="city">住所（市区町村）:</label>
            <input type="text" id="city" name="city" maxlength="10" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label for="address">住所（番地）:</label>
            <input type="text" id="address" name="address" maxlength="100" required>
            <span class="error-message"></span>
        </div>
        <div>
            <label for="role">アカウント権限:</label>
            <select id="role" name="role" required>
                <option value="general" selected>一般</option>
                <option value="admin">管理者</option>
            </select>
            <span class="error-message"></span>
        </div>
        <div>
            <button type="submit">確認する</button>
        </div>
    </form>

    <script src="validation.js"></script>
</body>
</html>
