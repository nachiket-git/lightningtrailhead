({
	doInit : function(component, event, helper) {
		helper.onInit(component, event, helper);
	},
	
	onRecordUpdated : function(component, event, helper) {
		helper.alertSuccess('A blank review has been initialized successfully');
	},
	
	/*onSave : function(component, event, helper) {
		component.find('service')
			.saveRecord($A.getCallback(function (saveResult){
				if (saveResult.state === 'ERROR') {
                    alert('Error saving review record: ' + component.get('v.recordError'));
					console.error('Error saving review record: ' + component.get('v.recordError'));
                    helper.alertSuccess ('Error saving review record: ' + component.get('v.recordError'));                    
				} else {
                    alert('Your review has been saved successfully');
					helper.alertSuccess('Your review has been saved successfully');
					helper.onInit(component, event, helper);
					component.getEvent('boatReviewAdded').fire();
				}
			}));
	},*/
    
    onSave: function(component, event, helper) {
        component.find("service").saveRecord(function(saveResult) {
        if (saveResult.state === "SUCCESS" || saveResult.state === "DRAFT") {
          // record is saved successfully
          var resultsToast = $A.get("e.force:showToast");
          if (resultsToast) {
            resultsToast.setParams({
              "title": "Submitted",
              "message": "The review was saved."
            });
            resultsToast.fire();
          } else {
            alert('The review was saved.');
          }
          helper.onInit(component, event, helper);
    
          var boatReviewAddedEvent = component.getEvent("boatReviewAdded");
          boatReviewAddedEvent.fire();
        } else if (saveResult.state === "INCOMPLETE") {
          // handle the incomplete state
          console.log("User is offline, device doesn't support drafts.");
        } else if (saveResult.state === "ERROR") {
          // handle the error state
          console.log('Problem saving contact, error: ' +
            JSON.stringify(saveResult.error));
        } else {
          console.log('Unknown problem, state: ' + saveResult.state +
            ', error: ' + JSON.stringify(saveResult.error));
        }
        });
	},
    
    
    
})