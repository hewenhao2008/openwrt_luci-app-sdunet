require("luci.sys")

m = Map("sdunet", translate("SDU Auth"), translate("Configure SDU 802.11x client."))

s = m:section(TypedSection, "login", "")
s.addremove = false
s.anonymous = true

enable = s:option(Flag, "enable", translate("Enable"))
name = s:option(Value, "username", translate("Username"))
pass = s:option(Value, "password", translate("Password"))
pass.password = true

local apply = luci.http.formvalue("cbi.apply")
if apply then
    io.popen("/etc/init.d/sduclient restart")
end

return m