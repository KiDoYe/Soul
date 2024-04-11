function requestPay() {

    const dataContainer = document.getElementById("dataContainer");
    var memberInfo = JSON.parse(dataContainer.getAttribute("memberInfo"));
    var paymentInfo;

    var IMP = window.IMP;
    IMP.init('imp88764185');
    var msg;

    function formatPhoneNumber(phoneNumber) {
        return phoneNumber.slice(0, 3) + "-" + phoneNumber.slice(3, 7) + "-" + phoneNumber.slice(7);
    }

    console.log('로그1');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: Date.now(), // 상점에서 관리하는 주문 번호를 전달
        name: 'CHALKAG BOOST',
        amount: '9900',
        buyer_email: memberInfo.memberId,
        buyer_name: memberInfo.memberName,
        buyer_tel: formatPhoneNumber(memberInfo.memberPh) // - 값을 달아줘야함
    }, function (rsp) { // callback 로직
        if (rsp.success) {
            // [1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달. 안승준
            console.log(rsp);
            $.ajax({
                url: "payment",
                type: 'POST',
                dateType: 'json',
                data: {
                    imp_uid: rsp.imp_uid,
                    memberId: rsp.buyer_email,
                    orderId: rsp.merchant_uid,
                    amount: rsp.paid_amount
                }
            }).done(function (data) {
                // [2] 서버에서 REST API로 결제정보 확인 및 서비스루틴이 정상적인 경우
                if (data) {
				  swal({
				      title: 'success',
				      text: '결제가 완료되었습니다.',
				      type: 'success',
				      confirmButtonText: 'OK'
				    }, function(isConfirmed) {
				      if (isConfirmed) {
				        window.location.href = 'main';
				      }
				    });
                } else {
                    swal("fail", "결제를 취소했습니다", "error", {
                        button: "OK",
                    });
                }
            });
        } else {
            swal("fail", `결제에 실패하였습니다. \n에러내용 : ${rsp.error_msg}`, "error", {
                button: "OK",
            });
        }
    });
}