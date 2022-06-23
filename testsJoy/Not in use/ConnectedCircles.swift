//
//  ConnectedCircles.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

struct HeartView : View {
    var model : HeartModel
    @State private var offset = CGSize(width: 100, height: 100)
    @State private var initialDragPosition = CGSize(width: 100, height: 100)
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .position(x: offset.width, y: offset.height)
                .preference(key: ViewPositionKey.self, value: [model.id:offset])
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            self.offset = CGSize(width: initialDragPosition.width + gesture.translation.width, height: initialDragPosition.height + gesture.translation.height)
                        }
                        .onEnded { _ in
                            initialDragPosition = self.offset
                        }
                )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ConnectedCircles: View {
    @State private var heartModels : [HeartModel] = [.init(), .init()]
        @State private var positions : [UUID:CGSize] = [:]
        
        var body: some View {
            ZStack {
                ForEach(heartModels) { heart in
                    HeartView(model: heart)
                }
                
                Path { path in
                    if let first = positions.first {
                        path.move(to: CGPoint(x: first.value.width, y: first.value.height))
                    }
                    positions.forEach { item in
                        path.addLine(to: CGPoint(x: item.value.width, y: item.value.height))
                    }
                }.stroke()
                
            }.onPreferenceChange(ViewPositionKey.self) { newPositions in
                positions = newPositions
            }
        }
}

struct ConnectedCircles_Previews: PreviewProvider {
    static var previews: some View {
        ConnectedCircles()
    }
}

struct HeartModel : Identifiable {
    var id = UUID()
}

struct ViewPositionKey: PreferenceKey {
    static var defaultValue: [UUID:CGSize] { [:] }
    static func reduce(value: inout [UUID:CGSize], nextValue: () -> [UUID:CGSize]) {
        let next = nextValue()
        if let item = next.first {
            value[item.key] = item.value
        }
    }
}
