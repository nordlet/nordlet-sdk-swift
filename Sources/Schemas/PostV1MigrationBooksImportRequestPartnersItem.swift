import Foundation

public struct PostV1MigrationBooksImportRequestPartnersItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let type: PostV1MigrationBooksImportRequestPartnersItemType?
    public let vatCode: String?
    public let email: String?
    public let phone: String?
    public let isCustomer: Bool?
    public let isSupplier: Bool?
    public let paymentTermDays: Int64?
    public let address: PostV1MigrationBooksImportRequestPartnersItemAddress?
    public let notes: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        type: PostV1MigrationBooksImportRequestPartnersItemType? = nil,
        vatCode: String? = nil,
        email: String? = nil,
        phone: String? = nil,
        isCustomer: Bool? = nil,
        isSupplier: Bool? = nil,
        paymentTermDays: Int64? = nil,
        address: PostV1MigrationBooksImportRequestPartnersItemAddress? = nil,
        notes: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.type = type
        self.vatCode = vatCode
        self.email = email
        self.phone = phone
        self.isCustomer = isCustomer
        self.isSupplier = isSupplier
        self.paymentTermDays = paymentTermDays
        self.address = address
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decodeIfPresent(PostV1MigrationBooksImportRequestPartnersItemType.self, forKey: .type)
        self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.isCustomer = try container.decodeIfPresent(Bool.self, forKey: .isCustomer)
        self.isSupplier = try container.decodeIfPresent(Bool.self, forKey: .isSupplier)
        self.paymentTermDays = try container.decodeIfPresent(Int64.self, forKey: .paymentTermDays)
        self.address = try container.decodeIfPresent(PostV1MigrationBooksImportRequestPartnersItemAddress.self, forKey: .address)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.isCustomer, forKey: .isCustomer)
        try container.encodeIfPresent(self.isSupplier, forKey: .isSupplier)
        try container.encodeIfPresent(self.paymentTermDays, forKey: .paymentTermDays)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case type
        case vatCode
        case email
        case phone
        case isCustomer
        case isSupplier
        case paymentTermDays
        case address
        case notes
    }
}