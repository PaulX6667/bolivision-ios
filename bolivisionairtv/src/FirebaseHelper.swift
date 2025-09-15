
import Foundation
import FirebaseAuth
import FirebaseFirestore

class FirebaseHelper {

    static let db = Firestore.firestore()

    static func register(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error { completion(.failure(e)); return }
            if let user = authResult?.user { completion(.success(user)) }
        }
    }

    static func saveProgram(_ data: [String:Any]) {
        db.collection("programs").addDocument(data: data) { error in
            if let e = error { print("Error saving: \(e)") } else { print("Saved") }
        }
    }
}
