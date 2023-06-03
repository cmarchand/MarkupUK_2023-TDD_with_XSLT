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
- Use **Extract Function** refactoring operation on the predicate in the `template/@match`.
  We have to complete the refactoring by typing the function as `xs:boolean`,
  by adding a parameter `input` as `xs:string` and to change the fucntion call
  in the `template/@match`.
- Use the **Slide Statement** refactoring operation to move the function at the bottom
  of the file
- Create a new unit test for level 1 titles, with a different text. This test fails
- Correct the `isTitle1` function to make the template match the new text
- Change the template content to extract text from the context. The test succeed
- Use **Extract function** refactoring operation to introduce `extractTitleContent`
  function. Add function typing, parameter and call. The tests still succeed
- Apply **slide statement** refactoring method to mode `extractTitle1Content` at
  the bottom of file. Tests still succeed.

Now, the template express exactly the business intent, and all technical code is
moved and the end of the file. This allows to have a readable code, you start reading
at the top of the file, and as long as you need details, you keep reading to
the bottom.

For a developer who will have to maintain this code, reading the xsl file is enough
to understand the business. And more, all business rules are described as a unit test.
