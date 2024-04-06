var getList = new Array();
var cnt = 0;

//contextPath
function getContextPath() {
	
	var isUseable = false;
	var path = "";
	if(isUseable) {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		path = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	}
	return path;
};


//댓글 - 비밀글 show Html
function getDiscussShowHtml(obj) {
	var html = "";
	
	var cmtCnt = "";
	if(obj.cmtCnt > 0){
		cmtCnt = obj.cmtCnt;
	}
	
	var who = whoAreYou(obj);
	
	html += " <div class='reply-view-list-unit one-depth-unit' id='qnaForm_"+obj.courseQnaSeq+"'>";
	html += " 	<div class='reply-veiw-box-wrap'>";
	html += " 		<div class='reply-view-box'>";
	html += " 			<div class='view-box-header'>";
	html += " 				<div class='box-header-contents'>";
	html += who;
//	html += " 					<div class='box-header-person'>"+obj.regUserId+"</div>";
	html += " 					<div class='box-header-date'>"+obj.regDate+"</div>";
	if(obj.openYn == "N"){
		html += " 				<div class='box-header-icon'><i class='icon-lock'></i></div>";
	}
	html += " 				</div>";
	html += " 			</div>";
	html += " 			<div class='view-box-body'>";
	html += " 				<div class='box-body-content'>";
	html += " 					<div class='box-body-content-comment '>"+obj.qnaCtx.replace(/&lt;/gi, '<').replace(/&gt;/gi, '>')+"</div>";
	html += " 				</div>";
	html += " 			</div>";
	html += " 			<div class='view-box-footer' id='cmtForm_"+obj.courseQnaSeq+"'>";
	html += " 				<div class='box-footer-contents'>";
	html += " 					<div class='box-footer-btn-area'>";
	html += " 						<div class='view-box-btn'><button class='btn-reply' onclick='getComment(\""+obj.courseQnaSeq+"\")' >답글 "+cmtCnt+"</button></div>";
	html += " 						<div class='view-box-btn'><button class='btn-edit' onclick='updateDiscuss(\""+obj.regUserId+"\", \""+obj.qnaCtx+"\", \""+obj.courseQnaSeq+"\",\""+obj.openYn+"\")' >수정</button></div>";
	html += " 						<div class='view-box-btn'><button class='btn-delete' onclick='goDelete(\""+obj.regUserId+"\", \""+obj.courseQnaSeq+"\")' >삭제</button></div>";
	html += " 					</div>";
	html += " 				</div>";
	html += " 			</div>";
	html += " 		</div>";
	html += " 	</div>";
	html += " </div>";
	
	return html;
};

//댓글 -비밀글 hide Html
function getDiscussHideHtml(obj) {
	var html = "";
	
	var cmtCnt = "";
	if(obj.cmtCnt > 0){
		cmtCnt = obj.cmtCnt;
	}
	
	html += " <div class='reply-view-list-unit one-depth-unit' id='qnaForm_"+obj.courseQnaSeq+"'>";
	html += " 	<div class='reply-veiw-box-wrap'>";
	html += " 		<div class='reply-view-box'>";
	html += " 			<div class='view-box-header'>";
	html += " 				<div class='box-header-contents'>";
//	html += " 					<div class='box-header-person'>"+obj.regUserId+"</div>";
	html += " 					<div class='box-header-date'>"+obj.regDate+"</div>";
	html += " 					<div class='box-header-icon'><i class='icon-lock'></i></div>";
	html += " 				</div>";
	html += " 			</div>";
	html += " 			<div class='view-box-body'>";
	html += " 				<div class='box-body-content'>";
	html += " 					<div class='box-body-content-comment '>비밀글입니다.</div>";
	html += " 				</div>";
	html += " 			</div>";
	html += " 			<div class='view-box-footer' id='cmtForm_"+obj.courseQnaSeq+"'>";
//	html += " 				<div class='box-footer-contents'>";
//	html += " 					<div class='box-footer-btn-area'>";
//	html += " 						<div class='view-box-btn'><button class='btn-reply' onclick='getComment(\""+obj.courseQnaSeq+"\")' >답글 "+cmtCnt+"</button></div>";
//	html += " 						<div class='view-box-btn'><button class='btn-edit' onclick='updateDiscuss(\""+obj.regUserId+"\", \""+obj.qnaCtx+"\", \""+obj.courseQnaSeq+"\")' >수정</button></div>";
//	html += " 						<div class='view-box-btn'><button class='btn-delete' onclick='goDelete(\""+obj.courseQnaSeq+"\")' >삭제</button></div>";
//	html += " 					</div>";
//	html += " 				</div>";
	html += " 			</div>";
	html += " 		</div>";
	html += " 	</div>";
	html += " </div>";
	
	return html;
};




