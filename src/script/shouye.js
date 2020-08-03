;
!function(){
    const goodslist = document.querySelector('.right');
    $.ajax({
        url:'http://localhost/damai/php/list.php',
    }).then(function(data){
        let shop = JSON.parse(data);
        console.log(shop);
        var str = '<div class="div_1">';
        for(let value of shop){
            console.log(value);
            str +=`
            <a href="details.html?sid=${value.Did}" target="_blank">
             <img src="${value.url}" />
             <div class="right_div">
             <p>${value.title}</p>
             <p>${value.adress}</p>
             <p>${value.time}</p>
             <div class="price">¥${value.min_price}<span>起</span></div>
             </div>
            </a>
            `;
        }
        str += '</div>';
        goodslist.innerHTML = str;
    })
}();