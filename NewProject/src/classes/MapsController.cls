public with sharing class MapsController {
    
    public List<String> listOfAddresses {get; set;}

    public MapsController() {
       listOfAddresses = new List<String>();
        for (Case c : [SELECT Id, Contact.MailingAddress
                       FROM Case
                       WHERE Contact.MailingCity != NULL
                       AND IsClosed = false
                       AND Contact.MailingState = 'AZ']) {
            Address addr = c.Contact.MailingAddress;
            if (addr != null) {
                String fullAddress = '\"';
                if (addr.getStreet() != null) {
                fullAddress = fullAddress + addr.getStreet();
                }
                if (addr.getCity() != null) {
                fullAddress = fullAddress + ', ' + addr.getCity();
                }
                if (addr.getCountry() != null) {
                    if (addr.getCountry() == 'US' || addr.getCountry() == 'USA') {
                        fullAddress = fullAddress + ', ' + addr.getState() + '\"';
                    }
                    else {
                        fullAddress = fullAddress + ', ' + addr.getCountry() + '\"';
                    }
                }
                else {
                    fullAddress = fullAddress + '\"';        
                }
                listOfAddresses.add(fullAddress);
            }
    	}
  	}
    
}