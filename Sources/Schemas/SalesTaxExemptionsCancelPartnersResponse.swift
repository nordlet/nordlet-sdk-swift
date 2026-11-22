import Foundation

public struct SalesTaxExemptionsCancelPartnersResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let state: String
    public let reasons: [String]
    public let otherReason: Nullable<String>
    public let reasonDetail: Nullable<String>
    public let businessType: String
    public let otherBusinessType: Nullable<String>
    public let idNumber: String
    public let idIssuedBy: String
    public let singlePurchaseReference: Nullable<String>
    public let signedBy: Nullable<String>
    public let signerTitle: Nullable<String>
    public let signedOn: Nullable<String>
    public let receivedOn: String
    public let cancelledOn: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        state: String,
        reasons: [String],
        otherReason: Nullable<String>,
        reasonDetail: Nullable<String>,
        businessType: String,
        otherBusinessType: Nullable<String>,
        idNumber: String,
        idIssuedBy: String,
        singlePurchaseReference: Nullable<String>,
        signedBy: Nullable<String>,
        signerTitle: Nullable<String>,
        signedOn: Nullable<String>,
        receivedOn: String,
        cancelledOn: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.state = state
        self.reasons = reasons
        self.otherReason = otherReason
        self.reasonDetail = reasonDetail
        self.businessType = businessType
        self.otherBusinessType = otherBusinessType
        self.idNumber = idNumber
        self.idIssuedBy = idIssuedBy
        self.singlePurchaseReference = singlePurchaseReference
        self.signedBy = signedBy
        self.signerTitle = signerTitle
        self.signedOn = signedOn
        self.receivedOn = receivedOn
        self.cancelledOn = cancelledOn
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.state = try container.decode(String.self, forKey: .state)
        self.reasons = try container.decode([String].self, forKey: .reasons)
        self.otherReason = try container.decode(Nullable<String>.self, forKey: .otherReason)
        self.reasonDetail = try container.decode(Nullable<String>.self, forKey: .reasonDetail)
        self.businessType = try container.decode(String.self, forKey: .businessType)
        self.otherBusinessType = try container.decode(Nullable<String>.self, forKey: .otherBusinessType)
        self.idNumber = try container.decode(String.self, forKey: .idNumber)
        self.idIssuedBy = try container.decode(String.self, forKey: .idIssuedBy)
        self.singlePurchaseReference = try container.decode(Nullable<String>.self, forKey: .singlePurchaseReference)
        self.signedBy = try container.decode(Nullable<String>.self, forKey: .signedBy)
        self.signerTitle = try container.decode(Nullable<String>.self, forKey: .signerTitle)
        self.signedOn = try container.decode(Nullable<String>.self, forKey: .signedOn)
        self.receivedOn = try container.decode(String.self, forKey: .receivedOn)
        self.cancelledOn = try container.decode(Nullable<String>.self, forKey: .cancelledOn)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.reasons, forKey: .reasons)
        try container.encode(self.otherReason, forKey: .otherReason)
        try container.encode(self.reasonDetail, forKey: .reasonDetail)
        try container.encode(self.businessType, forKey: .businessType)
        try container.encode(self.otherBusinessType, forKey: .otherBusinessType)
        try container.encode(self.idNumber, forKey: .idNumber)
        try container.encode(self.idIssuedBy, forKey: .idIssuedBy)
        try container.encode(self.singlePurchaseReference, forKey: .singlePurchaseReference)
        try container.encode(self.signedBy, forKey: .signedBy)
        try container.encode(self.signerTitle, forKey: .signerTitle)
        try container.encode(self.signedOn, forKey: .signedOn)
        try container.encode(self.receivedOn, forKey: .receivedOn)
        try container.encode(self.cancelledOn, forKey: .cancelledOn)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case state
        case reasons
        case otherReason
        case reasonDetail
        case businessType
        case otherBusinessType
        case idNumber
        case idIssuedBy
        case singlePurchaseReference
        case signedBy
        case signerTitle
        case signedOn
        case receivedOn
        case cancelledOn
    }
}