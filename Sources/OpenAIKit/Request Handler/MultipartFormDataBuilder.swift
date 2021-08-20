
import Foundation

struct MultipartFormDataBuilder {
    private let boundary: String
    private var httpBody = NSMutableData()
    
    init(boundary: String = UUID().uuidString) {
        self.boundary = boundary
    }
        
    func addTextField(named name: String, value: String) {
        httpBody.append(textFormField(named: name, value: value))
    }
    
    private func textFormField(named name: String, value: String) -> Data {
        var fieldString = Data("--\(boundary)\r\n".utf8)
        fieldString += Data("Content-Disposition: form-data; name=\"\(name)\"\r\n".utf8)
        fieldString += Data("Content-Type: text/plain; charset=ISO-8859-1\r\n".utf8)
        fieldString += Data("\r\n".utf8)
        fieldString += Data("\(value)\r\n".utf8)
        
        return fieldString
    }
    