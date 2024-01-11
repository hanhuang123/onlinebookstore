var validator;
$(document).ready(function () {
    $.validator.setDefaults({
    });

    validator = $("#Form").validate({
        rules: {
            uname: {
                required: true
            },
            phone: {
                required: true,
                minlength: 10,
                maxlength: 10
            },
            email: {
                required: true,
                email:true
            },
            address: {
                required: true
            }
        },
        messages: {
            uname: {
                required: "必需填寫用户名"
            },
            phone: {
                required: "必需填寫電話",
                minlength: "電話號碼長度不正確",
                maxlength: "電話號碼長度不正確"
            },
            email: {
                required: "必需填寫郵箱",
                email:"郵箱格式有誤"
            },
            address: {
                required: "必需填寫送貨地址"
            }
        }
    });

});