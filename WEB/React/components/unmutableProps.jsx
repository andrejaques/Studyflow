/* 
  Components should operate as 'pure' functions.
  That is, for every input, we should be able to expect the same output.
  This means we cannot mutate the props object, only read from it.
*/

// We cannot modify the props object :
function Header(props) {
  props.username = "Doug";

  return <h1>Hello {props.username}</h1>;
}
/* 
  But what if we want to modify a prop value that is passed to our component?
  That's where we would use state (see the useState section).
*/
