module("luci.controller.smarthust",package.seeall)

function index()
        entry({"admin","services","smarthust"},alias("admin","services","smarthust","input"),_("Smart HUST"),60)     
        entry({"admin","services","smarthust","input"},cbi("smarthust/input"),_("Add new user"),10).leaf=true
        entry({"admin","services","smarthust","delete"},cbi("smarthust/delete"),_("Delete user"),20).leaf=true
        end