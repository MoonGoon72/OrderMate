import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("푸라닭 시켜드실 분 구해요")
                        .font(.system(size: 27))
                        .frame(maxWidth: .infinity, minHeight: 30)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                VStack {
                    Text("픽업 장소: 충남대학교 기숙사 11동")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, minHeight: 30)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                VStack {
                    Text("푸라닭 어은점에서 치킨시키려는데 배달비가 너무 비싸네요 같이 시켜드실분?")
                        .font(.system(size: 24))
                        .frame(maxWidth: .infinity, minHeight: 30)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                HStack {
                    ForEach(0..<5){ _ in
                        Image(systemName: "person.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit
                            )
                            .frame(width: 25)
                            .padding()
                    }
                }
                Spacer()
                
                    
                    NavigationLink {
                        Text("참여하기 뷰")
                    } label: {
                        Text("참여하기")
                            .font(.system(size: 24))
                            .frame(maxWidth: .infinity, minHeight: 30)
                            .padding()
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .background(.red.opacity(0.85))
                            .cornerRadius(10)
                    }
                .padding()
                Spacer()
                    .frame(height: 45)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
