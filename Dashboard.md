---
tags: [EN1213]
---

# Cardiff University Knowledge Base

## All Source Lectures

```dataview
TABLE module, lecturer, topic
FROM "EN1213"
WHERE module != null AND lecturer != null
SORT module ASC, topic ASC
```

---

## Recently Added

```dataview
TABLE module, source_file
FROM "EN1213" OR "maths" OR "coding"
WHERE module != null
SORT file.mtime DESC
LIMIT 10
```

---

## Lectures by Lecturer

```dataview
TABLE rows.source_file AS "Lectures", rows.topic AS "Topics"
FROM "EN1213"
WHERE lecturer != null
GROUP BY lecturer
SORT lecturer ASC
```

---

## Wiki Articles

```dataview
TABLE file.folder AS "Subject"
FROM "EN1213/thermodynamics-fluid-mechanics/wiki" OR "EN1213/mechanics/wiki" OR "EN1213/manufacturing-materials/wiki"
WHERE file.name != "INDEX"
SORT file.folder ASC, file.name ASC
```

---

## Web Clips — Waiting to Process

```dataview
TABLE topic, clipped, source
FROM "_web-clips"
WHERE type = "web-clip" AND contains(tags, "unprocessed")
SORT clipped DESC
```

---

## Quick Links

| | |
|---|---|
| [[INDEX\|Vault Index]] | [[_modules/EN1213\|EN1213 Module]] |
| [[EN1213/thermodynamics-fluid-mechanics/wiki/INDEX\|Thermodynamics & Fluids]] | [[EN1213/manufacturing-materials/wiki/INDEX\|Manufacturing & Materials]] |
| [[PROTOCOL\|Protocol]] | [[_web-clips/Inbox\|Web Clips Inbox]] |
| [[EN1213/thermodynamics-fluid-mechanics/outputs/thermodynamics-formula-sheet\|Thermo Formula Sheet]] | [[EN1213/thermodynamics-fluid-mechanics/outputs/fluid-mechanics-formula-sheet\|Fluids Formula Sheet]] |
| [[EN1213/mechanics/outputs/mechanics-formula-sheet\|Mechanics Formula Sheet]] | [[EN1213/manufacturing-materials/outputs/manufacturing-formula-sheet\|Manufacturing & Materials Formula Sheet]] |
