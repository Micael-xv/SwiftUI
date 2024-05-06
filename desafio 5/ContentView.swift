import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                RosaView()
                    .badge(1)
                    .tabItem {
                        Label("Received", systemImage: "theatermask.and.paintbrush.fill")
                    }
                    
                AzulView()
                    .tabItem {
                        Label("Paint", systemImage: "paintbrush.pointed")
                    }
                
                CinzaView()
                    .tabItem {
                        Label("Cinza", systemImage: "paintpalette.fill")
                    }
                
                ListaView()
                    .badge(3)
                    .tabItem {
                        Label("Lista", systemImage: "list.bullet")
                    }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
