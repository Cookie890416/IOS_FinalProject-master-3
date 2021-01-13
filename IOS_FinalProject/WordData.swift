

import Foundation
import Combine

class WordData: ObservableObject {
    @Published var Words = [Word]()
    var cancellable: AnyCancellable?
    
    
    init() {
        
        if let data = UserDefaults.standard.data(forKey: "words") {
            let decoder = JSONDecoder()
            if let decodedData = try? decoder.decode([Word].self, from: data) {
                Words = decodedData
            }
        }
        
        
        cancellable = $Words
            .sink { (value) in
                let encoder = JSONEncoder()
                do {
                    let data = try encoder.encode(value)
                    UserDefaults.standard.set(data, forKey: "words")
                } catch {
                    
                }
        }
        
    }
}
