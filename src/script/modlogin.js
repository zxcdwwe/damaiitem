define([], function () {
    const del = $('.del');
    const pass = $('.password');
    const submit = $('.submit');
    return {
        init: function () {
            submit.onclick = function () {
                $.ajax({
                    type: 'post',
                    url: 'http://localhost/damai/php/login.php',
                    data: {
                        del: del.value,
                        pass: sha1(pass.value)
                    }
                }).done(function (data) {
                    if (!data) {
                        alert('手机号或者密码错误');
                        pass.value = '';
                    } else {
                        cookie.set('del', del.value, 7);
                        // location.href = 're.html';
                    }
                })
            }
        }
    }

});