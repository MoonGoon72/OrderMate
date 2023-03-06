//
//  RoomView.swift
//  OrderMate
//
//  Created by 문영균 on 2023/03/06.
//

import SwiftUI

struct RoomView: View {
    @StateObject private var manager = RoomDataManager.shared
    var body: some View {
        VStack {
            ScrollViewReader { scrollView in
                ScrollView {
                    VStack {
                        ForEach(manager.roomList) { list in
                            ListView(currentRoom: list).id(list.id)
                        }
                    }
                    //                    .onChange(of: manager.lastListID) { id in
                    //                        withAnimation {
                    //                            scrollView.scrollTo(id, anchor: .top)
                    //                        }
                    //                }
                }
            }
        }
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
