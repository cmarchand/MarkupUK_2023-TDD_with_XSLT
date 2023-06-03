# Explanations

This document explains all operations, commit after commit.

- Create a first unit test, with the first feature I want to implement. This
  unit test will not compile, as it references a `md-to-xsl.xsl` that do not
  exists yet
- Add an empty `md-to-xml.xsl` and renamed xspec to `md-to-xml.xspec` as the
  name was wrong. No the test compiles, run, but fails
- Add code in `md-to-xml.xsl` to make the test succeed. The minimal code, so just
  a template that matches exactly the text defined in unit test, and that produces
  exactly what is expected in the test.
