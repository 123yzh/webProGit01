/**********************************************************************
* Author		: 江浩源
* Date			:2014-01-13
* Description	:全国省市区三级联动
**********************************************************************/
 /**
  省ID为 ddlProvinces  onchange="proChange()"
  市ID为 ddlCities  onchange="cityChange()"
  区ID为 ddlAreas  
  **/

/**
      <div>
        <select  id="ddlProvinces" onchange="proChange()">
        </select>
        <select  id="ddlCities" onchange="cityChange()">
        </select>
        <select  id="ddlAreas" onchange="areaChange()">
        </select>
        <%--省ID--%>
        <input  type="hidden" id="province"/>
     <%--   市ID--%>
          <input  type="hidden" id="city" />
          <%--区ID--%>
            <input  type="hidden" id="areas"/>
    </div>
        
        **/      



//加载省份数据   defaultValue ：参数可设默认值
function LoadPro(defaultValue) {
    $.getJSON("/Ajax/Ajax_Province.aspx",{t:"province"}, function (json) {
        for (var i = 0; i < json.length; i++) {
            document.getElementById("ddlProvinces").options.add(new Option(json[i].ProvinceName, json[i].Id));
            if (document.getElementById("ddlProvinces").options[i].value == defaultValue) {
                document.getElementById("ddlProvinces").options[i].selected = true;
            }
        }
    });
             document.getElementById("ddlProvinces").options.add(new Option("省份", 0));
             
    $("#ddlProvinces").val(defaultValue);

}

//加载市数据   parId:省ID     defaultValue：参数可设默认值
function LoadCity(parId, defaultValue) {

    document.getElementById("ddlCities").options.length = 0; //清空之后再加载
    document.getElementById("ddlCities").options.add(new Option("城市", 0));

    if (parId == 0) {
    	return;
    }

    $.getJSON("/Ajax/Ajax_Province.aspx" ,{t:"city",id:parId} , function (json) {

	    for (var i = 0; i < json.length; i++) {
		    document.getElementById("ddlCities").options.add(new Option(json[i].CityName, json[i].Id));
		    if (document.getElementById("ddlCities").options[i].value == defaultValue) {
			    document.getElementById("ddlCities").options[i].selected = true;
		    }
	    }

        $("#ddlCities").val(defaultValue);
        //$("#ddlCities").prepend("<option value='0'>城市</option>"); 
    });
}




//省份更改事件  
function proChange() {
    var obj = document.getElementById("ddlProvinces"); //定位     
    var index = obj.selectedIndex; // 选中索引
    var value = obj.options[index].value;
    LoadCity(value);
    $("#province").val($("#ddlProvinces").val());
    //document.getElementById("ddlCities").options.add(new Option("城市", 0));
}

//市的更改事件   
function cityChange() {
    var obj = document.getElementById("ddlCities"); //定位id
    var index = obj.selectedIndex; // 选中索引
    var value = obj.options[index].value;
    $("#city").val($("#ddlCities").val());
}



        