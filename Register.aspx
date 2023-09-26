<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FEWebApp1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG KÝ NHẬN TIN</title>
    <script>
        // Lấy giá trị của một input : bỏ khoảng trắng 2 đầu
        function getValue(id) {
            return document.getElementById(id).value.trim();
        }
        // Hiển thị lỗi
        function showError(key, mess) {
            document.getElementById(key + '_error').innerHTML = mess;
        }
        // kiểm tra lỗi
        function validate() {
            var flag = true;
            // 1 username
            var username = getValue('username');
            if (username == '' || username.length < 5 || !/^[a-zA-Z0-9]+$/.test(username)) {
                flag = false;
                showError('username', 'Vui lòng kiểm tra lại Username');
            }
            // 2. password
            var password = getValue('password');
            var repassword = getValue('repassword');
            if (password == '' || password.length < 8) {
                flag = false;
                showError('password', 'Vui lòng kiểm tra lại Password');
            }
            // 3. repassword
            var repassword = getValue('repassword');
            if (password != repassword) {
                flag = false;
                showError('repassword', 'Vui lòng kiểm tra nhập lại Password');
            }
            return flag;
        }
    </script>
    <style type="text/css">
        form{
            width:50%;
            height:400px;
            vertical-align:middle;
            background-color:white;
            border:groove;
        }
        #proImg, #newRegister{
            padding:5px;
            width:35%;
            max-height:600px;
        }
        #proImg{
            float:left;
        }
        img{
            max-width:100%;
            max-height:500px;
        }
        #newRegister{
            float:right;
        }
        span{
            color:red;
            font-family:'Co';
        }
    </style>
</head>
<body>
    <form id="proRegister" runat="server">
        <div id="proImg">
            <img src="https://shopdunk.com/images/uploaded/banner/thang%209%202023/phu-kien-t9.jpg" />
        </div>
        <div id="newRegister">
            <h1>Đăng ký nhận tin</h1>
            <label>Họ và tên:</label><br />
            <input type="text" id="name" name="name" /><br />
            <span id="name-err"></span>
            <br />
            <label>Giới tính:</label><br />
            <select name="sexual" >
                <option name="sexual" value="Nam">Nam</option>
                <option name="sexual" value="Nữ">Nữ</option>
                <option name="sexual" value="Khác">Khác</option>
            </select><br />
            <label>Số điện thoại:</label><br />
            <input type="tel" id="telephone" name="telephone" />
            <label>Email:</label><br />
            <input type="email" id="email" name="email" />
            <label>Ngành nghề:</label><br />
            <input type="text" id="career" name="career" maxlength="300" />
            <span id="career-err"></span>
            <br />
            <input type="submit" name="registerBtn" value="Đăng ký nhận tin"/>
        </div>
    </form>
</body>
</html>
