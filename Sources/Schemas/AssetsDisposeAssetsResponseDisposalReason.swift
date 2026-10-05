import Foundation

public enum AssetsDisposeAssetsResponseDisposalReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}