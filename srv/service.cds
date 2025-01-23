using { C4CExtension.C4CCase as C4CCase } from '../db/catalog';

@impl : './service.js'
service TestService {

  entity C4CCases as projection on C4CCase;
  
  action testAction() returns String;

  action getCases(paramsJson: String) returns String;

}
