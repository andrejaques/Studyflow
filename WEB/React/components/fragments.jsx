/*
  We can improve the logic in the previous example.
  If isAuthenticated is true, how do we display both the AuthenticatedApp and Footer components?
*/
function Header() {
  const isAuthenticated = checkAuth();

  return (
    <nav>
      <Logo />
      {/* 
        We can render both components with a fragment. 
        Fragments are very concise: <> </>
      */}
      {isAuthenticated ? (
        <>
          <AuthenticatedApp />
          <Footer />
        </>
      ) : (
        <Login />
      )}
    </nav>
  );
}
/* 
  Note: An alternate syntax for fragments is React.Fragment:
  <React.Fragment>
    <AuthenticatedApp />
    <Footer />
  </React.Fragment>
*/