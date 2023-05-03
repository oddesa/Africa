//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Macbook on 02/05/23.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle: Int = Int.random(in: 12...16)
    @State private var isAnimating = false
    private func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    private func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }
    
    private func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    private func randomSpeed() -> Double {
        return Double.random(in: 0.025...1)
    }
    
    private func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(x: randomCoordinate(max: geometry.size.width),
                                  y: randomCoordinate(max: geometry.size.height))
                        .scaleEffect(isAnimating ? randomScale() : 1)
                }
                .animation(
                    Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                        .repeatForever()
                        .delay(randomDelay())
                        .speed(randomSpeed())
                )
                .onAppear {
                    isAnimating = true
                }
            }
            .drawingGroup()
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
