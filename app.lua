local spore = require("Spore")

local client = spore.new_from_lua{
    base_url = 'http://localhost:8888/',
    methods = {
        departamento_listar = {
            path = '/departamento/listar',
            method = 'GET',
        },
        get_user_info = {
            path = '/show',
            method = 'GET',
            required_params = {
                'user',
            },
        },
    },
}

-- local r = client:get_user_info{ user = 'John' }
local req = client:departamento_listar{}
print(req.body)
