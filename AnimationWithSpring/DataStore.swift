//
//  DataStore.swift
//  AnimationWithSpring
//
//  Created by Zalman Zoteev on 14/06/2023.
//

class DataStore {
    static let shared = DataStore()
    
    let animation = [
        "pop",
        "slideLeft",
        "squeezeDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flash",
        "wobble",
        "swing"
    ]
    let curve = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad"
    ]
    let force = [
        0.7,
        0.9,
        1.1,
        1.3,
        1.5
    ]
    let duration = [
        0.7,
        0.9,
        1.1,
        1.3,
        1.5
    ]
    let delay = [
        0.7,
        0.9,
        1.1,
        1.3,
        1.5
    ]
    
    private init() { }
}
