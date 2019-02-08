public class invocableFFERPSequencing  {
	@InvocableMethod
	public static void InvocableSequence(List<Id> recordId){
	Set<Id> recordids = new Set<Id>();
	recordids.addAll(recordId);
	fferpcore.SequenceService.UpdateSequencesRequest req = new fferpcore.SequenceService.UpdateSequencesRequest(recordids);
	fferpcore.SequenceService.updateSequencesAsync(req);
	}
}
