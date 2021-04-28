/* 
  We can write JSX like plain HTML, but it's actually made using JavaScript functions.
  Because JSX is JavaScript, not HTML, there are some differences:

  1) Some JSX attributes are named differently than HTML attributes. Why? Because some attribute words are reserved words in JavaScript, such as 'class'. Instead of class, JSX uses 'className'.

  Also, because JSX is JavaScript, attributes that consist of multiple words are written in camelcase:
*/
<section>

<div id="header">
  <h1 className="title">Hello React!</h1>
</div>

{/* 
  2) JSX elements that consist of only a single tag (i.e. input, img, br elements) must be closed with a trailing forward slash to be valid (/): 
*/}

<input type="email" /> {/* <input type="email"> is a syntax error*/}

{/* 
  3) JSX elements that consist of an opening and closing tag (i.e. div, span, button element), must have both or be closed with a trailing forward slash. Like 2), it is a syntax error to have an unterminated element. 
*/}

<button>Click me</button> {/* <button> or </button> is a syntax error*/}

<button /> {/* empty, but also valid*/}

</section>
