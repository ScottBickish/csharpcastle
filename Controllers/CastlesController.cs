
using System;
using System.Collections.Generic;
using csharpcastle.Models;
using csharpcastle.Services;
using Microsoft.AspNetCore.Mvc;

namespace csharpcastle
{
  [ApiController]
  [Route("api/[controller]")]
  public class CastlesController : ControllerBase
  {
      private readonly CastlesService _cs;
      public CastlesController(CastlesService cs)
      {
        _cs = cs;
      }
      [HttpGet]
      public ActionResult<IEnumerable<Castle>> Get()
      {
        try
        {
             List<Castle> castles = _cs.Get();
             return Ok(castles);
        }
        catch (Exception e)
        {
            
            return BadRequest(e.Message);
        }
      }
  }
}