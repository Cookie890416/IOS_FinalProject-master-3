
import Foundation

struct Word: Identifiable, Codable {
    var id = UUID()
    var words: String
    var isWord: Bool
    var part_of_speech: String
    var meaning: String
    var sentence: String
    var isFavor: Bool
}
