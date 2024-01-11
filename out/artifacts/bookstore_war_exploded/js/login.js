var validator;
$(document).ready(function () {
    // $.validator.setDefaults({
    //     //debug: true
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
                required: "必需填寫用户名"
            },
            passWord: {
                required: "必需填寫密碼"

            }
        }
    });
});
$(document).ready(function(){
    $("#submit").click(function(){
        $.post("loginCheck.do",{
                userName:$("#userName").val(),
                passWord:$("#passWord").val()
            },
            function(data){
                if(data=='success'){
                    window.location.href="index.do";
                }
                if(data=='false'){
                    alert("帳號或密碼不正確");
                }
                if(data=='nameEmpty'){
                    alert("帳號不能為空");
                }
                if(data=='pwdEmpty'){
                    alert("密碼不能為空");
                }
            });
    });
});