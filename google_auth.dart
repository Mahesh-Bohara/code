// / /... .. . //

  Future<String> signInWithGoogle() async {
    
      final GoogleSignIn _googleSignIn = new GoogleSignIn();

      GoogleSignInAccount googleUser = await _googleSignIn.signIn();

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    
      final FirebaseUser user = (await _firebaseAuth.signInWithCredential(credential)).user;
      
      return user?.uid;
    
  }
......
