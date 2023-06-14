//
//  Description.swift
//  AnimationWithSpring
//
//  Created by Zalman Zoteev on 14/06/2023.
//

struct Description {
    let animation: [String]
    let curve: [String]
    let force: [Double]
    let duration: [Double]
    let delay: [Double]
    
    static func getDescription() -> Description {
        Description(
            animation: DataStore.shared.animation,
            curve: DataStore.shared.curve,
            force: DataStore.shared.force,
            duration: DataStore.shared.duration,
            delay: DataStore.shared.delay
        )
    }
}
