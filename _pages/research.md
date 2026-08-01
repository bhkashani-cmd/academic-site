---
title: "Publications"
permalink: /research/
layout: single
author_profile: true
---

# Publications

Selected research publications including journal articles, conference papers, and scholarly works.


{% for publication in site.publications %}

---

## {{ publication.title }}

**Type:** {{ publication.type }}  
**Venue:** {{ publication.venue }}  
**Date:** {{ publication.date | date: "%Y" }}

{% if publication.authors %}
**Authors:** {{ publication.authors | join: ", " }}
{% endif %}


{% if publication.paperurl %}
[View Article]({{ publication.paperurl }})
{% endif %}


{% if publication.citation %}
### Citation

{{ publication.citation }}
{% endif %}


{% endfor %}
