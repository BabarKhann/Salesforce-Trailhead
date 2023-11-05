trigger MyTriggerNotBulk on Account (before insert) {
    Account a = Trigger.new[0];
    a.Description = 'New description';
}