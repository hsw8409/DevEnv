/*
업무용 공통
*/

//  환경 변수 셋팅
let env = new Object();


function fnCmnPrc(requstParam, callbackFn){

    for(key in requstParam) {
        console.log(key);
        console.log(requstParam[key]);
    } 


    callbackFn();

}