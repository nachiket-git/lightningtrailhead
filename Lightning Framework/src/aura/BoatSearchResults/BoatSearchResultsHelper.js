({
	onSearch : function(cmp) {
        var action = cmp.get("c.getBoats");
        var boatTypId = cmp.get("v.boatTypeId");
        action.setParams({boatTypeIdVar:boatTypId});
        //action.setParam({"boatTypeIdVar":boatTypeId});
        action.setCallback(this, function(response){
            var status = response.getState();
            if(status === "SUCCESS") {
                //if(! $A.util.isEmpty(response.getReturnValue())){
                    cmp.set("v.boats",response.getReturnValue()); 
                //} else {
                    //cmp.set("v.recordError","No boats found");
               // }
            }
        });
        $A.enqueueAction(action);
	}
})