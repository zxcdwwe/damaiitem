define([], function() {
    const $goodslist = $('.cart-list .wrap');
    return {
        init:function ($) {
            $.ajax({
                url: 'http://localhost/damai/php/list.php',
                
            }).done(function (data) {
                let $shop = JSON.parse(data);
                console.log($shop);
                var $str = '';
                for (let value of $shop) {
                        $str += `
                        <div class="shop_car">
                        <div class="shop_checkbox">
                            <input type="checkbox">
                        </div>
                        <div class="shop_right">
                            <div class="shop_img">
                                <img src="${value.url}"
                                    alt="">
                            </div>
                            <div class="shop_name">
                                <span>${value.title}</span>
                                <span class="cursor">1个</span>
                            </div>
                            <div class="shop_price">
                                <span>￥${value.min_price}.00</span>
                            </div>
                            <div class="shop_number">
                                <div class="number">
                                    <span class="iconfont icon-jian"></span>
                                    <input type="text" value="1">
                                    <span class="iconfont icon-tianjia-"></span>
                                </div>
                            </div>
                            <div class="sum">
                                <span>￥39.00</span>
                            </div>
                            <div class="del">
                                <span>删除</span>
                            </div>
                        </div>
                    `;
                    $goodslist.html($str+='</div>');
                }
            })
        }(jQuery)
    }
    
});