//comment setting - 대댓글
function setCommentHtml(obj){
	var html = "";
	
	var who = whoAreYou(obj);
	
	html +="<div class='reply-view-list-unit two-depth-unit' id='replyForm_"+obj.courseQnaCmtSeq+"' >";
	html +="	<div class='reply-left-icon'><i class='ft-corner-down-right'></i></div>";
	html +="	<div class='reply-veiw-box-wrap'>";
	html +="		<div class='reply-view-box'>";
	html +="			<div class='view-box-header'>";
	html +="				<div class='box-header-contents'>";
	html += who;
//	html +="					<div class='box-header-person'>"+obj.regUserId+"</div>";
	html +="					<div class='box-header-date'>"+obj.regDate+"</div>";
							if(obj.openYn =="N") { //비공개 여부
	html +="					<div class='box-header-icon'><i class='icon-lock'></i></div>";
							}
	html +="				</div>";
	html +="			</div>";
	html +="			<div class='view-box-body'>";
	html +="				<div class='box-body-content'>";
	html +="					<div class='box-body-content-comment '>"+obj.qnaCmtCtx.replace(/&lt;/gi, '<').replace(/&gt;/gi, '>')+"</div>";
	html +="				</div>";
	html +="			</div>";
	html +="			<div class='view-box-footer'>";
	html +="				<div class='box-footer-contents'>";
	html +="					<div class='box-footer-btn-area'>";
	html +="						<div class='view-box-btn'><button class='btn-edit' onclick='updateComment(\""+obj.regUserId+"\", \""+obj.qnaCmtCtx+"\" , \""+obj.courseQnaCmtSeq+"\", \""+obj.courseQnaSeq+"\")'>수정</button></div>";
	html +="						<div class='view-box-btn'><button class='btn-delete' onclick='goCmtDelete(\""+obj.regUserId+"\", \""+obj.courseQnaCmtSeq+"\", \""+obj.courseQnaSeq+"\")'>삭제</button></div>";
	html +="					</div>";
	html +="				</div>";
	html +="			</div>";
	html +="		</div>";
	html +="	</div>";
	html +="</div>";
	
	return html;
}

//답글 추가 html
function newCommentHtml(seq){
	cnt ++;
	
	var html = "";
	html += "<div class='reply-view-list-unit two-depth-unit' id='new-reply-"+cnt+"'>";
	html += "	<div class='reply-left-icon'><i class='ft-corner-down-right'></i></div>";
	html += "	<div class='reply-write-box-wrap'>";
	html += "		<div class='reply-write-box'>";
	html += "			<div class='write-box-header'>";
	html += "				<div class='box-header-person'>"+$("#userName").val()+"</div>";
	html += "			</div>";
	html += "			<div class='write-box-body'>";
	html += "				<div class='box-body-content'>";
	html += "					<div contenteditable='true' class='comment-box' id='context"+cnt+"' tabindex='-1' onkeyup='lengthChk(this,"+cnt+")' data-text='궁금한 점이나 함께 공유하고 싶은 내용을 남겨주세요.'></div>";
	html += "				</div>";
	html += "			</div>";
	html += "			<div class='write-box-footer'>";
	html += "				<div class='box-footer-contents'>";
	html += "					<div class='box-footer-leftside'>";
//	html += "						<div class='reply-closed'>";
//	html += "							<div class='d-inline-block form-check abc-checkbox abc-checkbox-info'>";
//	html += "								<input type='checkbox' class='custom-control-input' name='openCheck' id='openCheck"+cnt+"'><label class='custom-control-label' for='openCheck"+cnt+"'>비공개</label>";
//	html += "							</div>";															
//	html += "						</div>";
	html += "						<span class='reply-text-count' id='textLeng"+cnt+"'>0/400</span>";
	html += "					</div>	";
	html += "					<div class='box-footer-btn-area'>";
	html += "						<div class='write-box-btn'><button class='btn-cancel' onclick='goReplyCancel("+cnt+")'>취소</button></div>";
	html += "						<div class='write-box-btn'><button class='btn-register' onclick='goCmtWrite(\""+seq+"\","+cnt+")'>등록</button></div>";
	html += "					</div>";
	html += "				</div>";
	html += "			</div>";
	html += "		</div>";
	html += "	</div>";
	html += "</div>";
	
	return html;
	
}

