/**
 * 
 */
	//게시글 삭제 스크립트
	const communityForm = document.communityForm;
	console.log("communityForm====>",communityForm);
	communityForm.onsubmit  =  function(e) {
		console.log("ㅎㅇ")
		e.preventDefault(); 
		
		let data = {
				pstNo : communityForm.pstNo.value
		};
		
		console.log("data ===> ",data);
		
		let url = cPath + "/lessee/community";
		
		$.ajax({
			url: url,
			type:'DELETE',
			contentType: "application/json;charset=UTF-8",
	        data: JSON.stringify(data),
	        dataType: 'text',
	        success: function(resp) {
	            console.log('반환값 ===>', resp);
	            if(resp =="success"){
	            	Swal.fire({
           				   title: '삭제완료',
	            		   text: '삭제가 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = cPath + "/lessee/community";
	            		}))
	            }
	        },
	        error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}
	
	//게시글 신고 스크팁트
	const postingReportForm = document.postingReportForm;
	console.log("postingReportForm====>",postingReportForm);
	
	postingReportForm.onsubmit = function(e){
		e.preventDefault();
		
		let data = {
			pstNo: postingReportForm.pstNo.value
			,pstRprtSj:postingReportForm.pstRprtSj.value
			,pstRprtCn:postingReportForm.pstRprtCn.value
		};
		console.log("data ===> ",data);
		
		let url = cPath + "/lessee/community/report";
		
		$.ajax({
			url:url,
			type:'POST',
			contentType: "application/json;charset=UTF-8",
	        data: JSON.stringify(data),
	        dataType: 'text',
			success: function(resp){
				 if(resp =="success"){
	            	Swal.fire({
           				   title: '신고완료',
	            		   text: '신고가 완료되었습니다.',
	            		   icon: 'success',
	            		}).then((result=>{
	            	location.href = cPath + "/lessee/community";
	            		}))
	            }
			},			
			error: function(xhr) {
	            console.log('Error:', xhr.status);
	        }
		})
	}