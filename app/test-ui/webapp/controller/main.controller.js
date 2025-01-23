sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
], (Controller, Filter, FilterOperator) => {
    "use strict";

    return Controller.extend("testui.controller.main", {
        onInit() {
            //get the local model
            this.oLocalM = this.getOwnerComponent().getModel("appModel");

            this.getView().setBusyIndicatorDelay(0);
        },

        onAfterRendering() {
            //as soon as app loads get latest 10 updated cases
            this.oInput = {
                "$count": true,
                "$top": 20,
                "$orderby": "adminData.updatedOn desc"
            }

            this._performCAPActionCall(this.oInput);
            
        },

        onSearch: function (oEvent) {
            const fromDate = this.oLocalM.getProperty("/searchFromDate"),
                toDate = this.oLocalM.getProperty("/searchToDate");

            /* var oTable = this.getView().byId("idProductsTable"),
            oTableBinding = oTable.getBinding("items"), */
            var aFilters = [];

            if(fromDate!=null){
                const sFrom = fromDate.toISOString().substr(0,10) //get rid of time and take just the date part like 2025-01-23 instead of 2025-01-23T10:00:00
                aFilters.push(
                    "adminData.updatedOn ge '" +sFrom+"'"
                )
            }

            if(toDate!=null){
                const sTo = toDate.toISOString().substr(0,10) //get rid of time and take just the date part like 2025-01-23 instead of 2025-01-23T10:00:00
                aFilters.push(
                    "adminData.updatedOn lt '" +sTo+"'"
                )
            }

            //both dates are not provided erase any filter query
            if((toDate==null) && (fromDate==null)){
                delete this.oInput.$filter;
            }else{
                //concatenate the filters with an and operatator
                this.oInput.$filter = aFilters.join(" and ");
            } 

            //perform the search by the provided dates
            this._performCAPActionCall(this.oInput);

            //filter the table bound to the fake entity
            //get the table binding
            
            //filter the table bound to the fake entity
            //get the table binding
       /*      var oTable = this.getView().byId("idProductsTable"),
                oTableBinding = oTable.getBinding("items"),
                aFilters = [];

            //prepare filters for the query. Check if any date is provided and in case create a corresponding filter object
            if(fromDate!=null){
                aFilters.push(
                    new Filter({
                        path: "adminData/updatedOn",
                        operator: "GE",
                        value1: fromDate.toISOString()
                    })
                );
            }

            if(toDate!=null){
                aFilters.push(
                    new Filter({
                        path: "adminData/updatedOn",
                        operator: "LT",
                        value1: toDate.toISOString()
                    })
                );
            }

            //both dates are not provided erase any filter query
            if((toDate==null) && (fromDate==null)){
                oTableBinding.changeParameters({
                    "$search": undefined,
                    "$filter": undefined
                });
            }else{
                //perform the search by the provided dates
                oTableBinding.filter(
                    new Filter({
                        filters: aFilters
                    })
                )
            } */

        },

        getDateString: function(sDate){
            return sDate;
        },


        _performCAPActionCall: function (oInput) {
            
            this.getView().setBusy(true);

            var oM = this.getView().getModel(),
                oCtx = oM.bindContext("/getCases(...)");
            //compose a json object with the odata parameters to send, like $filter, $sort, etc as per supported C4C service parameters
            //this is just and example,  you must composed this object according UI settings
            oCtx.setParameter("paramsJson", JSON.stringify(oInput)).execute().then(
                function (obj) {
                    var oData = oCtx.getBoundContext().getObject();

                    //check if any result is returned, if yes take the returned json string
                    //parse it and assign the string to the model property bound with the UI table
                    if (oData.value != null) {
                        this.oLocalM.setProperty("/cases", JSON.parse(oData.value));
                    } else {
                        this.oLocalM.setProperty("/cases", [])
                    }

                    this.getView().setBusy(false);

                }.bind(this)).catch(function () {

                }.bind(this));
        }
    });
});