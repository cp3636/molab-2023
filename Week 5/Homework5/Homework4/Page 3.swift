//
//  Page 3.swift
//  Homework4
//
import SwiftUI

//struct Page3: View {
//    var body: some View {
//        VStack {
//            Image(uiImage: UIImage(named: "Dog")!)
//                    }
//                    .padding()
//                }
//            
//            }
//       
//
//
//struct ItemDetail: View {
//    var item: Item
//    @State private var image: UIImage? = nil
//    
//    var body: some View {
//        VStack {
//            if let image = self.image {
//                Image(uiImage: image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//            } else {
//                Text("loading..")
//            }
//            
//            Text(item.name)
//          
//            Spacer()
//        }
//        .onAppear {
//            loadImage(from: item.urlStr)
//        }
//    }
//    
//    private func loadImage(from urlString: String) {
//        guard let url = URL(string: urlString) else { return }
//        
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            if let data = data, error == nil {
//                if let uiImage = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self.image = uiImage
//                    }
//                }
//            }
//        }.resume()
//    }
//}
//
//struct ItemRow: View {
//    var item: Item
//    
//    var body: some View {
//        HStack {
//            if let image = imageFor(string: item.urlStr) {
//                Image(uiImage: image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 100)
//            } else {
//                Image(systemName: "photo")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 100)
//            }
//            
//            Text(item.name)
//            Spacer()
//        }
//    }
//    
//    private func imageFor(string str: String) -> UIImage? {
//        guard let url = URL(string: str), let data = try? Data(contentsOf: url) else {
//            return nil
//        }
//        return UIImage(data: data)
//    }
//}
//
//struct Page3_Previews: PreviewProvider {
//    static var previews: some View {
//        Page3()
//    }
//}
//import SwiftUI
//
//struct Item: Identifiable {
//    let id = UUID()
//    let name: String
//    let urlStr: String
//}
//
//struct ImageLoader: View {
//    @State private var image: UIImage?
//    var urlString: String
//
//    var body: some View {
//        Group {
//            if let image = image {
//                Image(uiImage: image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//            } else {
//                Text("Loading...")
//            }
//        }
//        .onAppear {
//            loadImage(from: urlString)
//        }
//    }
//
//    private func loadImage(from urlString: String) {
//        guard let url = URL(string: urlString) else { return }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            if let data = data, error == nil {
//                if let uiImage = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self.image = uiImage
//                    }
//                }
//            }
//        }.resume()
//    }
//}
//
//struct Page3: View {
//    var items: [Item] = [
//        Item(name: "Item 1", urlStr: "https://example.com/item1.jpg"),
//        Item(name: "Item 2", urlStr: "https://example.com/item2.jpg"),
//        // Add more items as needed
//    ]
//
//    var body: some View {
//        NavigationView {
//            List(items) { item in
//                NavigationLink(destination: ItemDetail(item: item)) {
//                    ItemRow(item: item)
//                }
//            }
//            .navigationTitle("Items")
//        }
//    }
//}
//
//struct ItemDetail: View {
//    var item: Item
//
//    var body: some View {
//        VStack {
//            ImageLoader(urlString: item.urlStr)
//                .frame(maxWidth: .infinity, maxHeight: 300)
//                .background(Color.gray)
//
//            Text(item.name)
//
//            Spacer()
//        }
//    }
//}
//
//struct ItemRow: View {
//    var item: Item
//
//    var body: some View {
//        HStack {
//            ImageLoader(urlString: item.urlStr)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100)
//
//            Text(item.name)
//            Spacer()
//        }
//    }
//}
//
//struct Page3_Previews: PreviewProvider {
//    static var previews: some View {
//        Page3()
//    }
//}
import SwiftUI

struct ImageItem: Identifiable {
    let id = UUID()
    var urlStr: String
    var name: String
}

let imageItems: [ImageItem] = [
    ImageItem(urlStr: "https://tinyurl.com/mwhy5s9k", name: "Songs"),
    ImageItem(urlStr: "https://tinyurl.com/4xa4n9wk", name: "Dog"),
]

struct Page3: View {
    var body: some View {
        VStack {
            ForEach(imageItems) { item in
                HStack {
                    if let image = imageFor(string: item.urlStr) {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 100, height: 100)
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    Text(item.name)
                    Spacer()
                }
            }
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}

