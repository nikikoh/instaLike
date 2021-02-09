import $ from 'jquery';

unction displayTimer() {
    var nowTime = new Date(); //現在時刻を得る

    // 時間と分数を抜き出す
    var nowHour = nowTime.getHours();
    var nowMin  = nowTime.getMinutes();
    
    // 現在時刻
    showTimer = nowHour + ':' + nowMin;
    
    document.getElementById('getTimer').innerHTML = showTimer;
}

// 1000msごとに更新
setInterval(displayTimer(), 1000);

alert('こんにちは')