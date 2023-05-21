function createboard() {
    let board_title = $('#board-title').val();
    let board_writer = $('#board-writer').val();
    let board_text = $('#board-text').val();

    const fileInput = document.getElementById("board-file");
    var board_img_path = fileInput.value;

    if (board_title === '') {
        alert("제목을 입력해주세요");
    } else if (board_writer === '') {
        alert("이름을 입력해주세요");
    } else if (board_text === '') {
        alert("내용을 입력해주세요");
    } else {
        $.ajax({
            type: "POST",
            url: "/board",
            contentType: "application/json",
            data: JSON.stringify({
                board_title: board_title,
                board_writer: board_writer,
                board_text: board_text,
                board_img_path: board_img_path
            })
        })
        .done(function(response) {
            if (response === 1) {
                alert("글작성이 완료되었습니다.");
                window.location.href = '/boards';
            } else {
                alert("글작성이 실패했습니다.");
                window.location.reload();
            }
        });
    }
}


function getAllBoards() {
    $.ajax({
        url: "/allBoards",
        type: 'GET',
        contentType: "application/json;",
        success: function (response) {
          console.log(response);
    
          let rows = response;
    
          $('#board-body').empty();
    
          for (let i = 0; i < rows.length ; i++) {
            let seq = rows[i]['board_seq'];
            let title = rows[i]['board_title'];
            let writer = rows[i]['board_writer'];
            let text = rows[i]['board_text'];
    
    
            let temp_html = `
                        <tr>
                            <th><input type="checkbox" name="boardCheck" value=${seq}></th>
                            <th>${seq}</th>
                            <th onclick="location.href='oneboard'+'?seq=${seq}'">${title}</th>
                            <th>${text}</th>
                            <th>${writer}</th>
                        </tr>
                `;
            $('#board-body').append(temp_html);
          }
        }
    })
}

function searchBoards() {
    let search = $('#search-word').val();

    console.log(search);

    $.ajax({
        url: "/searchBoards?search=" + search,
        type: 'GET',
        contentType: "application/json;",
        success: function (response) {
          console.log(response);
    
          let rows = response;
    
          $('#board-body').empty();
    
          for (let i = 0; i < rows.length ; i++) {
            let seq = rows[i]['board_seq'];
            let title = rows[i]['board_title'];
            let writer = rows[i]['board_writer'];
            let text = rows[i]['board_text'];
    
    
            let temp_html = `
                        <tr>
                            <th><input type="checkbox" name="" value=""></th>
                            <th>${seq}</th>
                            <th>${title}</th>
                            <th>${text}</th>
                            <th>${writer}</th>
                        </tr>
                `;
            $('#board-body').append(temp_html);
          }
        }
    })
}

function oneboard() {
    const urlParams = new URLSearchParams(window.location.search);
    const seq = urlParams.get('seq');

    $.ajax({
        url: "/board/"+seq,
        type: 'GET',
        contentType: "application/json;",
        success: function (response) {
          console.log(response);
    
          let rows = response;

          let title = rows['board_title'];
          let writer = rows['board_writer'];
          let text = rows['board_text'];
          let image = rows['board_img_path'];

          let temp_html = `
          <div class="form-group">
          <h3>제목</h3>
          <label for="signin-email" class="control-label sr-only">제목</label>
          <a class="form-control">${title}</a>
      </div>
      <div class="form-group">
          <h3>작성자</h3>
          <label for="signin-email" class="control-label sr-only">Nick</label> 
          <a class="form-control">${writer}</a>
      </div>
      <div class="form-group">
          <h3>내용</h3>
          <label for="signin-password" class="control-label sr-only">Pwd</label>
          <a id="board-text" cols="30" rows="10" class="form-control" >${text}</a>
      </div>
      <div class="form-group">
          <h3>파일</h3>
          <label for="signin-password" class="control-label sr-only">RepeatPwd</label>
          <a class="form-control">${image}</a>
      </div>
      <div style="text-align: center;">
            <button type="button" onclick="location.href='updateboard'+'?seq=${seq}'">수정</button>
            <button type="button"  onclick="deleteboard()">삭제</button>						
      </div>
          `;

          $('#oneboard').append(temp_html);
        }
    })
}

function oneboard_update() {
    const urlParams = new URLSearchParams(window.location.search);
    const seq = urlParams.get('seq');

    $.ajax({
        url: "/board/"+seq,
        type: 'GET',
        contentType: "application/json;",
        success: function (response) {
          console.log(response);
    
          let rows = response;

          let title = rows['board_title'];
          let writer = rows['board_writer'];
          let text = rows['board_text'];
          let image = rows['board_img_path'];

          let temp_html = `
          <div class="form-group">
								<h3>제목</h3>
								<label for="signin-email" class="control-label sr-only">제목</label>
								<input type="text" class="form-control" id="board-title" value=${title}>
							</div>
							<div class="form-group">
								<h3>작성자</h3>
								<label for="signin-email" class="control-label sr-only">Nick</label> 
								<input type="text" class="form-control" id="board-writer"  value=${writer}> 
							</div>
							<div class="form-group">
								<h3>내용</h3>
								<label for="signin-password" class="control-label sr-only">Pwd</label>
								<textarea id="board-text" cols="30" rows="10" class="form-control" >${text}</textarea>
							</div>
							<div class="form-group">
								<h3>파일</h3>
								<label for="signin-password" class="control-label sr-only">RepeatPwd</label>
								<input type="file" class="form-control" id="board-file"  value=${image}>
							</div>
          `;

          $('#updateboard').append(temp_html);
        }
    })
}

function updateboard() {
    const urlParams = new URLSearchParams(window.location.search);
    const seq = urlParams.get('seq');

    let board_title = $('#board-title').val();
    let board_writer = $('#board-writer').val();
    let board_text = $('#board-text').val();

    const fileInput = document.getElementById("board-file");
    var board_img_path = fileInput.value;

    let boardList = [];
    let listdata = {"board_title" : board_title ,
                    "board_writer" : board_writer,
                    "board_text" : board_text,
                    "board_img_path":board_img_path};
        boardList.push(listdata);

        $.ajax({
            type: "PATCH",
            url: "/board/"+seq,
            contentType: "application/json",
            data: JSON.stringify(boardList)
        })
        .done(function(response) {
            if (response === 1) {
                alert("수정이 완료되었습니다.");
                window.location.href = '/boards';
            } else {
                alert("수정이 실패했습니다.");
                window.location.reload();
            }
        });
    
}

function deleteboard() {
    const urlParams = new URLSearchParams(window.location.search);
    const seq = urlParams.get('seq');

    $.ajax({
        url: "/d-board/"+seq,
        type: 'PATCH',
        contentType: "application/json;",
        success: function (response) {
            if (response === 1) {
                alert("게시물 삭제가 완료되었습니다.");
                window.location.href = '/boards';
            } else {
                alert("게시물 삭제가 실패했습니다.");
                window.location.reload();
            }
        }
    })
}

function multipleDelete() {
    var checkBoxArr = []; 
    $("input:checkbox[name='boardCheck']:checked").each(function() {
    checkBoxArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
    })
    console.log(checkBoxArr);

    $.ajax({
        type  : "PATCH",
        url    : "/multipleDelete",
        data: {
        checkBoxArr : checkBoxArr        // folder seq 값을 가지고 있음.
        },
        success: function(result){
            alert("게시물 삭제가 완료되었습니다.");
            window.location.href = '/boards';
        } 
     });

}