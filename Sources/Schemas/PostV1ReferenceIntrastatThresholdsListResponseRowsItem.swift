import Foundation

public struct PostV1ReferenceIntrastatThresholdsListResponseRowsItem: Codable, Hashable, Sendable {
    public let year: Int64
    public let arrivalsReporting: String
    public let dispatchesReporting: String
    public let arrivalsStatistical: String
    public let dispatchesStatistical: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        arrivalsReporting: String,
        dispatchesReporting: String,
        arrivalsStatistical: String,
        dispatchesStatistical: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.arrivalsReporting = arrivalsReporting
        self.dispatchesReporting = dispatchesReporting
        self.arrivalsStatistical = arrivalsStatistical
        self.dispatchesStatistical = dispatchesStatistical
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.arrivalsReporting = try container.decode(String.self, forKey: .arrivalsReporting)
        self.dispatchesReporting = try container.decode(String.self, forKey: .dispatchesReporting)
        self.arrivalsStatistical = try container.decode(String.self, forKey: .arrivalsStatistical)
        self.dispatchesStatistical = try container.decode(String.self, forKey: .dispatchesStatistical)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.arrivalsReporting, forKey: .arrivalsReporting)
        try container.encode(self.dispatchesReporting, forKey: .dispatchesReporting)
        try container.encode(self.arrivalsStatistical, forKey: .arrivalsStatistical)
        try container.encode(self.dispatchesStatistical, forKey: .dispatchesStatistical)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case arrivalsReporting
        case dispatchesReporting
        case arrivalsStatistical
        case dispatchesStatistical
    }
}