

import Foundation

enum NetworkError: Error {
    case Error
}



struct Wordnik:Codable{
    var partOfSpeech : String?
    var text : String?
    var word : String
}

struct UploadImageResult: Decodable {
    struct UIRData: Decodable {
        let link: String
    }
    let data: UIRData
}

