define([], function() {
    const $goodslist = $('.kindlist .right');
    return {
        init: function(){
        $.ajax({
            url: 'http://localhost/damai/php/list.php',
        }).done(function (data) {
            let $shop = JSON.parse(data);
            console.log($shop);
            // 区块数量
            let $areaNum = parseInt($shop.length / 6);
            let $shopObj = {};
            for (let $i = 1; $i <= $areaNum; $i++) {
                let $temp = [];
                let $start = ($i - 1) * 6
                let $end = ($i - 1) * 6 + 6;
                let $arr = $shop.slice($start, $end);
                $shopObj[$i - 1] = $arr; 
            }
            console.log($shopObj);
            for (let $i in $shopObj) {
                var $str = ' <div class="right_1">';
                $shopObj[$i].forEach((value, index) => {
                    $str += `
                <div class="div_1">
                <a href="details.html?sid=${value.Did}" target="_blank">
                 <img src="${value.url}" />
                 <div class="right_div">
                 <p>${value.title}</p>
                 <p>${value.adress}</p>
                 <p>${value.time}</p>
                 <div class="price">¥${value.min_price}<span>起</span></div>
                 </div>
                </a>
                </div>
                `;
                });
                $goodslist[$i].innerHTML = $str += '</div>' ;
            }
        })
    }
}
});