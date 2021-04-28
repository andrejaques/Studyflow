const year = 2021;

/* We can insert primitive JS values (i.e. strings, numbers, booleans) in curly braces: {} */
const greeting = <div>Hello React in {year}</div>;

/* We can also insert expressions that resolve to a primitive value: */
const goodbye = <div>Goodbye previous year: {year - 1}</div>

/* Expressions can also be used for element attributes */
const className = 'title';
const title = <h1 className={className}>My title</h1>

/* Note: trying to insert object values (i.e. objects, arrays, maps) in curly braces will result in an error */
