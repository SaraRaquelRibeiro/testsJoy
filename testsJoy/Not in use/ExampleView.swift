//
//  ExampleView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

struct ExampleView: View {
    @State var points: [CGPoint] = []

        var body: some View {
            ZStack {
                ScrollView {
                    ZStack {
                        Path { (path: inout Path) in

                            if let firstPoint = points.first {
                                path.move(to: firstPoint)
                                var lastPoint: CGPoint = firstPoint
                                for point in points.dropFirst() {
    //                                path.addLine(to: point)
                                    let isGoingRight = point.x < lastPoint.x
                                    path.addCurve(to: point, control1: CGPoint(x: isGoingRight ? point.x : lastPoint.x,
                                                                               y: !isGoingRight ? point.y : lastPoint.y),
                                                  control2: CGPoint(x: point.x, y: point.y))
                                    lastPoint = point
                                }
                            }
                        }
                        .stroke(lineWidth: 2)
                        .foregroundColor(.pink.opacity(0.5))

                        VStack {
                            VStack(spacing: 30) {
                                ForEach(Array(0...4).indices) { index in
                                    ball
                                        .overlay(GeometryReader { geometry in
                                            Color.clear
                                                .preference(key: CirclePointsKey.self,
                                                            value: [CGPoint(x: geometry.frame(in: .named("ballContainer")).midX,
                                                                            y: geometry.frame(in: .named("ballContainer")).midY)])
                                        })
                                        .frame(maxWidth: .infinity,
                                               alignment: index.isMultiple(of: 2) ? .leading : .trailing)
                                }
                            }
                            .coordinateSpace(name: "ballContainer")
                            .onPreferenceChange(CirclePointsKey.self) { data in
                                points = data
                            }
                            Text("points:\n \(String(describing: points))")
                            Spacer()
                        }
                    }
                }
            }
            .foregroundColor(.white)
            //.background(Color.black.ignoresSafeArea())
            .background(Color.black.opacity(0.1))
        }

        @ViewBuilder
        var ball: some View {
            Circle()
                .fill(Color.gray)
                .frame(width: 70, height: 70, alignment: .center)
                .padding(10)
                .overlay(Circle()
                    .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [5, 10, 10, 5]))
                    .foregroundColor(.white)
                    .padding(7)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0.0, y: 0.0)
        }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
struct CirclePointsKey: PreferenceKey {
    typealias Value = [CGPoint]

    static var defaultValue: [CGPoint] = []

    static func reduce(value: inout [CGPoint], nextValue: () -> [CGPoint]) {
        value.append(contentsOf: nextValue())
    }
}

