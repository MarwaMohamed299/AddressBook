namespace BookAddess.DAL.Entities.Base
{
    public abstract class BaseEntity
    {
        public Guid Id { get; set; }
        public string? Name { get; set; }
    }
}