//댓글 수정 html
function updateDiscussHtml(cmt, seq, openYn){
	cnt ++;
	
	var length = cmt.replace(/<\/?[^>]+(>|$)/g, "").trim().length;
	
	var html = "";
	html += "<div class='reply-write-box-wrap'>";
	html += "	<div class='reply-write-box mb-Half'>";
	html += "		<div class='write-box-header'>";
	html += "			<div class='box-header-person'>"+$("#userName").val()+"</div>";
	html += "		</div>";
	html += "		<div class='write-box-body'>";
	html += "			<div class='box-body-content'>";
	html += "				<div contenteditable='true' class='comment-box' id='context"+cnt+"' tabindex='-1' onkeyup='lengthChk(this,"+cnt+")' data-text='궁금한 점이나 함께 공유하고 싶은 내용을 남겨주세요.'>"+cmt+"</div>";
	html += "			</div>";
	html += "		</div>";
	html += "		<div class='write-box-footer'>";
	html += "			<div class='box-footer-contents'>";
	html += "				<div class='box-footer-leftside'>";
	html += "					<div class='reply-closed'>";
	html += "						<div class='d-inline-block form-check abc-checkbox abc-checkbox-info'>";
									if(openYn == "Y"){
	html += "							<input type='checkbox' class='custom-control-input' name='openCheck' id='openCheck"+cnt+"'><label class='custom-control-label' for='openCheck"+cnt+"'>비공개</label>";
										
									}else {
	html += "							<input type='checkbox' class='custom-control-input' name='openCheck' id='openCheck"+cnt+"' checked><label class='custom-control-label' for='openCheck"+cnt+"'>비공개</label>";
									}
	html += "						</div>";															
	html += "					</div>";
	html += "					<span class='reply-text-count' id='textLeng"+cnt+"'>"+length+"/400</span>";
	html += "				</div>";
	html += "				<div class='box-footer-btn-area'>";
	html += "					<div class='write-box-btn'><button class='btn-cancel' onclick='goModifyCancel()'>취소</button></div>";
	html += "					<div class='write-box-btn'><button class='btn-register' onclick='goUpdate(\""+seq+"\","+cnt+")'>수정</button></div>";
	html += "				</div>";
	html += "			</div>";
	html += "		</div>";
	html += "	</div>";
	html += "</div>";
	
	return html;
}


