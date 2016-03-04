module("luci.controller.sdunet", package.seeall)

function index()
        entry({"admin", "network", "sdunet"}, cbi("sdunet"), _("SDU Net Account"), 100)
        end