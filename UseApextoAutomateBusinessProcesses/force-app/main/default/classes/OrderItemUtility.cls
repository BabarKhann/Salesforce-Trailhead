public with sharing class OrderItemUtility {
   
    //Create the method that will add free bonus bouquet when order is activated
    public static void addBonusBouquet(List<Order> ordersFromTrigger) {

        //TO DO 3.1: Determine if we have a bonus product and get its ID to add to the order
        
         
            List<OrderItem> newBouquets = new List<OrderItem>();

            for (Order currentOrder : ordersFromTrigger) {

                if (currentOrder.Status == 'Activated') {
                    OrderItem freeBouquet = new OrderItem(
                        OrderId = currentOrder.id,
                        //PricebookEntryId = entry.id,
                        numberOfFlowers__c = 3,
                        description = 'FREE Bouquet',
                        Quantity = 1,
                        colorTheme__c = 'Spectacular Sunset',
                        percentOfOpening__c = 0,
                        UnitPrice = 0.00
                    );
                    newBouquets.add(freeBouquet);
            }
        }
    } // end method
} // end class