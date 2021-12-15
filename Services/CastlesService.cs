using System.Collections.Generic;
using csharpcastle.Models;
using csharpcastle.Repositories;

namespace csharpcastle.Services
{
public class CastlesService
{
   private readonly CastlesRepository _repo;

   public CastlesService(CastlesRepository repo)
   {
     _repo = repo;
   }

   internal List<Castle> Get()
   {
     return _repo.GetAll();
   }

}
}