module("luci.controller.admin.sdunet", package.seeall)

function index()
        entry({"admin", "network", "sdunet"}, cbi("sdunet"), _("SDU Net Account"), 100)
        end
