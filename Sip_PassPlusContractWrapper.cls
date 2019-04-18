global class Sip_PassPlusContractWrapper{

    global class Sip_PassPlusContractInfo{
        global String id;
        global String contractName;
        global Sip_PassPlusContractInfo(){}

        global Sip_PassPlusContractInfo(SIP_Contract__c contract){
            this.id                      = String.valueOf(contract.Id);
            this.contractName            = contract.Name;
        }
    }
}