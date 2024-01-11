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
                 minlength: 11,
                 maxlength: 11
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
                 required: "必須填寫使用者名稱"
             },
             phone: {
                 required: "必須填寫電話",
                 minlength: "電話號碼長度不正確",
                 maxlength: "電話號碼長度不正確"
             },
             email: {
                 required: "必須填寫信箱",
                 email:"郵件信箱格式有誤"
             },
             address: {
                 required: "必須填寫送貨地址"
             }
         }
     });

});