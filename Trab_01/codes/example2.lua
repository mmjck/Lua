local Point_methods = {
    Print = function (self)
                print(self.x, self.y, self.z)
            end
}

local Point_metatable = {
    __index = Point_methods,
    __add = function(p1,p2)
                return Point({ x = (p1.x + p2.x), y = (p1.y + p2.y), z = (p1.z + p2.z) })
            end
}


function Point (self)
    self.x = tonumber(self.x) or 0.0
    self.y = tonumber(self.y) or 0.0
    self.z = tonumber(self.z) or 0.0
    setmetatable(self, Point_metatable)
    return self
end    



local p = Point({ x = 1, y = 1, z = 1 })
local q = Point({x = 1, y = 1, z = 1})

local r = p + q

p.Print(p)
q.Print(q)

r.Print(r)

