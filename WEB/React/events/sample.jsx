function App() {
  function handleInputChange(event) {
    /* When passing the function to an event handler, like onChange we get access to data about the event (an object) */
    const inputText = event.target.value; // text typed into the input
    const inputName = event.target.name; // 'email' from name attribute
  }

  function handleClick(event) {
    /* onClick doesn't usually need event data, but it receives event data as well that we can use */
    console.log('clicked!');
    const eventType = event.type; // "click"
    const eventTarget = event.target; // <button>Submit</button>
  }
    
  function handleSubmit(event) {
    /* 
      When we hit the return button, the form will be submitted, as well as when a button with type="submit" is clicked.
      We call event.preventDefault() to prevent the default form behavior from taking place, which is to send an HTTP request and reload the page.
    */
    event.preventDefault();
    const formElements = event.target.elements; // access all element within form
    const inputValue = event.target.elements.emailAddress.value; // access the value of the input element with the id "emailAddress"
  }

  return (
    <form onSubmit={handleSubmit}>
      <input id="emailAddress" type="email" name="email" onChange={handleInputChange} />
      <button onClick={handleClick}>Submit</button>
    </form>
  );
}
