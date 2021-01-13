

import SwiftUI

struct AppView: View {
    @ObservedObject var wordsData = WordData()
    var body: some View {
        ZStack{
            TabView {
                HomeView(wordnik: Wordnik(partOfSpeech: "", text: "", word: ""),wordsData: wordsData)
                    .tabItem{
                        Image(systemName:"house.fill")
                        Text("首頁")
                }
                WordList(wordsData: wordsData)
                    .tabItem{
                        Image(systemName:"list.bullet")
                        Text("單字表")
                }
                ChooseCity().tabItem{
                    Image(systemName: "flag.fill")
                    Text("咖啡廳")
                }
                
            }
            .accentColor(.purple)
        }
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