//대댓글 수정 html
function modifyCommentHtml(cmt, seq, upSeq){
	cnt ++;
	
	var length = cmt.replace(/<\/?[^>]+(>|$)/g, "").trim().length;
	
	var html = "";
	html += "	<div class='reply-left-icon'><i class='ft-corner-down-right'></i></div>";
	html += "	<div class='reply-write-box-wrap'>";
	html += "		<div class='reply-write-box'>";
	html += "			<div class='write-box-header'>";
	html += "				<div class='box-header-person'>"+$("#userName").val()+"</div>";
	html += "			</div>";
	html += "			<div class='write-box-body'>";
	html += "				<div class='box-body-content'>";
	html += "					<div contenteditable='true' class='comment-box' id='context"+cnt+"' tabindex='-1' onkeyup='lengthChk(this,"+cnt+")' data-text='궁금한 점이나 함께 공유하고 싶은 내용을 남겨주세요.'>"+cmt+"</div>";
	html += "				</div>";
	html += "			</div>";
	html += "			<div class='write-box-footer'>";
	html += "				<div class='box-footer-contents'>";
	html += "					<div class='box-footer-leftside'>";
//	html += "						<div class='reply-closed'>";
//	html += "							<div class='d-inline-block form-check abc-checkbox abc-checkbox-info'>";
//	html += "								<input type='checkbox' class='custom-control-input' name='openCheck' id='openCheck"+cnt+"'><label class='custom-control-label' for='openCheck"+cnt+"'>비공개</label>";
//	html += "							</div>";															
//	html += "						</div>";
	html += "						<span class='reply-text-count' id='textLeng"+cnt+"'>"+length+"/400</span>";
	html += "					</div>	";
	html += "					<div class='box-footer-btn-area'>";
	html += "						<div class='write-box-btn'><button class='btn-cancel' onclick='goModifyCmtCancel(\""+upSeq+"\")'>취소</button></div>";
	html += "						<div class='write-box-btn'><button class='btn-register' onclick='goCmtUpdate(\""+seq+"\","+cnt+",\""+upSeq+"\")'>수정</button></div>";
	html += "					</div>";
	html += "				</div>";
	html += "			</div>";
	html += "		</div>";
	html += "	</div>";
	
	return html;
	
}


//관리자or강사or댓글작성자 확인
function whoAreYou(obj){
	var html = "";
	
	//내가 쓴 댓글인지 확인
	if(obj.regUserId == $("#userId").val()){
		html += "<div class='box-header-person light-green'>"+obj.regUserId;
	} else {
		html += "<div class='box-header-person'>"+obj.regUserId;
	}
	
	//강사이면?
	if(obj.regUserId == $("#courseTeacherUserId").val()) { //강사
//		html += "<div style='color:#f1761f'>(강사)</div>";
		html += "&nbsp;&nbsp;&nbsp;<span class='badge-pill badge-sm badge-orange ml-5'>강사</span>";
	}
	
	html +="</div>"
	
	return html;
}



//댓글 수정 form 변환
function updateDiscuss(id, cmt, seq, openYn){
	
	if(id != $("#userId").val()){
		alertModal("토론방","본인이 등록한 댓글만 수정 할 수 있습니다.",null,"");
		return;
	}
	
	$("#qnaForm_"+seq).empty();
	var html = updateDiscussHtml(cmt, seq, openYn);
	$("#qnaForm_"+seq).append(html);
	
}

//대댓글 수정 Form 변환
function updateComment(id, cmt, seq, upSeq){
	
	if(id != $("#userId").val()){
		alertModal("토론방","본인이 등록한 댓글만 수정 할 수 있습니다.",null,"");
		return;
	}
	
	$("#replyForm_"+seq).empty();
	var html = modifyCommentHtml(cmt, seq, upSeq);
	$("#replyForm_"+seq).append(html);
	
}

//수정-취소
function goModifyCancel(){
	goList($("#currentPage").val());
}

//대댓글 수정 -취소
function goModifyCmtCancel(seq){
	$("#cmtForm_"+seq).find(".two-depth-unit").remove();
	getList.splice(getList.indexOf(seq),1);
	getComment(seq);
}

//글자 수 체크 (length)
function lengthChk(obj, cnt){
	var context = $(obj).text().replace(/&nbsp;/gi, '');
	context = context.replace(/<\/?[^>]+(>|$)/g, "").trim();
	var length = context.length;
	
	if(length > 400){
		alertModal("토론방","400자 이하로 작성하여주세요.",null,"");
		$(obj).text($(obj).text().substring(0,400));
	} else{
		$("#textLeng"+cnt).text(length+"/400");
	}
}


//취소
function goCancel(cnt){
	$("#context"+cnt).text("");
	$("#textLeng"+cnt).text("0/400");
	$("#openCheck"+cnt).prop("checked",false);
}

//답글 취소
function goReplyCancel(cnt){
	$("#new-reply-"+cnt).remove();
}



//페이징/새로고침
function goList(num){
	getList = new Array();
	$("#currentPage").val(num);
	discussList();
}