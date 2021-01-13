
import SwiftUI

struct DictionaryView: UIViewControllerRepresentable{
    let term : String
    func makeUIViewController(context: Context) -> UIReferenceLibraryViewController {
        UIReferenceLibraryViewController(term: term)
    }
    
    func updateUIViewController(_ uiViewController: UIReferenceLibraryViewController, context: Context) {
        
    }
    typealias UIViewControllerType = UIReferenceLibraryViewController
}


struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView(term:"apple")
    }
}
