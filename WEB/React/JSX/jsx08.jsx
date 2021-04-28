/* 
  To write JSX on multiple lines, wrap in parentheses: ()
  JSX expressions that span multiple lines are called multiline expressions
*/

const greeting = (
  // div is the parent element
  <div>
    {/* h1 and p are child elements */}
    <h1>Hello!</h1>
    <p>Welcome to React</p>
  </div>
);

/* 'parents' and 'children' are how we describe JSX elements in relation
to one another, like we would talk about HTML elements */
