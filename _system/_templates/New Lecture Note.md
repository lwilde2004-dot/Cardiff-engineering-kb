---
module: <% tp.system.prompt("Module code (e.g. EN1213)") %>
topic: <% tp.system.prompt("Topic path (e.g. fluid-mechanics/bernoullis)") %>
lecturer: <% tp.system.prompt("Lecturer surname") %>
module_index: "[[/_modules/<% tp.system.prompt("Module code again") %>]]"
source_file: "<% tp.file.title %>"
created: <% tp.date.now("YYYY-MM-DD") %>
tags: [fluid-mechanics, thermofluids]
---

# <% tp.file.title %>

*Raw lecture notes — do not edit. Process into wiki instead.*

