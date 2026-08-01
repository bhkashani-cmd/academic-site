---
title: "Publications"
permalink: /research/
layout: single
author_profile: true
---

# Publications

{% for publication in site.publications %}

---

## {{ publication.title }}

{{ publication.excerpt }}

[Read More]({{ publication.url }})

{% endfor %}
