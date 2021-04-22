window.onload = function() {
    let elem = document.querySelector(".se-pre-con");
    elem.style.transition = "opacity 1s";
    setTimeout(function() {
        elem.style.opacity = 0;
        elem.style.zIndex = 0;
    }, 1000);
};

/* ======Date======= */

function myDate() {
    let updateTime = (k) => {
        k < 10 ? (k = "0" + k) : "";
        return k;
    };
    let updateDay = (l) => {
        l < 10 ? (l = "0" + l) : "";
        return l;
    };

    let months = [
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
            "August",
            "September",
            "October",
            "November",
            "December"
        ],
        days = [
            "Sun",
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat"
        ];

    const displayDay = document.querySelector("#day");
    const displayTime = document.querySelector("#time");

    let date = new Date();

    let year = date.getFullYear();
    let month = date.getMonth();
    let day = date.getDay();
    let num = date.getDate();
    let hour = date.getHours();
    let min = date.getMinutes();
    let sec = date.getSeconds();

    hour = updateTime(hour);
    min = updateTime(min);
    sec = updateTime(sec);

    displayDay.innerHTML =
        days[day] + ", " + months[month] + " - " + num + "th" + ", " + year;
    displayTime.innerHTML = hour + " : " + min + " : " + sec;

    setTimeout(function() {
        myDate();
    }, 1000);
}

myDate();