import Foundation

public struct PostV1PayrollRunsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let month: Int64
    public let status: PostV1PayrollRunsCreateResponseStatus
    public let grossTotal: String
    public let npdTotal: String
    public let gpmTotal: String
    public let sodraEmployeeTotal: String
    public let sodraEmployerTotal: String
    public let netTotal: String
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let approvedAt: Nullable<String>
    public let lines: [PostV1PayrollRunsCreateResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        month: Int64,
        status: PostV1PayrollRunsCreateResponseStatus,
        grossTotal: String,
        npdTotal: String,
        gpmTotal: String,
        sodraEmployeeTotal: String,
        sodraEmployerTotal: String,
        netTotal: String,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        approvedAt: Nullable<String>,
        lines: [PostV1PayrollRunsCreateResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.month = month
        self.status = status
        self.grossTotal = grossTotal
        self.npdTotal = npdTotal
        self.gpmTotal = gpmTotal
        self.sodraEmployeeTotal = sodraEmployeeTotal
        self.sodraEmployerTotal = sodraEmployerTotal
        self.netTotal = netTotal
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.approvedAt = approvedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.status = try container.decode(PostV1PayrollRunsCreateResponseStatus.self, forKey: .status)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.npdTotal = try container.decode(String.self, forKey: .npdTotal)
        self.gpmTotal = try container.decode(String.self, forKey: .gpmTotal)
        self.sodraEmployeeTotal = try container.decode(String.self, forKey: .sodraEmployeeTotal)
        self.sodraEmployerTotal = try container.decode(String.self, forKey: .sodraEmployerTotal)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.approvedAt = try container.decode(Nullable<String>.self, forKey: .approvedAt)
        self.lines = try container.decode([PostV1PayrollRunsCreateResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.npdTotal, forKey: .npdTotal)
        try container.encode(self.gpmTotal, forKey: .gpmTotal)
        try container.encode(self.sodraEmployeeTotal, forKey: .sodraEmployeeTotal)
        try container.encode(self.sodraEmployerTotal, forKey: .sodraEmployerTotal)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.approvedAt, forKey: .approvedAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case month
        case status
        case grossTotal
        case npdTotal
        case gpmTotal
        case sodraEmployeeTotal
        case sodraEmployerTotal
        case netTotal
        case journalTransactionId
        case notes
        case createdAt
        case approvedAt
        case lines
    }
}