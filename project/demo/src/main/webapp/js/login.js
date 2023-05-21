function login() {
    let custom_user_nick = $("#nick").val();
    let custom_user_pswd = $("#pswd").val();

    if(custom_user_nick == "") {
        alert("아이디를 입력해주세요");
        return;
    } else if(custom_user_pswd == "") {
        alert("비밀번호를 입력해주세요");
        return;
    }

    $.ajax({
        type:"POST",
        url:"/login",
        contentType:"application/json",
        data:JSON.stringify({
            custom_user_nick : custom_user_nick,
            custom_user_pswd : custom_user_pswd})
    })
    .done(function(response,status,xhr){
        if(response == 1) {
            alert("로그인에 성공하였습니다!")
            window.location.href = '/index';
        } else {
            alert("아이디와 비밀번호를 확인해주세요")
            window.location.reload();
        }
    })
}