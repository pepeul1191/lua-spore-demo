local spore = require("Spore")

local client = spore.new_from_lua{
  base_url = "http://localhost:8888/",
  methods = {
    departamento_listar = {
      path = "/departamento/listar",
      method = "GET",
    },
    distrito_buscar = {
      path = "/distrito/buscar",
      method = "GET",
      required_params = {
        "nombre",
      },
    },
    distrito_listar = {
      path = "/distrito/listar/:provincia_id",
      method = "GET",
      required_params = {
        "provincia_id",
      },
    },
  },
}

local req1 = client:departamento_listar{}
print(req1.body)
print("-----------------------------------------")
local req2 = client:distrito_buscar{ nombre = "La V"}
print(req2.body)
print("-----------------------------------------")
local req3 = client:distrito_listar{ provincia_id = "2"}
print(req3.body)
