/*
업무용 공통
*/

//  환경 변수 셋팅
let env = new Object();


function fnCmnPrc(objForm, reqParams, callbackFn){

    let resData = new Object();

    // console.log("fnCmnPrc 데이터 처리 시작 >>>>");
    // console.log("fnCmnPrc objForm",objForm);
    // console.log("fnCmnPrc reqParams",reqParams);

    for(key in reqParams) {
        
        //console.log("fnCmnPrc for value",reqParams[key]);

        this.fnSetData(objForm, key, reqParams[key]);
    } 

    let rmk  = Number(reqParams["testId"]) * Number(reqParams["testNm"]);
    let rmk2 = Number(reqParams["testId"]) + Number(reqParams["testNm"]);

    this.fnSetData(objForm, rmk, rmk);
    this.fnSetData(objForm, rmk2, rmk2);


    resData = this.fnSetObjtoJson(this.frmSearch2);

    console.log("fnCmnPrc resData",resData);

    callbackFn(resData);
}

/*
fnSetData 
요청 Params : form, 오브젝트 id, 값
*/
function fnSetData(objForm, key, value){
    //document.forms[frmName][key].setAttribute('value',value);

    // console.log("fnSetData 오브젝트 입력 값 넣기 시작 >>>>");
    // console.log("fnSetData objForm ",objForm);
    // console.log("fnSetData key",key);
    // console.log("fnSetData value",value);

    // 존재하는 경우에만
    if ( this.fnGetObj(objForm, key) ){
        document.forms[objForm.name][key].setAttribute('value',value);
    }
}

/*
fnGetData 
요청 Params : form, 오브젝트 id
*/
function fnGetData(objForm, key){

    let rtnVal = "";

    // console.log("fnGetData 오브젝트 입력 값 가져오기 시작 >>>>");
    // console.log("fnGetData objForm ", objForm);
    // console.log("fnGetData key ", key);

    // 존재하는 경우에만
    if ( this.fnGetObj(objForm, key) ){
        rtnVal = document.forms[objForm.name][key].value;
    }    

    return rtnVal;
}

/*
fnGetObj 
요청 Params : form, 오브젝트 id
*/
function fnGetObj(objForm, key){

    let rtnVal = "";

    // console.log("fnGetObj 오브젝트 존재 유무 확인 시작 >>>>");
    // console.log("fnGetObj objForm ",objForm);
    // console.log("fnGetObj key",key);

    var objType = typeof document.forms[objForm.name][key];

    if ( objType == "undefined"){
        rtnVal = false;
    }else{
        console.log(document.forms[objForm.name][key]);
        rtnVal = document.forms[objForm.name][key].getAttribute("type");
    }
    return rtnVal;

}


function fnAddEventListener(objForm, key, eventType, eventFnc){

    // console.log("fnAddEventListener 이벤트 추가 시작 >>>>");
    // console.log("fnAddEventListener objForm",objForm);
    // console.log("fnAddEventListener key",key);
    // console.log("fnAddEventListener eventType",eventType);
    // console.log("fnAddEventListener eventFnc",eventFnc);


    if ( this.fnGetObj(objForm, key) ){
        if ( eventType == "change"){
            document.forms[objForm.name][key].addEventListener(eventType, function(event){
                (new Function(  eventFnc + '('+event.target.id+');' ))();
            })
        }else if ( eventType == "keyup"){
            document.forms[objForm.name][key].addEventListener(eventType, function(event){
                if(event.isComposing){
                    return;
                }else{
                    (new Function(  eventFnc + '('+event.keyCode+');' ))();
                }
            })
        }

    }  
}


/*
fnSetObjtoJson 
요청 Params : form
*/
function fnSetObjtoJson(objForm){

    let jsonData = null;

    let objLen = document.forms[objForm.name].length;

    let obj = new Object();

    if ( objLen > 0 ){

        for( var i=0; i<objLen; i++){
            
            let objName = document.forms[objForm.name][i];

            let objType = this.fnGetObj(objForm, objName.id)

            if ( objType == "text" ){
                
                obj[objName.id] = objName.value;
            }            
        }

        jsonData = obj;
    }

    return jsonData;
}