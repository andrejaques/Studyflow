function App() {
  const people = [
    { id: 'Ksy7py', name: 'John' },
    { id: '6eAdl9', name: 'Bob' },
    { id: '6eAdl9', name: 'Fred' },
  ];

  return (
    <ul>
      {/* keys need to be primitive values, ideally a unique string, such as an id */}
      {people.map(person =>
        <Person key={person.id} name={person.name} />
      )}
    </ul>
  );
}

// If you don't have some ids with your set of data that are unique // and primitive values, use the second parameter of .map() to get each // elements index

function App() {
  const people = ['John', 'Bob', 'Fred'];

  return (
    <ul>
      {/* use array element index for key */}
      {people.map((person, i) => <Person key={i} name={person} />)}
    </ul>
  );
}