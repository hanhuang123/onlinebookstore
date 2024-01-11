var validator;
$(document).ready(function () {
     $.validator.setDefaults({
         //debug: true
     });

     validator = $("#regForm").validate({
         rules: {
             userName: {
                 required: true
             },
             passWord: {
                 required: true
             },
             rePassWord: {
                 required: true,
                 equalTo: "#passWord"
             }
         },
         messages: {
             userName: {
                 required: "必須填寫使用者名稱"
             },
             passWord: {
                 required: "必須填寫密碼"
             },
             rePassWord: {
                 required: "必須填寫確認密碼",
                 equalTo: "輸入兩次的密碼不一致"
             }
         }
     });
});
$(document).ready(function(){
     $("#submit").click(function(){
         $.post("userReg.do",{
                 userName:$("#userName").val(),
                 passWord:$("#passWord").val()
             },
             function(data){
                 if(data=='success'){
                     alert("註冊成功，請登陸。");
                     window.location.href="login.do";
                 }
                 if(data=='false'){
                     alert("使用者名稱已存在");
                 }
             });
     });
});