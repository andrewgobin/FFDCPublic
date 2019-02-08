@isTest 
private class TEST_invocableFFERPSequencing {

	@isTest
	private static void testName() {
		List<Id> tId = new List<Id>();
		Account tAcct = new Account(
			Name = 'Im a test'
		);
		insert tAcct;
		tId.add(tAcct.Id);
		invocableFFERPSequencing.InvocableSequence(tId);
		List<Account> nAcct = [SELECT Id FROM Account WHERE Id = :tAcct.Id];
		System.assertEquals(tAcct.Id, nAcct[0].Id);
	}
}
