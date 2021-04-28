function Header() {
  const isAuthenticated = checkAuth();
    
  /* if user is authenticated, show the authenticated app, otherwise, the unauthenticated app */
  if (isAuthenticated) {
    return <AuthenticatedApp />   
  } else {
    /* alternatively, we can drop the else section and provide a simple return, and the conditional will operate in the same way */
    return <UnAuthenticatedApp />   
  }
}