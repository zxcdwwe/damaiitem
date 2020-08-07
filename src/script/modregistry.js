define(['jquery'], function () {
    const del = $('.del');
    const $password = $('.password');
    const $repass = $('.repass');

    const $span_del = $('.span_del');
    const $span_password = $('.span_password');
    const $span_repass = $('.span_repass');

    return {
        init: function () {
            // 电话号码
            del.focus(function () {
                $span_del.html('请输入11位的手机号码');
                $span_del.css('color', '#999');
            })
            del.on('input', function (e) {
                if (e.target.value !== '') {
                    var reg = /^1[3578]\d{9}$/;
                    if (reg.test(e.target.value)) {
                        $span_del.html('√');
                        $span_del.css('color', 'green');
                    } else {
                        $span_del.html('手机格式有误');
                        $span_del.css('color', 'red');
                    }
                } else {
                    $span_del.html('手机号码不能为空');
                    $span_del.css('color', 'red');
                }
            })
            del.blur(function () {
                $.ajax({
                    type: 'post',
                    url: 'http://localhost/damai/php/registry.php',
                    data: {
                        del: del.val()
                    }

                }).done(function (data) {
                    console.log(data, 2222);
                    if (data == 3) {
                        $span_del.html('√');
                        $span_del.css('color', 'green');
                    } else if (data == 1) {
                        $span_del.html('用户名已注册');
                        $span_del.css('color', 'red');
                    }
                })
            })
            $password.focus(function (e) {
                if (!e.target.value) {
                    $span_password.html('请输入6位密码');
                    $span_password.css('color', '#999');
                }

            })
            $repass.focus(function (e) {
                if (!e.target.value) {
                    $span_repass.html('请输入6位密码');
                    $span_repass.css('color', '#999');
                }

            })

            $repass.blur(function (e) {
                const passwordVal = $password.val();
                const repassVal = e.target.value;
                if (passwordVal !== repassVal) {
                    $span_repass.html('两次密码不一致！');
                    $span_repass.css('color', 'red');
                }
                else{
                    $span_repass.html('');
                }
            })


        }
        // 输入密码





    }

});


// 0 undefined Null '' false

