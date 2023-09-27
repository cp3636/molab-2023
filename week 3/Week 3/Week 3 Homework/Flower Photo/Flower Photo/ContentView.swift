import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(UIColor(red: 173/255, green: 216/255, blue: 230/255, alpha: 1.0)).edgesIgnoringSafeArea(.all)
                LightGreenBox()
                SunAndClouds()
                renderFlower()
            }
            Text("Look at these flowers I saw!")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.pink)
        }
        .padding()
    }

    func renderFlower() -> some View {
        let flowers: [[String]] = [
            ["🌸", "🌼", "🌸", "🌸", "🌼", "🌸"],
            ["🌻", "🌺", "🌻", "🌻", "🌺", "🌻"]
        ]

        return VStack(spacing: 0) {
            ForEach(0..<flowers.count, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<flowers[row].count, id: \.self) { col in
                        Text(flowers[row][col])
                            .font(.system(size: 30))
                            .padding(5)
                    }
                }
            }
        }
    }

    func SunAndClouds() -> some View {
        return VStack {
            HStack {
                Spacer()
                Text("☁️🌞☁️")
                    .font(.system(size: 60))
            }
            Spacer()
        }
        .foregroundColor(.white)
    }

    func LightGreenBox() -> some View {
        return Color(UIColor(red: 144/255, green: 238/255, blue: 144/255, alpha: 1.0))
            .frame(height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

