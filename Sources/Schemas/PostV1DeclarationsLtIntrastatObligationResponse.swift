import Foundation

public struct PostV1DeclarationsLtIntrastatObligationResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let isVatPayer: Bool
    public let notes: [String]
    public let thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds
    public let arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals
    public let dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        isVatPayer: Bool,
        notes: [String],
        thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds,
        arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals,
        dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.isVatPayer = isVatPayer
        self.notes = notes
        self.thresholds = thresholds
        self.arrivals = arrivals
        self.dispatches = dispatches
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.thresholds = try container.decode(PostV1DeclarationsLtIntrastatObligationResponseThresholds.self, forKey: .thresholds)
        self.arrivals = try container.decode(PostV1DeclarationsLtIntrastatObligationResponseArrivals.self, forKey: .arrivals)
        self.dispatches = try container.decode(PostV1DeclarationsLtIntrastatObligationResponseDispatches.self, forKey: .dispatches)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.thresholds, forKey: .thresholds)
        try container.encode(self.arrivals, forKey: .arrivals)
        try container.encode(self.dispatches, forKey: .dispatches)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case isVatPayer
        case notes
        case thresholds
        case arrivals
        case dispatches
    }
}