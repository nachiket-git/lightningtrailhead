({
	doSearch : function(component, event, helper) {
		 helper.onSearch(component);
	},

    search: function(component, event, helper){
        console.log("BSRController: search called");
        var params = event.getParam('arguments');
        console.log("boatTypeId extracted: " + params.boatTypeId);
        component.set("v.boatTypeId", params.boatTypeId);
        helper.onSearch(component);
        return "search complete.";
    },
    
    onBoatSelect : function(component, event, helper) {
		console.log("event recieved from boatsearchresult.js");
        var selectedBoatId = event.getParam("boatId");
        console.log("selectedBoatId====="+selectedBoatId);
        component.set("v.selectedBoatId",selectedBoatId);
	}
    
    
})