using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Repository.API.Entities;

namespace Repository.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class RolesController : ControllerBase
    {
        private readonly ILogger<RolesController> _logger;

        public RolesController(ILogger<RolesController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<Role> GetAllRoles()
        {
            var roleList = new List<Role>
            {
                new Role {Id = 1, Name = "Administrador"},
                new Role {Id = 2, Name = "Captador de Datos"},
                new Role {Id = 3, Name = "Reporteador"}
            };

            return roleList;
        }
    }
}