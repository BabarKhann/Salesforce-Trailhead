trigger SoqlTriggerNotBulk on Account (before update) {
    for (Account a : Trigger.new) {
        // Get child records for each account
        // Inefficient SOQL query as it runs once for each account!
        Opportunity[] opps = [SELECT Id, Name, CloseDate
                            FROM Opportunity WHERE AccountId =: a.Id];
        // Do some other processing
    }
}