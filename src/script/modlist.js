define([], function() {
    const $goodslist = $('.item_box');
    return {
        init:function () {
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
                        <a href="details.html?did=${value.did}" target="_blank">
                        <span class="position_span">话剧歌剧</span>
                        
                        <img src="${value.url}"
                            alt="">
                    </a>
                    <div class="item_right">
                        <p class="item_title"><span>【上海】</span><a
                                href="details.html?did=${value.did}"
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
            });
        
            //分页
            $('.page').pagination({
                pageCount: 6, //总的页数
                jump: true, //是否开启跳转到指定的页数，布尔值。
                prevContent: '上一页',
                nextContent: '下一页',
                callback: function(api) {
                    console.log(api.getCurrent()); //获取当前的页码
                    $.ajax({
                        url: 'http://localhost/damai/php/listdata.php',
                        data: { //将获取的页码给后端
                            page: api.getCurrent()
                        },
                        dataType: 'json'
                    }).done(function (data) {
                        let $shop = JSON.parse(data);
                        console.log($shop);
                        // 区块数量
                        var $str = '';
                        for (let value of $shop) {
                                $str += `
                                <div class="item">
                                <a href="details.html?did=${value.did}" target="_blank">
                                <span class="position_span">话剧歌剧</span>
                                
                                <img src="${value.url}"
                                    alt="">
                            </a>
                            <div class="item_right">
                                <p class="item_title"><span>【上海】</span><a
                                        href="details.html?did=${value.did}"
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
        
        }(jQuery)
    }
    
});
