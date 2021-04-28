/* 
  When our project is built to run in the browser, our JSX will be converted by Babel into simple React.createElement() function calls. 
  From this... 
*/
const greeting = <div>Hello React!</div>;

/* ...into this: */
"use strict";

const greeting = /*#__PURE__*/React.createElement("div", null, "Hello React!");

