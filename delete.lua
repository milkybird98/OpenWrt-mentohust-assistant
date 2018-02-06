require("luci.sys")

m = Map("smarthust","Smart HUST","Smarter HUST")

s = m:section(TypedSection,"input","Delete user")
s.addremove = false
s.anonymous = true

macaddr = s:option(Value,"macaddr",translate("Mac Address"))

local apply = luci.http.formvalue("cbi.apply")
if apply then
        io.popen("/usr/smarthust/delete.sh restart")
end

return m