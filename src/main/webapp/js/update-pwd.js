var validator;
$(document).ready(function () {
     $.validator.setDefaults({
         //debug: true
     });

     validator = $("#Form").validate({
         rules: {
             password: {
                 required: true,
             },
             newPassword: {
                 required: true,
             },
             rePassword: {
                 required: true,
                 equalTo: "#newPassword"
             }
         },
         messages: {
             password: {
                 required: "必須填寫舊密碼",
             },
             newPassword: {
                 required: "必須填寫密碼",
             },
             rePassword: {
                 required: "必須填寫確認密碼",
                 equalTo: "輸入兩次的密碼不一致"
             }
         }
     });
});
$(document).ready(function(){
     $("#submit").click(function(){
         $.post("updatePwd.do",{
                 uid:$("#uid").val(),
                 password:$("#password").val(),
                 newPassword:$("#newPassword").val()
             },
             function(data){
                 if(data=='success'){
                     alert("修改密碼成功");
                 }
                 if(data=='false'){
                     alert("舊密碼輸入有誤");
                 }
                 if(data=='pwdEmpty'){
                     alert("密碼不能為空");
                 }
                 if(data=='newEmpty'){
                     alert("確認密碼不能為空");
                 }
             });
     });
});