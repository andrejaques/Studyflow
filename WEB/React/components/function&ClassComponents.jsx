import React from "react";

/* 	
  Function component
  Note the capitalized function name: 'Header', not 'header'
*/
function Header() {
  return <h1>Hello React</h1>;
}

// Function components which use an arrow function syntax are also valid
const Header = () => <h1>Hello React</h1>;

/* 
  Class component
  Class components have more boilerplate (note the 'extends' keyword and 'render' method)
*/
class Header extends React.Component {
  render() {
    return <h1>Hello React</h1>;
  }
}
