import Foundation

public struct PostV1BillingAccountSetPlanResponseMonthToDate: Codable, Hashable, Sendable {
    public let from: String
    public let to: String
    public let apiRequests: Int64
    public let ocrPages: Int64
    public let fileBytes: Double
    public let databaseBytes: Double
    public let archivedCompanies: Int64
    public let estimatedTodayCents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        from: String,
        to: String,
        apiRequests: Int64,
        ocrPages: Int64,
        fileBytes: Double,
        databaseBytes: Double,
        archivedCompanies: Int64,
        estimatedTodayCents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.from = from
        self.to = to
        self.apiRequests = apiRequests
        self.ocrPages = ocrPages
        self.fileBytes = fileBytes
        self.databaseBytes = databaseBytes
        self.archivedCompanies = archivedCompanies
        self.estimatedTodayCents = estimatedTodayCents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.apiRequests = try container.decode(Int64.self, forKey: .apiRequests)
        self.ocrPages = try container.decode(Int64.self, forKey: .ocrPages)
        self.fileBytes = try container.decode(Double.self, forKey: .fileBytes)
        self.databaseBytes = try container.decode(Double.self, forKey: .databaseBytes)
        self.archivedCompanies = try container.decode(Int64.self, forKey: .archivedCompanies)
        self.estimatedTodayCents = try container.decode(Int64.self, forKey: .estimatedTodayCents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.apiRequests, forKey: .apiRequests)
        try container.encode(self.ocrPages, forKey: .ocrPages)
        try container.encode(self.fileBytes, forKey: .fileBytes)
        try container.encode(self.databaseBytes, forKey: .databaseBytes)
        try container.encode(self.archivedCompanies, forKey: .archivedCompanies)
        try container.encode(self.estimatedTodayCents, forKey: .estimatedTodayCents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case apiRequests
        case ocrPages
        case fileBytes
        case databaseBytes
        case archivedCompanies
        case estimatedTodayCents
    }
}