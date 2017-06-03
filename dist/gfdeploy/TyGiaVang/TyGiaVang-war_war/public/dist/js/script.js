function display() {
    var today = new Date();
    var month = today.getMonth() + 1
    var day = today.getDate();
    var year = today.getFullYear();

    if (month < 10)
        month = '0' + month;

    if (day < 10)
        day = '0' + day;

    if (year < 10)
        year = '0' + year;

    var hour = today.getHours() > 12 ? today.getHours() - 12 : today.getHours();
    var minute = today.getMinutes();
    var seconds = today.getSeconds();

    if (hour < 10)
        hour = '0' + hour;

    if (minute < 10)
        minute = '0' + minute;

    if (seconds < 10)
        seconds = '0' + seconds;

    var output = ' ' + day + '/' +  month + '/' + year + ' - ' +
    hour + ':' + minute + ':' + seconds;

    document.getElementById("currentTime").innerHTML = output;
}

setInterval(display, 500);


