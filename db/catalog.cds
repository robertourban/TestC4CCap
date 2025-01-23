namespace C4CExtension;

using {
    managed,
    sap.common.CodeList,
    Country,
    sap.common.Languages
} from '@sap/cds/common';


entity C4CCase {
    key id                  : String;
        description         : String;
        priority            : String;
        priorityDescription : String;
        origin              : String;
        caseType            : String;
        caseTypeDescription : String;
        status              : String;
        statusDescription   : String;
        escalationStatus    : String;
        isRead              : Boolean;
        isEndOfPurpose      : Boolean;
        adminData           : Composition of one {
                                    createdBy      : String;
                                    createdByName  : String;
                                    createdOn : DateTime;
                                    updatedBy      : String;
                                    updatedByName  : String;
                                    updatedOn : DateTime;
                              }
}
