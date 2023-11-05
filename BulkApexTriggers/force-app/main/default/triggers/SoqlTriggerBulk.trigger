trigger SoqlTriggerBulk on Account (after update) {
    // Perform SOQL query once.    
    // Get the accounts and their related opportunities.
    List<Acocunt> acctsWithOpps = [SELECT Id,
                                (SELECT Id, Name, CloseDate 
                                FROM Opportunities) 
                                FROM Account 
                                WHERE Id IN :Trigger.new];
    // Iterate over the returned accounts
    for (Account a : acctsWithOpps) {
        Opportunity[] relatedOpps = a.Opportunities;
        // Do some other processing
    }
}