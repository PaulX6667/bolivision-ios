import Foundation

// Clase temporal para reemplazar Firebase
class FirebaseHelper {

    static func register(email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        // Simula éxito
        completion(.success("mock_user_id"))
    }

    static func saveProgram(_ data: [String:Any]) {
        // Solo imprime para debug
        print("Simulando guardar programa: \(data)")
    }
}
