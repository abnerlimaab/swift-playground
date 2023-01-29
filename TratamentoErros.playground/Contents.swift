enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case nointernetConnection
}

func login(username: String, password: String) throws -> Bool {
    if !checkConnection() {
        throw LoginError.nointernetConnection
    }
    
    if username != "abner" {
        throw LoginError.wrongLogin
    }
    
    if password != "123456" {
        throw LoginError.wrongPassword
    }
        
    return true
}

func checkConnection() -> Bool {
    return true
}

do {
 let login = try login(username: "abner", password: "12345")
} catch LoginError.nointernetConnection {
    print("Sem conexão com a internet")
} catch {
    print("Usuário ou senha inválidos!")
}

let newLogin = try? login(username: "abner", password: "123456")
