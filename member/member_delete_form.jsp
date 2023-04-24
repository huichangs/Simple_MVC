<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  background:#2c2c2c;
  font-family:"Raleway";
}
.form {
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
  width:300px;
  height:250px;
  padding:10px;
}
.form .form-header {
  height:30px;
  display:flex;
  align-items:center;
  text-align:center;
}
.form .form-header > div {
  width:calc(100% / 3);
  color:#ddd;
  font-size:18px;
  font-weight:600;
  cursor:pointer;
}
.form.signup .form-header div.show-signup {
  color:#f1575b;
}
.form.signin .form-header div.show-signin {
  color:#f1575b;
}
.form.reset .form-header div.show-reset {
  color:#f1575b;
}
.form .form-elements {
  margin-top:15px;
}
.form .form-elements .form-element {
  height:50px;
  opacity:1;
  overflow:hidden;
  transition:all 500ms ease-in-out;
}
.form .form-elements input {
  width:100%;
  padding:10px;
  font-size:16px;
  margin:5px 0px;
  border-radius:10px;
  box-sizing:border-box;
  border:1px solid #222;
  background:#f5f5f5;
}
.form .form-elements button {
  width:100%;
  padding:10px;
  font-size:16px;
  font-weight:600;
  margin-top:5px;
  border-radius:10px;
  background:#f1575b;
  color:#f5f5f5;
  cursor:pointer;
  border:none;
  outline:none;
}
.form .arrow {
  position:absolute;
  top:51px;
  width:0;
  height:0;
  border-left:10px solid transparent;
  border-right:10px solid transparent;
  border-bottom:10px solid #f5f5f5;
}
.form.signup .arrow {
  left:calc(calc(100% / 3) / 2);
}
.form.signin .arrow {
  left:calc(calc(100% / 3) + calc(calc(100% / 3) / 2.2)) ;
}
.form.reset .arrow {
  left:calc(calc(calc(100% / 3) * 2) + calc(calc(100% / 3) / 3)) ;
}

.form.signin .form-elements > div:nth-child(3) {
  height:0px;
  opacity:0;
}
.form.reset .form-elements > div:nth-child(2),
.form.reset .form-elements > div:nth-child(3) {
  height:0px;
  opacity:0;
}
</style>
</head>
<body>
		<div class="form signup">
		  <div class="form-elements">
		  <form action="./member_delete_action" method="post">
		  	<div class = "form-element" style = "font-weight: bold; color : white; text-align: center">Enter Your PassWord To Delete</div>
		    <div class="form-element">
		      <input type="text" name="mid" value = "${vo.mid}" readonly = "readonly">
		    </div>
		    <div class="form-element">
		      <input type="password" placeholder = "PassWord" name="mpwd">
		    </div>
		    <div class="form-element">
		      <button id="submit-btn" type = "submit">Delete</button>
		    </div>
		    </form>
		    <div class="form-element">
		      <button id="submit-btn" OnClick = "location.href = './'">Home</button>
		    </div>
		  </div>
		</div>
	

</body>
</html>