public with sharing class CreateObjectMetadataAPI {
	
	public static MetadataService.MetadataPort pingMetadataService(){
		
		Map<String,String> inputHttpHeaders_x = new Map<String,String>();
		//inputHttpHeaders_x.put('USERNAME','rash2521989@gmail.com');
		//inputHttpHeaders_x.put('PASSWORD','rashmi1234');
		MetadataService.SessionHeader_element she = new MetadataService.SessionHeader_element();
		she.sessionId = UserInfo.getSessionId();
		MetadataService.MetadataPort mts = new MetadataService.MetadataPort();
		mts.endpoint_x = 'https://kanadaminds-dev-ed.my.salesforce.com/services/Soap/m/38.0/00D41000000caIp';
		mts.SessionHeader = she;
		//MetadataService.DescribeMetadataResult desRes = mts.describeMetadata(Double.valueOf(38.0));
		//System.debug('***** desRes'+desRes);
		return mts; 
		
	} 
	
	public static void pingSoapService(){
		
		enterpriseSoapSforceCom.SOAP es = new enterpriseSoapSforceCom.SOAP();
		enterpriseSoapSforceCom.SessionHeader_element sHead = new enterpriseSoapSforceCom.SessionHeader_element();
		sHead.sessionId = UserInfo.getSessionId();
		es.SessionHeader = sHead;
		enterpriseSoapSforceCom.LoginResult logRes = es.login('rash2521989@kanadaminds.com','rashmi1234B6K969xw1eBtHWGvwePJJZ5z');
		System.debug('*** logRes '+logRes);
	}
	
	public static void createCustomObject(){
		MetadataService.MetadataPort mts = CreateObjectMetadataAPI.pingMetadataService();
		MetadataService.CustomObject co = new MetadataService.CustomObject();
		co.label = 'testMeta';
		co.deploymentStatus = 'Deployed';
		co.description = 'testing metadata api';
		co.enableActivities = true;
		co.pluralLabel = 'testMetas';	
		co.fullname = 'testMeta__c';
		co.sharingModel = 'ReadWrite';
		MetadataService.CustomField cf =new MetadataService.CustomField();
		
		cf.type_x = 'Text';
		cf.length = 42;
		cf.label ='Name';
		co.nameField = cf;
		/*MetadataService.Metadata[] mt = new List<MetadataService.Metadata>();
		MetadataService.Metadata newMet = new MetadataService.Metadata();
		newMet = (MetadataService.Metadata) co;
		newMet.fullName = 'testMeta__c';
		mt.add(newMet);*/ 
		//mt.add(co);
		//MetadataService.CustomObject[] md = new List<MetadataService.Metadata>{co};	
		MetadataService.SaveResult[] sr = mts.createMetadata(new List<MetadataService.Metadata> {co});
		System.debug('*** sr '+sr);
	}
    
}