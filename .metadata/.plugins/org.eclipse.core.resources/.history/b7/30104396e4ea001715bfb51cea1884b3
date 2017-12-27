({
	onBoatClick : function(component, event, helper) {
        console.log("event fired from boatTile.js");
		var requestNewBoat = component.getEvent("BoatSelect");
        console.log("component.get(v.boat).Id =="+component.get("v.boat").Id);
        requestNewBoat.setParams({"boatId": component.get("v.boat").Id});
        requestNewBoat.fire();
        console.log("Event Fired");
        
        var boatSelected = $A.get("e.c:BoatSelected");//component.getEvent("BoatSelected");
        console.log("component.get(v.boat).Id =="+component.get("v.boat").Id);
        boatSelected.setParams({"boat": component.get("v.boat")});
        boatSelected.fire();
        /*
        var PlotMapMarker = $A.get("e.c:PlotMapMarker");//component.getEvent("BoatSelected");
        console.log("component.get(v.boat).Id =="+component.get("v.boat").Id);
        var boat = component.get("v.boat");
        PlotMapMarker.setParams({"sObjectId": boat.Id,
                                "lat":1212,
                                "long":1212,
                                "label":boat.Name});
        PlotMapMarker.fire();*/
        
	}
})