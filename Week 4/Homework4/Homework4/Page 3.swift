//
//  Page 3.swift
//  Homework4
//
import SwiftUI

struct Page3: View {
    var body: some View {
        VStack {
        NavigationView {
            List(imageItems) { item in
                NavigationLink(destination: ItemDetail(item: item)) {
                    ItemRow(item: item)
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline) //
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        
                        Text("Clarissa's Page")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.teal)
                            .frame(maxWidth: .infinity)
                        Text("Things I hear often")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        
                    }
                    .padding()
                }
            
            }
            }
        }
    }
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
                Text("loading..")
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

struct ItemRow: View {
    var item: Item
    
    var body: some View {
        HStack {
            if let image = imageFor(string: item.urlStr) {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            
            Text(item.name)
            Spacer()
        }
    }
    
    private func imageFor(string str: String) -> UIImage? {
        guard let url = URL(string: str), let data = try? Data(contentsOf: url) else {
            return nil
        }
        return UIImage(data: data)
    }
}

struct Page4_Previews: PreviewProvider {
    static var previews: some View {
        Page3()
    }
}
