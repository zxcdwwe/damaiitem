;
! function() {
    let did = location.search.split('=')[1];
    // console.log(did);
    $.ajax({
        type: 'get',
        url: 'http://localhost/damai/php/getsid.php',
        data: {
            did: did
        },
        dataType: 'json'
    }).done(function(data) {
        console.log(data);
        $('.left_img img').attr('src', data.url);
        $('.det_tit').html(data.title);
        $('.time p').html(data.time);
        $('.time .addr').html(data.adress);
    });



    //3.购物车操作 - cookie
    // 3.1.cookie里面存储商品的sid和商品的数量
    // 3.2.利用两个数组分别存储sid和数量。先将sid和数量放入数组，然后存储cookie

    let arrsid = []; //存储商品的sid
    let arrnum = []; //商品的数量

    //3.3.如何确定商品的提交次数，第一次添加商品，创建购物车列表，从第二次开始只需要商品的数量进行累加。
    //商品如果是从第二次开始添加，cookie中应该存在商品的编号sid。利用存在的cookie进行判断，必须先获取cookie。
    //一开始约定好cookie里面存储sid和数量的key值。
    //cookiesid   cookienum key值分别表示存储cookie的编号和数量。

    //3.4提前获取cookie值，将其转换成数组。
    function cookietoarray() {
        if ($.cookie('cookiesid') && $.cookie('cookienum')) { //cookie存在
            arrsid = $.cookie('cookiesid').split(',');
            arrnum = $.cookie('cookienum').split(',');
        } else {
            arrsid = [];
            arrnum = [];
        }
    }


    $('.p-btn a').on('click', function() {
        cookietoarray(); //每次点击，重新获取cookie,转换成数组
        //先判断当前的商品是第一次存储，还是第二次或者多次存在。
        if ($.inArray(sid, arrsid) === -1) {
            arrsid.push(sid); //将当前商品的sid添加到数组中
            arrnum.push($('#count').val()); //将当前商品的数量添加到数组中
            //存储cookie
            $.cookie('cookiesid', arrsid, {
                expires: 7,
                path: '/'
            });
            $.cookie('cookienum', arrnum, {
                expires: 7,
                path: '/'
            });
        } else {
            //第二次或者多次无需创建商品列表，商品的编号不会发生变化。
            //对应的商品的数量进行累加。
            //随时获取当前商品的sid，通过sid的位置获取数量。
            arrnum[$.inArray(sid, arrsid)] = parseInt(arrnum[$.inArray(sid, arrsid)]) + parseInt($('#count').val()); //获取sid对应的数量+新加的值，再赋值给对应的位置

            //重新添加cookie
            $.cookie('cookienum', arrnum, {
                expires: 7,
                path: '/'
            });
        }
        alert('按钮被触发了');
    });

    function checklen() {
        if ($('#list ul li').length < 6) {
            $('#right').css('color', '#fff');
        }
    }

}();