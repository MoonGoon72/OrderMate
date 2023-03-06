import SwiftUI

struct ListView: View {
    @StateObject private var manager = RoomDataManager.shared
    var currentRoom: Room
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(currentRoom.title)
                    .font(.headline)
                Text(currentRoom.location)
                    .font(.subheadline)
                Text("\(currentRoom.date.description)")
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
//        .id(currentRoom.id)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        let room = Room(id: UUID().uuidString, title: "아아아아 배고프다아아", location: "충남대학교 어딘가", date: Date(), maxUser: 3)
        ListView(currentRoom: room)
    }
}
