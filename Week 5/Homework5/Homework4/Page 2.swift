//
//  Page 2.swift
//  Homework4
//
//import SwiftUI
//
//struct Item: Identifiable {
//    let id = UUID()
//    var urlStr: String
//    var name: String
//}
//
//let imageItems: [Item] = [
//    Item(urlStr: "https://tinyurl.com/mwhy5s9k", name: "Songs"),
//    Item(urlStr: "https://tinyurl.com/4xa4n9wk", name: "Dog"),
//]
//
//struct Page2: View {
//    var body: some View {
//        VStack {
//            ForEach(imageItems) { item in
//                HStack {
//                    if let image = imageFor(string: item.urlStr) {
//                        Image(uiImage: image)
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                    } else {
//                        Image(systemName: "photo")
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                    }
//                    Text(item.name)
//                    Spacer()
//                }
//            }
//        }
//    }
//}
//
//struct Page2_Previews: PreviewProvider {
//    static var previews: some View {
//        Page2()
//    }
//}


import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let urlStr: String
}

struct ItemDetail: View {
    var item: Item
    @State private var image: UIImage? = nil
    
    var body: some View {
        VStack {
            if let image = self.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Text("Loading...")
            }
            
            Text(item.name)
            
            Spacer()
        }
        .onAppear {
            loadImage(from: item.urlStr)
        }
    }
    
    private func loadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data, error == nil {
                if let uiImage = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = uiImage
                    }
                }
            }
        }.resume()
    }
}
