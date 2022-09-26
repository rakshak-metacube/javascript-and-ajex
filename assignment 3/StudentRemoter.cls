global class StudentRemoter {
    @RemoteAction
    global static void deleteStudents(List<Id> Ids) {
        List<Student__c> students = [SELECT Id FROM Student__c WHERE Id IN :Ids];
        delete students;
    }
}