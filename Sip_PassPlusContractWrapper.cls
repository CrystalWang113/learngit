/**********************************************************************
Name:  Sip_PassPlusContractWrapper
-------
======================================================
======================================================
Purpose: 
-------
It is used to handle contracts basic info.
======================================================
======================================================
History
-------
VERSION  AUTHOR            DATE              DETAIL                 Description
1.0      RoseMary         03/26/2019        INITIAL DEVELOPMENT    CSR:
***********************************************************************/
global class Sip_PassPlusContractWrapper {

    global class Sip_PassPlusContractInfo{

        //Add by Crystal 04/15/2019
        global String id;
        //End

        //Contract Admin
        global String title;
        global String firstName;
        global String middleName;
        global String lastName;
        global String mileagePlusNumber;
        global String emailAddress;
        global String businessPhoneNo;
        global String extPhoneNo;
        global String companyName;
        global String zipcode;
        //Contract Admin - Address
        global String streetAddress;
        global String cityTown;
        global String stateProvince;
        global String contry;

        //Company Information
        global String industryType;
        global String taxId;
        global Boolean isSubCorporation;//500 or more employees
        global String annualTravelSpend;
        global String businessTravellersNum;
        global String preferredMinInvest;
        global String preferredPaymentFre;
        global String pointOfTravelOrigin;
        global String keyTravelMarkets;

        //Contract Variables
        global String contractName;
        global String contractType;
        global String contractID;  //is Tour Code?-Story NO.17
        global String contractRecordType;
        global Id accountId;
        global String UATPAccountNo;
        global String contractStart;
        global String contractEnd;
        global String ticketingStart;
        global String tricketingEnd;
        global String UATPFunds;//CustomizedPlan / Investment
        global String amenitiesFundsOffered;
        global String contractProcess;
        global String contractStatus;

        //Contract business-specified criteria
        global String PPProgramType;
        global String tourCode;
        global String UCSId;
        global String UATPId;
        global String assignedManager;
        global String UATPTicketingNumber;
        global String UATPExpirationDate;
        global String travelStart;
        global String travelEnd;

        //Contract Variables - Amenities Offered
        global Boolean globalServices;
        global Boolean waivers;
        global Boolean unitedClubMembership;
        global Boolean economyPlus;
        global Boolean bonusMiles;
        global Boolean statusNominations;
        global Boolean upgrades;
        global Boolean priorityCheckIn;
        global Boolean oneTimePass;

        //Renew Contract
        global String termsAndConComments;

        //Add by Crystal 04/15/2019
        global String initialInvestmentAmount;
        global String validEndDate;
        global String validStartDate;
        global Sip_PassPlusContractInfo(){}

        global Sip_PassPlusContractInfo(SIP_Contract__c contract){
            this.id                      = String.valueOf(contract.Id);
            this.contractName            = contract.Name;
            this.contractStatus          = contract.SIP_Contract_Status__c;
            this.contractType            = contract.SIP_Contract_Type__c;
            this.tourCode                = contract.SIP_Tour_Code__c;
            this.annualTravelSpend       = contract.SIP_Traveler_Amenity_Annual_Deposit__c;
            this.initialInvestmentAmount = contract.SIP_Initial_Investment_Amount__c;
            this.ticketingStart          = String.valueOf(contract.SIP_Ticketing_End_Date__c);
            this.tricketingEnd           = String.valueOf(contract.SIP_Ticketing_Start_Date__c);
            this.validEndDate            = String.valueOf(contract.SIP_Valid_End_Date__c);
            this.validStartDate          = String.valueOf(contract.SIP_Valid_Start_Date__c);
            this.PPProgramType           = contract.SIP_PassPlus_Program_Type__c;
            this.assignedManager         = contract.SIP_Assigned_Sales_Manager__c;
            this.taxId                   = contract.SIP_Tax_ID_number__c;
            this.industryType            = contract.SIP_Industry__c;
            this.travelEnd               = String.valueOf(contract.SIP_Travel_End_Date__c);
            this.travelStart             = String.valueOf(contract.SIP_Travel_Start_Date__c);
        }
        //End
    }
}