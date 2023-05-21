function signup() {
    let custom_user_name = $('#signup-name').val();
    let custom_user_nick = $('#signup-nick').val();
    let custom_user_pswd = $('#signup-pswd').val();
    let custom_user_repswd = $('#signup-Repeatpswd').val();
    let custom_user_email = $('#signup-email').val();
    let custom_user_birth = $('#signup-birth').val();
    let custom_user_phone = $('#signup-phone').val();
    let custom_user_addr = $('#signup-addr').val();

    const regex1 = /^[a-z0-9]{1,30}$/;

    if(custom_user_pswd != custom_user_repswd) {
        alert('비밀번호가 확인과 일치하지 않습니다');
        return;
    }

    if(!regex1.test(custom_user_nick)) {
        alert('아이디는 영문 숫자로 1~30자리로 입력해주세요');
        return;
    }

    custom_user_phone = custom_user_phone.replace(/[^0-9]/g, '');
    custom_user_birth = custom_user_birth.replace(/[^0-9]/g, '');

    $.ajax({
        type:"POST",
        url:"/signup",
        contentType:"application/json",
        data:JSON.stringify({
            custom_user_name:custom_user_name,
            custom_user_nick:custom_user_nick,
            custom_user_pswd:custom_user_pswd,
            custom_user_email:custom_user_email,
            custom_user_birth:custom_user_birth,
            custom_user_phone:custom_user_phone,
            custom_user_addr:custom_user_addr
        })
    })
    .done(function(response){
        if(response == 1) {
            alert("회원가입에 성공하였습니다!")
            window.location.href = '/login';
        } else if(response == 0) {
            alert("중복된 닉네임입니다.")
            window.location.reload(); 
        } else {
            alert("회원 가입에 실패하였습니다..")
            window.location.reload(); 
        }
    })
}

function ck_usernick() {
    let custom_user_nick = $('#signup-nick').val();
    let pTag = document.createElement('p');

    

    $.ajax({
        type:"POST",
        url:"/ckNick",
        contentType:"application/json",
        data:JSON.stringify({
            custom_user_nick:custom_user_nick
        })
    })
    .done(function(response){
        if(response == 0) {
            // alert("사용가능한 아이디 입니다.")
            document.getElementById('green').style.display = 'block'
            document.getElementById('red').style.display = 'none'
        } else {
            // alert("중복된 아이디 입니다.")
            document.getElementById('green').style.display = 'none'
            document.getElementById('red').style.display = 'block'
        }
    })
}
