import Foundation

public enum AssetsCreateAssetsResponseDisposalReason: String, Codable, Hashable, CaseIterable, Sendable {
    case sold
    case scrapped
    case writtenOff = "written_off"
}