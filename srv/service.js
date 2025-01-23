const cds = require('@sap/cds')

module.exports = class TestService extends cds.ApplicationService { init() {

  const { C4CCases } = this.entities
  

  this.on('READ', 'C4CCases', async (req) => {
    console.log(req.http.req.query);
    const externalService = await cds.connect.to('Case_Object')
    //var results = await next()
    const queryParams = req.http.req.query
    //add $top just for testing purposes
    //queryParams["$top"]= 2
    const queryString = Object.keys(queryParams)
          .map((key) => `${key}=${queryParams[key]}`)
          .join("&");
    const txExt = externalService.tx(req)
    var oCasesFound = await txExt.get(`/case-service/cases${queryString}`)
    var aResults = []
    console.log(oCasesFound);
    oCasesFound.value.forEach(element => {
      aResults.push({
        id: element.id,
        priority: element.priority,
        description:element.hasOwnProperty("description")?element.description.content:'',
        priorityDescription: element.priorityDescription
        //... continue to map all necessary fields
      })
      
    });
    console.log(aResults)
    return aResults;

  })

  this.on("getCases", async (req) => {
    console.log(req.data);
    const externalService = await cds.connect.to('Case_Object')
    const queryParams = JSON.parse(req.data.paramsJson)
    console.log(queryParams)
    const queryString = Object.keys(queryParams)
          .map((key) => `${key}=${queryParams[key]}`)
          .join("&");
    const txExt = externalService.tx(req)
    var aResults = []
    var oCasesFound = await txExt.get(`/case-service/cases?${queryString}`)
    oCasesFound.value.forEach(element => {
      aResults.push({
        id: element.id,
        priority: element.priority,
        description:element.hasOwnProperty("description")?element.description.content:'',
        priorityDescription: element.priorityDescription
        //... continue to map all necessary fields
      })
      
    });
    console.log(oCasesFound);
    return JSON.stringify(aResults);
    //return ""
});

  this.on("testAction", async (req) => {
   
    return null
    //return ""
});

  return super.init()
}}
