// Basic example
const handleClick = () => alert("Hello world!");

const button = <button onClick={handleClick}>Click here</button>;

// Example with event parameter
const handleMouseOver = (event) => event.target.style.color = 'purple';

const button2 = <div onMouseOver={handleMouseOver}>Drag here to change color</div>;