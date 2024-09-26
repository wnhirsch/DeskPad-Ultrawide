//
//  AspectRatio.swift
//  DeskPad
//
//  Created by Wellington Nascente Hirsch on 26/09/24.
//

enum AspectRatio: CaseIterable {
    case _16_9
    case _16_10
    case _21_9

    var description: String {
        switch self {
        case ._16_9: return "16:9"
        case ._16_10: return "16:10"
        case ._21_9: return "21:9"
        }
    }

    var resolutions: [CGVirtualDisplayMode] {
        switch self {
        case ._16_9: return [
                CGVirtualDisplayMode(width: 3840, height: 2160, refreshRate: 60),
                CGVirtualDisplayMode(width: 2560, height: 1440, refreshRate: 60),
                CGVirtualDisplayMode(width: 1920, height: 1080, refreshRate: 60),
                CGVirtualDisplayMode(width: 1600, height: 900, refreshRate: 60),
                CGVirtualDisplayMode(width: 1366, height: 768, refreshRate: 60),
                CGVirtualDisplayMode(width: 1280, height: 720, refreshRate: 60),
            ]
        case ._16_10: return [
                CGVirtualDisplayMode(width: 2560, height: 1600, refreshRate: 60),
                CGVirtualDisplayMode(width: 1920, height: 1200, refreshRate: 60),
                CGVirtualDisplayMode(width: 1680, height: 1050, refreshRate: 60),
                CGVirtualDisplayMode(width: 1440, height: 900, refreshRate: 60),
                CGVirtualDisplayMode(width: 1280, height: 800, refreshRate: 60),
            ]
        case ._21_9: return [
                CGVirtualDisplayMode(width: 3440, height: 1440, refreshRate: 60),
                CGVirtualDisplayMode(width: 1720, height: 720, refreshRate: 60),
            ]
        }
    }

    var maxResolution: CGSize {
        switch self {
        case ._16_9: return .init(width: 3840, height: 2160)
        case ._16_10: return .init(width: 2560, height: 1600)
        case ._21_9: return .init(width: 3440, height: 1440)
        }
    }
}
