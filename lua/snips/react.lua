local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("typescriptreact", {
    s("dfx", {
        t("export default function "), i(1, "ComponentName"), t("() {"),
        t({"", "\treturn ("}),
        t({"", "\t\t"}), i(2, "<div>Content here</div>"),
        t({"", "\t);", "}"})
    })
})
