namespace ContactsSrvc.Data
{
    public interface IVersionedModelObject
    {
        byte[] Version { get; set; }
    }
}
