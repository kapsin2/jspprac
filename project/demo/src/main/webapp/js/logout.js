function logout() {

    $.ajax({
        type:"POST",
        url:"/logout"
    })
    .done(function(response){
        if(response == 1) {
            alert("로그아웃에 성공하였습니다!")
            window.location.reload();
        } else {
            alert("로그아웃에 실패하였습니다!")
        }
    })
}