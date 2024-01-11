var validator;
$(document).ready(function () {
     // $.validator.setDefaults({
     // //debug: true
     // });

     validator = $("#loginForm").validate({
         rules: {
             userName: {
                 required: true
             },
             passWord: {
                 required: true
             }
         },
         messages: {
             userName: {
                 required: "必須填寫使用者名稱"
             },
             passWord: {
                 required: "必須填寫密碼"

             }
         }
     });
});

$(document).ready(function(){
     $("#submit").click(function(){
         $.ajax({
             type: "post",
             url: "loginCheck.do",
             data: {
                 userName:$("#userName").val(),
                 passWord:$("#passWord").val()
             },
             dataType: "text",
             success: function(result){
                 if(result=='success'){
                     window.location.href="index.do";
                 }
                 if(result=='false'){
                     alert("帳號或密碼不正確");
                 }
                 if(result=='nameEmpty'){
                     alert("帳號不能為空");
                 }
                 if(result=='pwdEmpty'){
                     alert("密碼不能為空");
                 }
             },
             error: function() {
                 alert("登陸失敗");
             }
         });
     });
});