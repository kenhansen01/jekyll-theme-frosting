---
title: "Layout: ingredients Custom"
excerpt: "A post with custom ingredients content."
author_profile: false
ingredients:
  - title: "Title"
    image: http://placehold.it/350x250
    image_alt: "image"
    text: "Some text here."
    nav: ingredients-sample
  - title: Another ingredients nav
    nav: ingredients-sample
---

This post has a custom ingredients set in the post's YAML Front Matter.

An example of how that YAML could look is:

```yaml
ingredients:
  - title: "Title"
    image: http://placehold.it/350x250
    image_alt: "image"
    text: "Some text here."
  - title: "Another Title"
    text: "More text here."
```