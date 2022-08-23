({
    doInit : function(component, event, helper) {
        var error = 'Please complete required Informatin';
        component.set('v.validate',function(){
            if(component.get("v.required") && !component.get("v.value")){
                return {
                    isValid:false,
                    errorMessage:error
                }
            }
        });
        
    }
})