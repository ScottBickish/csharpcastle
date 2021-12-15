

namespace csharpcastle.Models
{
  public class Castle
  {
    public string? Castlename {get; set;}
    public string? Kingdom { get; set; }
    public int Dungeoncount {get; set;}
     public string CreatorId { get; set; }
    public Account Creator { get; set; }
  }
}