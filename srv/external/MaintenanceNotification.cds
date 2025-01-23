/* checksum : 7e9677592614581b97c22770f6a7e845 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service MaintenanceNotification {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notification'
entity MaintenanceNotification.MaintenanceNotification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key MaintenanceNotification : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object number'
  @sap.quickinfo : 'Object Number for Status Management'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifInternalID : String(22);
  @sap.label : 'Description'
  @sap.quickinfo : 'Short Text'
  NotificationText : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintPriorityDesc'
  @sap.label : 'Priority'
  MaintPriority : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification Type'
  @sap.updatable : 'false'
  NotificationType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification Phase'
  @sap.quickinfo : 'Notification Processing Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotifProcessingPhase : String(1);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotifProcessingPhaseDesc : String(60);
  @sap.label : 'Priority Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintPriorityDesc : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Creation Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.label : 'Time of Change'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : DateTime;
  @sap.label : 'Created At'
  @sap.quickinfo : 'Time at Which Record Was Added'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ReporterFullName'
  @sap.label : 'Reported By'
  @sap.quickinfo : 'Name of Person Reporting Notification'
  ReportedByUser : String(12);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ReporterFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PersonResponsibleName'
  @sap.label : 'Person Resp. ID'
  @sap.quickinfo : 'Person Responsible ID'
  PersonResponsible : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Effect'
  @sap.quickinfo : 'Effect on Operation'
  MalfunctionEffect : String(1);
  @sap.label : 'Effect'
  @sap.quickinfo : 'Text - Effect on Operation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MalfunctionEffectText : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Malfunction Start'
  @sap.quickinfo : 'Start of Malfunction (Date)'
  MalfunctionStartDate : Date;
  @sap.label : 'Mal. Start (T.)'
  @sap.quickinfo : 'Start of Malfunction (Time)'
  MalfunctionStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Malfunction End'
  @sap.quickinfo : 'End of Malfunction (Date)'
  MalfunctionEndDate : Date;
  @sap.label : 'Malfunction End'
  @sap.quickinfo : 'End of Malfunction (Time)'
  MalfunctionEndTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog Coding'
  @sap.quickinfo : 'Catalog Type - Coding'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotificationCatalog : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Coding Code'
  @sap.quickinfo : 'Coding'
  MaintNotificationCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code Group'
  @sap.quickinfo : 'Code Group - Coding'
  MaintNotificationCodeGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Catalog Profile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CatalogProfile : String(9);
  @sap.display.format : 'Date'
  @sap.label : 'Notification Date'
  @sap.quickinfo : 'Date of Notification'
  NotificationCreationDate : Date;
  @sap.label : 'Notification Time'
  @sap.quickinfo : 'Time of Notification'
  NotificationCreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notif. Time Zone'
  @sap.quickinfo : 'Time Zone for Notification'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotificationTimeZone : String(6);
  @sap.display.format : 'Date'
  @sap.label : 'Required Start Date'
  RequiredStartDate : Date;
  @sap.label : 'Req. start time'
  @sap.quickinfo : 'Required Start Time'
  RequiredStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Required End Date'
  RequiredEndDate : Date;
  @sap.label : 'Req. end time'
  @sap.quickinfo : 'Required End Time'
  RequiredEndTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Final Due Date'
  LatestAcceptableCompletionDate : Date;
  @sap.label : 'Breakdown'
  @sap.quickinfo : 'Breakdown Indicator'
  MaintenanceObjectIsDown : Boolean;
  @sap.label : 'Long Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotificationLongText : LargeString;
  @sap.label : 'Long Text'
  MaintNotifLongTextForEdit : String(1333);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  TechnicalObject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  TechObjIsEquipOrFuncnlLoc : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectLabel : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Planning Plant'
  @sap.quickinfo : 'Maintenance Planning Plant'
  MaintenancePlanningPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlannerGroupName'
  @sap.label : 'Maint. Planner Group'
  @sap.quickinfo : 'Planner Group for Customer Service and Plant Maintenance'
  MaintenancePlannerGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantSectionPersonRespName'
  @sap.label : 'Plant Section'
  PlantSection : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ABCIndicatorDesc'
  @sap.label : 'ABC Indicator'
  @sap.quickinfo : 'ABC Indicator for Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ABCIndicator : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorTechnicalObject : String(40);
  @sap.label : 'Tech. Obj. Desc'
  @sap.quickinfo : 'Technical Object Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorTechnicalObjectName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Type'
  @sap.quickinfo : 'Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorObjIsEquipOrFuncnlLoc : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Technical Object'
  @sap.quickinfo : 'Technical Object Identifier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SuperiorTechnicalObjectLabel : String(40);
  @sap.label : 'Model number'
  @sap.quickinfo : 'Manufacturer model number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ManufacturerPartTypeName : String(20);
  @sap.label : 'TObj.Type Desc.'
  @sap.quickinfo : 'Description of Technical Object Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechObjIsEquipOrFuncnlLocDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object ID'
  @sap.quickinfo : 'Object ID of Functional Location or Equipment'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalLocation : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Location'
  @sap.quickinfo : 'Functional Location Label'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FunctionalLocationLabelName : String(40);
  @sap.label : 'Tech. Obj. Desc'
  @sap.quickinfo : 'Technical Object Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectDescription : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'LocationName'
  @sap.label : 'Location'
  @sap.quickinfo : 'Location of maintenance object'
  AssetLocation : String(10);
  @sap.label : 'Location Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LocationName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tech. Obj. Category'
  @sap.quickinfo : 'Technical Object Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Type'
  @sap.quickinfo : 'Type of Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TechnicalObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MainWorkCenterPlantName'
  @sap.label : 'Plant'
  MainWorkCenterPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MainWorkCenterText'
  @sap.label : 'Work Center'
  MainWorkCenter : String(8);
  @sap.label : 'Plant Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PlantName : String(30);
  @sap.label : 'Planner Group Name'
  @sap.quickinfo : 'Name of the Maintenance Planner Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlannerGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintenancePlantName'
  @sap.label : 'Maintenance Plant'
  MaintenancePlant : String(4);
  @sap.label : 'Current Location'
  @sap.quickinfo : 'Description of Current Location'
  LocationDescription : String(50);
  @sap.label : 'Work Center Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MainWorkCenterText : String(40);
  @sap.label : 'Plant Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MainWorkCenterPlantName : String(30);
  @sap.label : 'Plant Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlantName : String(30);
  @sap.label : 'EmplGrp Responsible'
  @sap.quickinfo : 'Group of Employees Responsible for Company Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PlantSectionPersonRespName : String(14);
  @sap.label : 'ABC Ind. Descr.'
  @sap.quickinfo : 'Description of ABC Indicator of Technical Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ABCIndicatorDesc : String(20);
  @sap.label : 'Person Responsible'
  @sap.quickinfo : 'Person Responsible Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PersonResponsibleName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  MaintenanceOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceOrderType : String(4);
  @sap.label : 'Concatenated System Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConcatenatedActiveSystStsName : String(224);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Type'
  @sap.quickinfo : 'Maintenance Activity Type'
  MaintenanceActivityType : String(3);
  @sap.label : 'Breakdown durtn unit'
  @sap.quickinfo : 'Unit for Breakdown Duration'
  @sap.semantics : 'unit-of-measure'
  MaintObjDowntimeDurationUnit : String(3);
  @sap.label : 'Breakdown Duration'
  MaintObjectDowntimeDuration : Double;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Plan'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlan : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Maintenance Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceItem : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group'
  @sap.quickinfo : 'Key for Task List Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroup : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Counter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaskListGroupCounter : String(2);
  @sap.label : 'MntPlan Call No.'
  @sap.quickinfo : 'Maintenance Plan Call Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenancePlanCallNumber : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Task List Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintenanceTaskListType : String(1);
  TaskList : String(13);
  @sap.display.format : 'Date'
  @sap.label : 'Reference Date'
  @sap.quickinfo : 'Notification Reference Date'
  NotificationReferenceDate : Date;
  @sap.label : 'Reference Time'
  @sap.quickinfo : 'Notification Reference Time'
  NotificationReferenceTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Completion by Date'
  @sap.quickinfo : 'Date for Notification Completion'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotificationCompletionDate : Date;
  @sap.label : 'Completion Time'
  @sap.quickinfo : 'Completion Time of Notification'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompletionTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Room'
  AssetRoom : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference number'
  @sap.quickinfo : 'External Reference Number'
  MaintNotifExtReferenceNumber : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reason Code'
  @sap.quickinfo : 'Maintenance Reason Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifRejectionReasonCode : String(3);
  @sap.label : 'Reason Code Desc'
  @sap.quickinfo : 'Maintenance Reason Code Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifRejectionRsnCodeTxt : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Detection Meth Prfl'
  @sap.quickinfo : 'Detection Method Profile'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifDetectionCatalog : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintNotifDetectionCodeText'
  @sap.label : 'Detection Method'
  MaintNotifDetectionCode : String(4);
  @sap.label : 'Detection Meth Desc'
  @sap.quickinfo : 'Detection Method Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifDetectionCodeText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaintNotifDetectionCodeGrpTxt'
  @sap.label : 'Detection Meth Grp'
  @sap.quickinfo : 'Detection Method Group'
  MaintNotifDetectionCodeGroup : String(8);
  @sap.label : 'Dtctn Meth Grp Desc'
  @sap.quickinfo : 'Detection Method Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifDetectionCodeGrpTxt : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'EAMProcessPhaseCodeDesc'
  @sap.label : 'Process Phase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifProcessPhaseCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.text : 'EAMProcessSubPhaseCodeDesc'
  @sap.label : 'Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifProcessSubPhaseCode : String(4);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessPhaseCodeDesc : String(60);
  @sap.label : 'Subphase Description'
  @sap.quickinfo : 'Description of Overall Process Subphase'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  EAMProcessSubPhaseCodeDesc : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MalfunctionStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MalfunctionEndDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotificationCreationDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifRqdStartDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  MaintNotifRqdEndDateTime : DateTime;
  @sap.display.format : 'Date'
  @sap.label : 'Prev. Final Due Date'
  @sap.quickinfo : 'Previous Final Due Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PreviousFinalDueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  to_Item : Composition of many MaintenanceNotification.MaintenanceNotificationItem {  };
  to_Partner : Composition of many MaintenanceNotification.MaintenanceNotificationPartner {  };
} actions {
  action CompleteMaintNotification(
    @odata.Type : 'Edm.DateTimeOffset'
    @sap.label : 'Reference Date Time'
    @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
    MaintNotifReferenceDateTime : DateTime,
    @sap.label : 'Reference Date'
    @sap.quickinfo : 'Notification Reference Date'
    @sap.display.format : 'Date'
    NotificationReferenceDate : Date,
    @sap.label : 'Reference Time'
    @sap.quickinfo : 'Notification Reference Time'
    NotificationReferenceTime : Time
  ) returns MaintenanceNotification.MaintenanceNotification;
  action SetMaintNotifToInProcess() returns MaintenanceNotification.MaintenanceNotification;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notification Item'
entity MaintenanceNotification.MaintenanceNotificationItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.updatable : 'false'
  key MaintenanceNotification : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number in Item Record'
  @sap.updatable : 'false'
  key MaintenanceNotificationItem : String(4) not null;
  @sap.label : 'Item Text'
  @sap.quickinfo : 'Notification Item Short Text'
  MaintNotifItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Damage Code Group'
  MaintNotifDamageCodeGroup : String(8);
  @sap.label : 'Code Group Text'
  @sap.quickinfo : 'Text for Code Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifDamageCodeGroupName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Damage Code'
  MaintNotificationDamageCode : String(4);
  @sap.label : 'Code Text'
  @sap.quickinfo : 'Text for Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifDamageCodeName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Obj. Part Code Group'
  @sap.quickinfo : 'Object Part Code Group'
  MaintNotifObjPrtCodeGroup : String(8);
  @sap.label : 'Code Group Text'
  @sap.quickinfo : 'Text for Code Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifObjPrtCodeGroupName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Object Part Code'
  MaintNotifObjPrtCode : String(4);
  @sap.label : 'Code Text'
  @sap.quickinfo : 'Text for Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifObjPrtCodeName : String(40);
  @sap.label : 'Delete'
  @sap.quickinfo : 'Delete Data Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsDeleted : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItemChangedDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItemCreationDateTime : DateTime;
  to_Notif : Association to MaintenanceNotification.MaintenanceNotification {  };
  to_ItemActivity : Composition of many MaintenanceNotification.MaintNotificationItemActivity {  };
  to_ItemCause : Composition of many MaintenanceNotification.MaintNotificationItemCause {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notification Partner'
entity MaintenanceNotification.MaintenanceNotificationPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.updatable : 'false'
  key MaintenanceNotification : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  @sap.updatable : 'false'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Counter for differentiation 6-digit'
  @sap.updatable : 'false'
  key NotificationPartnerObjectNmbr : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner'
  Partner : String(12) not null;
  to_Notif : Association to MaintenanceNotification.MaintenanceNotification {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notification Item Activity'
entity MaintenanceNotification.MaintNotificationItemActivity {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Activity'
  @sap.quickinfo : 'Consecutive Number of Activity'
  @sap.updatable : 'false'
  key MaintNotificationActivity : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.updatable : 'false'
  key MaintenanceNotification : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number in Item Record'
  @sap.updatable : 'false'
  key MaintenanceNotificationItem : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Activity Sort Number'
  @sap.quickinfo : 'Sort Number for Activity'
  MaintNotifActivitySortNumber : String(4);
  @sap.label : 'Activity Text'
  MaintNotifActyTxt : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Code Group'
  MaintNotifActivityCodeGroup : String(8);
  @sap.label : 'Code Group Text'
  @sap.quickinfo : 'Text for Code Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotifActivityCodeGroupText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Code'
  MaintNotificationActivityCode : String(4);
  @sap.label : 'Code Text'
  @sap.quickinfo : 'Text for Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NotifActivityCodeText : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Activity Start Date'
  PlannedStartDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'Start Time of Activity'
  PlannedStartTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'Activity End Date'
  PlannedEndDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'End Time of Activity'
  PlannedEndTime : Time;
  @sap.label : 'Delete'
  @sap.quickinfo : 'Delete Data Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsDeleted : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItmActyStrtDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItemActyEndDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItemActyCrtnDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItemActyChgdDateTime : DateTime;
  to_Item : Association to MaintenanceNotification.MaintenanceNotificationItem {  };
  to_Notif : Association to MaintenanceNotification.MaintenanceNotification {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Maintenance Notification Item Cause'
entity MaintenanceNotification.MaintNotificationItemCause {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Notification'
  @sap.quickinfo : 'Notification Number'
  @sap.updatable : 'false'
  key MaintenanceNotification : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number in Item Record'
  @sap.updatable : 'false'
  key MaintenanceNotificationItem : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cause'
  @sap.quickinfo : 'Sequential Number for Cause'
  @sap.updatable : 'false'
  key MaintenanceNotificationCause : String(4) not null;
  @sap.label : 'Cause Text'
  MaintNotifCauseText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cause Code Group'
  MaintNotifCauseCodeGroup : String(8);
  @sap.label : 'Code Group Text'
  @sap.quickinfo : 'Text for Code Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifCauseCodeGroupName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cause Code'
  MaintNotificationCauseCode : String(4);
  @sap.label : 'Code Text'
  @sap.quickinfo : 'Text for Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotificationCauseCodeName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Root Cause'
  MaintNotificationRootCause : String(1);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotificationRootCauseText : String(60);
  @sap.label : 'Delete'
  @sap.quickinfo : 'Delete Data Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsDeleted : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItmCauseChgdDateTime : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Short Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaintNotifItmCauseCrtnDateTime : DateTime;
  to_Item : Association to MaintenanceNotification.MaintenanceNotificationItem {  };
  to_Notif : Association to MaintenanceNotification.MaintenanceNotification {  };
};

