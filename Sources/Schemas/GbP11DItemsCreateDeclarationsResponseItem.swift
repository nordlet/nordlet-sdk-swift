import Foundation

public enum GbP11DItemsCreateDeclarationsResponseItem: Codable, Hashable, Sendable {
    case assetAvailable(GbP11DItemsCreateDeclarationsResponseItemAssetAvailable)
    case assetTransferred(GbP11DItemsCreateDeclarationsResponseItemAssetTransferred)
    case car(GbP11DItemsCreateDeclarationsResponseItemCar)
    case expensesEntertainment(GbP11DItemsCreateDeclarationsResponseItemExpensesEntertainment)
    case expensesHomeTelephone(GbP11DItemsCreateDeclarationsResponseItemExpensesHomeTelephone)
    case expensesNonQualifyingRelocation(GbP11DItemsCreateDeclarationsResponseItemExpensesNonQualifyingRelocation)
    case expensesOther(GbP11DItemsCreateDeclarationsResponseItemExpensesOther)
    case expensesTravelAndSubsistence(GbP11DItemsCreateDeclarationsResponseItemExpensesTravelAndSubsistence)
    case livingAccommodation(GbP11DItemsCreateDeclarationsResponseItemLivingAccommodation)
    case loan(GbP11DItemsCreateDeclarationsResponseItemLoan)
    case medical(GbP11DItemsCreateDeclarationsResponseItemMedical)
    case mileageAllowance(GbP11DItemsCreateDeclarationsResponseItemMileageAllowance)
    case otherClass1A(GbP11DItemsCreateDeclarationsResponseItemOtherClass1A)
    case otherNonClass1A(GbP11DItemsCreateDeclarationsResponseItemOtherNonClass1A)
    case payment(GbP11DItemsCreateDeclarationsResponseItemPayment)
    case relocation(GbP11DItemsCreateDeclarationsResponseItemRelocation)
    case services(GbP11DItemsCreateDeclarationsResponseItemServices)
    case taxOnNotionalPayments(GbP11DItemsCreateDeclarationsResponseItemTaxOnNotionalPayments)
    case taxPaidNotDeducted(GbP11DItemsCreateDeclarationsResponseItemTaxPaidNotDeducted)
    case vans(GbP11DItemsCreateDeclarationsResponseItemVans)
    case vouchersOrCreditCards(GbP11DItemsCreateDeclarationsResponseItemVouchersOrCreditCards)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .type)
        switch discriminant {
        case "asset-available":
            self = .assetAvailable(try GbP11DItemsCreateDeclarationsResponseItemAssetAvailable(from: decoder))
        case "asset-transferred":
            self = .assetTransferred(try GbP11DItemsCreateDeclarationsResponseItemAssetTransferred(from: decoder))
        case "car":
            self = .car(try GbP11DItemsCreateDeclarationsResponseItemCar(from: decoder))
        case "expenses-entertainment":
            self = .expensesEntertainment(try GbP11DItemsCreateDeclarationsResponseItemExpensesEntertainment(from: decoder))
        case "expenses-home-telephone":
            self = .expensesHomeTelephone(try GbP11DItemsCreateDeclarationsResponseItemExpensesHomeTelephone(from: decoder))
        case "expenses-non-qualifying-relocation":
            self = .expensesNonQualifyingRelocation(try GbP11DItemsCreateDeclarationsResponseItemExpensesNonQualifyingRelocation(from: decoder))
        case "expenses-other":
            self = .expensesOther(try GbP11DItemsCreateDeclarationsResponseItemExpensesOther(from: decoder))
        case "expenses-travel-and-subsistence":
            self = .expensesTravelAndSubsistence(try GbP11DItemsCreateDeclarationsResponseItemExpensesTravelAndSubsistence(from: decoder))
        case "living-accommodation":
            self = .livingAccommodation(try GbP11DItemsCreateDeclarationsResponseItemLivingAccommodation(from: decoder))
        case "loan":
            self = .loan(try GbP11DItemsCreateDeclarationsResponseItemLoan(from: decoder))
        case "medical":
            self = .medical(try GbP11DItemsCreateDeclarationsResponseItemMedical(from: decoder))
        case "mileage-allowance":
            self = .mileageAllowance(try GbP11DItemsCreateDeclarationsResponseItemMileageAllowance(from: decoder))
        case "other-class-1a":
            self = .otherClass1A(try GbP11DItemsCreateDeclarationsResponseItemOtherClass1A(from: decoder))
        case "other-non-class-1a":
            self = .otherNonClass1A(try GbP11DItemsCreateDeclarationsResponseItemOtherNonClass1A(from: decoder))
        case "payment":
            self = .payment(try GbP11DItemsCreateDeclarationsResponseItemPayment(from: decoder))
        case "relocation":
            self = .relocation(try GbP11DItemsCreateDeclarationsResponseItemRelocation(from: decoder))
        case "services":
            self = .services(try GbP11DItemsCreateDeclarationsResponseItemServices(from: decoder))
        case "tax-on-notional-payments":
            self = .taxOnNotionalPayments(try GbP11DItemsCreateDeclarationsResponseItemTaxOnNotionalPayments(from: decoder))
        case "tax-paid-not-deducted":
            self = .taxPaidNotDeducted(try GbP11DItemsCreateDeclarationsResponseItemTaxPaidNotDeducted(from: decoder))
        case "vans":
            self = .vans(try GbP11DItemsCreateDeclarationsResponseItemVans(from: decoder))
        case "vouchers-or-credit-cards":
            self = .vouchersOrCreditCards(try GbP11DItemsCreateDeclarationsResponseItemVouchersOrCreditCards(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .assetAvailable(let data):
            try container.encode("asset-available", forKey: .type)
            try data.encode(to: encoder)
        case .assetTransferred(let data):
            try container.encode("asset-transferred", forKey: .type)
            try data.encode(to: encoder)
        case .car(let data):
            try container.encode("car", forKey: .type)
            try data.encode(to: encoder)
        case .expensesEntertainment(let data):
            try container.encode("expenses-entertainment", forKey: .type)
            try data.encode(to: encoder)
        case .expensesHomeTelephone(let data):
            try container.encode("expenses-home-telephone", forKey: .type)
            try data.encode(to: encoder)
        case .expensesNonQualifyingRelocation(let data):
            try container.encode("expenses-non-qualifying-relocation", forKey: .type)
            try data.encode(to: encoder)
        case .expensesOther(let data):
            try container.encode("expenses-other", forKey: .type)
            try data.encode(to: encoder)
        case .expensesTravelAndSubsistence(let data):
            try container.encode("expenses-travel-and-subsistence", forKey: .type)
            try data.encode(to: encoder)
        case .livingAccommodation(let data):
            try container.encode("living-accommodation", forKey: .type)
            try data.encode(to: encoder)
        case .loan(let data):
            try container.encode("loan", forKey: .type)
            try data.encode(to: encoder)
        case .medical(let data):
            try container.encode("medical", forKey: .type)
            try data.encode(to: encoder)
        case .mileageAllowance(let data):
            try container.encode("mileage-allowance", forKey: .type)
            try data.encode(to: encoder)
        case .otherClass1A(let data):
            try container.encode("other-class-1a", forKey: .type)
            try data.encode(to: encoder)
        case .otherNonClass1A(let data):
            try container.encode("other-non-class-1a", forKey: .type)
            try data.encode(to: encoder)
        case .payment(let data):
            try container.encode("payment", forKey: .type)
            try data.encode(to: encoder)
        case .relocation(let data):
            try container.encode("relocation", forKey: .type)
            try data.encode(to: encoder)
        case .services(let data):
            try container.encode("services", forKey: .type)
            try data.encode(to: encoder)
        case .taxOnNotionalPayments(let data):
            try container.encode("tax-on-notional-payments", forKey: .type)
            try data.encode(to: encoder)
        case .taxPaidNotDeducted(let data):
            try container.encode("tax-paid-not-deducted", forKey: .type)
            try data.encode(to: encoder)
        case .vans(let data):
            try container.encode("vans", forKey: .type)
            try data.encode(to: encoder)
        case .vouchersOrCreditCards(let data):
            try container.encode("vouchers-or-credit-cards", forKey: .type)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }
}