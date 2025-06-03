
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("for", {
    t("for (int "), i(1, "i"), t(" = 0; "), i(2, "i"), t(" < "), i(3, "N"), t("; "), i(4, "i"), t("++) {"),
    t({ "", "\t" }), i(0),
    t({ "", "}" }),
  }),
}
