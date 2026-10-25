//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2026 Jellyfin & Jellyfin Contributors
//

import SwiftUI

extension EnvironmentValues {

    @Entry
    var posterConfiguration: PosterConfiguration = .default

    @Entry
    var frameForParentView: [CoordinateSpace: FrameAndSafeAreaInsets] = [:]

    @Entry
    var isEditing: Bool = false

    @Entry
    var isHighlighted: Bool = true

    @Entry
    var isSelected: Bool = false

    @Entry
    var playbackSpeed: Binding<Double> = .constant(1)

    @Entry
    var posterDisplayType: PosterDisplayType = .portrait

    @Entry
    var safeAreaInsets: EdgeInsets = UIApplication.shared.keyWindow?.safeAreaInsets.asEdgeInsets ?? .zero

    @Entry
    var tabSafeAreaInsets: EdgeInsets = .zero

    // TODO: figure out this directional response stuff
    @Entry
    var panGestureDirection: Direction = .all

    /// Whether the scene has a regular width *and* height, such as on iPad
    /// or the inner display of iPhone Duo.
    ///
    /// Prefer this over device idiom checks for layout decisions, as foldable
    /// devices change between compact and regular sizes at runtime.
    var isRegularSizeClass: Bool {
        #if os(tvOS)
        true
        #else
        horizontalSizeClass == .regular && verticalSizeClass == .regular
        #endif
    }
}
