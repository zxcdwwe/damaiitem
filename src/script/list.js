; !function ($) {
    const $goodslist = $('.item_box');
    $.ajax({
        url: 'http://localhost/damai/php/list.php',
        
    }).done(function (data) {
        let $shop = JSON.parse(data);
        console.log($shop);
        // 区块数量
        var $str = '';
        for (let value of $shop) {
                $str += `
                <div class="item">
                <a href="details.html">
                <span class="position_span">话剧歌剧</span>
                
                <img src="${value.url}"
                    alt="">
            </a>
            <div class="item_right">
                <p class="item_title"><span>【上海】</span><a
                        href="//detail.damai.cn/item.htm?id=622281108237&amp;clicktitle=%E5%BC%80%E5%BF%83%E9%BA%BB%E8%8A%B1%E7%88%86%E7%AC%91%E8%88%9E%E5%8F%B0%E5%89%A7%E3%80%8A%E7%89%A2%E5%8F%8B%E8%AE%B0%E3%80%8B"
                        target="_blank">${value.title}</a>
                </p>
                <p class="item_adress items">
                    <span></span>
                    上海|上戏实验剧院
                </p>
                <p class="item_time items">
                    ${value.time}
                </p>
                <p class="item_check">
                    <span>可选座</span>
                </p>
                <div class="item_price">
                    <span>${value.price}<i>元</i></span>
                    售票中
                </div>
            </div>
            `;
            $goodslist.html($str+='</div>');
        }
    })

    //分页
    $('.page').pagination({
        pageCount: 10, //总的页数
        jump: true, //是否开启跳转到指定的页数，布尔值。
        // coping: true, //是否开启首页和尾页，布尔值。
        prevContent: '上一页',
        nextContent: '下一页',
        // homePage: '首页',
        // endPage: '尾页',
        callback: function(api) {
            console.log(api.getCurrent()); //获取当前的页码
            $.ajax({
                url: 'http://localhost/damai/php/listdata.php',
                data: { //将获取的页码给后端
                    page: api.getCurrent()
                },
                dataType: 'json'
            }).done(function(data) { //根据传递的页码，后端返回相应的数据，进行渲染。
                let $strhtml = '<ul>';
                $.each(data, function(index, value) {
                    $strhtml += `
                        <li>
                            <a href="detail.html?sid=${value.sid}" target="_blank">
                                <img src="${value.url}"/>
                                <p>${value.sid}${value.title}</p>
                                <span class="price">￥${value.price}</span>
                                <span>${value.sailnumber}</span>
                            </a>
                        </li>
                    `;
                });
                $strhtml += '</ul>';
                $list.html($strhtml);
                //渲染结束。

                //分页后进行对应的赋值和排序。
                array_default = []; //排序前的li数组
                array = []; //排序中的数组
                prev = null;
                next = null;

                //将页面的li元素加载到两个数组中
                $('.list li').each(function(index, element) {
                    array[index] = $(this);
                    array_default[index] = $(this);
                });
            })
        }
    });

}(jQuery);