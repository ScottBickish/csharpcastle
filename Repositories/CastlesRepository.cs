using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using csharpcastle.Models;
using Dapper;

namespace csharpcastle.Repositories
{
  public class CastlesRepository
  {
    private readonly IDbConnection _db;
    public CastlesRepository(IDbConnection db)
    {
      _db = db;
    }

    internal List<Castle> GetAll()
    {
      string sql = @"
      SELECT
      castle.*,
      account.*
      FROM castles castle
      JOIN accounts account ON castle.creatorId = account.id;";
      return _db.Query<Castle, Account, Castle>(sql, (castle, account )=>{
        castle.Creator = account;
        return castle;
      }, splitOn: "id").ToList();
    }
  }
}