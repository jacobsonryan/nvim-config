local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("javascript", {
  s("arrow", {
    t("const "),
    i(1, "functionName"), -- Function name
    t(" = ("),
    i(2, ""), -- First parameter
    t({") => {", "\t"}), -- Multiline with separate lines in an array
    i(3, ""), -- Function body
    t({"", "}"}) -- Closing bracket with an empty string for the newline before it
  }, {
    description = "Creates a JS arrow function with parameters" -- Description for clarity
  })
})
