function getTransSentence() {
    let sentence = $('#api-korean').val();

    if (sentence === '') {
        alert("내용을 입력해주세요");
    }

    console.log(sentence);

    $.ajax({
        url: "/api/sentence?sentence=" + sentence,
        type: 'GET',
        contentType: "application/json;",
        success :function (response) {

            console.log(response);

            let rows = response;

            const parsedResponse_cn = JSON.parse(rows[0]);
            const parsedResponse_en = JSON.parse(rows[1]);

            // translatedText 값 가져오기
            const cn = parsedResponse_cn.message.result.translatedText;
            const en = parsedResponse_en.message.result.translatedText;

            let temp_html_cn = `<p>${cn}</p>`;
            let temp_html_en = `<p>${en}</p>`;

            $('#api-chinese').empty();
            $('#api-english').empty();

            $('#api-chinese').append(temp_html_cn);
            $('#api-english').append(temp_html_en);


            }
        
    })

}