//
// Particle.swift
// Vortex
// https://www.github.com/twostraws/Vortex
// See LICENSE for license information.
//

import SwiftUI

extension VortexSystem {
    /// One particle in a Vortex system.
    public struct Particle: Hashable {
        /// The tag for this particle, which should match one of the tags attached to
        /// the SwiftUI views you're passing into a `VortexView`.
        public private(set) var tag: String

        /// The current location of this particle, specified in unit space.
        public private(set) var position: SIMD2<Double>

        /// The current speed of this particle.
        public private(set) var speed: SIMD2<Double>
        
        /// The initial speed the particle was created at
        public private(set) var initialSpeed: SIMD2<Double>

        /// The time this particle was created.
        public private(set) var birthTime: TimeInterval

        /// How long this particle should live for, measured in seconds.
        public private(set) var lifespan: TimeInterval

        /// The initial size this particle was created at.
        public private(set) var initialSize: Double

        /// The current size of this particle. This is recomputed every time its system's
        /// `update()` method is called.
        public private(set) var currentSize = 0.0

        /// The rotation angle of this particle.
        public private(set) var angle = SIMD3<Double>()

        /// How fast this particle is spinning.
        public private(set) var angularSpeed = SIMD3<Double>()

        /// The colors to use for rendering this particle over time.
        public private(set) var colors: [Color]

        /// The current color to use for rendering this particle right now. This is recomputed
        /// every time its system's `update()` method is called.
        public private(set) var currentColor = Color.white
    }
}
