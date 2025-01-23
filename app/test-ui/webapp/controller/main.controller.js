sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("testui.controller.main", {
        onInit() {
            //get the local model
            this.oLocalM = this.getOwnerComponent().getModel("appModel");
        },

        onAfterRendering() {


            //get odata model and its context
            var oM = this.getView().getModel(),
                oCtx = oM.bindContext("/getCases(...)");
                //compose a json object with the odata parameters to send, like $filter, $sort, etc as per supported C4C service parameters
                //this is just and example,  you must composed this object according UI settings
                const oInput = {
                    "$top":10,
                    "$filter": "priority eq '01'"
                }
                oCtx.setParameter("paramsJson", JSON.stringify(oInput)).execute().then(
                    function (obj) {
                        var oData = oCtx.getBoundContext().getObject();
                        
                        //check if any result is returned, if yes take the returned json string
                        //parse it and assign the string to the model property bound with the UI table
                        if(oData.value!=null){
                            this.oLocalM.setProperty("/cases", JSON.parse(oData.value));
                        }else{
                            this.oLocalM.setProperty("/cases",[])
                        }
                        
                    }.bind(this)).catch(function () {
    
                    }.bind(this));
        }
    });
});