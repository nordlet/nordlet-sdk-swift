import Foundation

public enum GbP11DItemsListDeclarationsResponseItemsItemItem: Codable, Hashable, Sendable {
    case assetAvailable(GbP11DItemsListDeclarationsResponseItemsItemItemAssetAvailable)
    case assetTransferred(GbP11DItemsListDeclarationsResponseItemsItemItemAssetTransferred)
    case car(GbP11DItemsListDeclarationsResponseItemsItemItemCar)
    case expensesEntertainment(GbP11DItemsListDeclarationsResponseItemsItemItemExpensesEntertainment)
    case expensesHomeTelephone(GbP11DItemsListDeclarationsResponseItemsItemItemExpensesHomeTelephone)
    case expensesNonQualifyingRelocation(GbP11DItemsListDeclarationsResponseItemsItemItemExpensesNonQualifyingRelocation)
    case expensesOther(GbP11DItemsListDeclarationsResponseItemsItemItemExpensesOther)
    case expensesTravelAndSubsistence(GbP11DItemsListDeclarationsResponseItemsItemItemExpensesTravelAndSubsistence)
    case livingAccommodation(GbP11DItemsListDeclarationsResponseItemsItemItemLivingAccommodation)
    case loan(GbP11DItemsListDeclarationsResponseItemsItemItemLoan)
    case medical(GbP11DItemsListDeclarationsResponseItemsItemItemMedical)
    case mileageAllowance(GbP11DItemsListDeclarationsResponseItemsItemItemMileageAllowance)
    case otherClass1A(GbP11DItemsListDeclarationsResponseItemsItemItemOtherClass1A)
    case otherNonClass1A(GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1A)
    case payment(GbP11DItemsListDeclarationsResponseItemsItemItemPayment)
    case relocation(GbP11DItemsListDeclarationsResponseItemsItemItemRelocation)
    case services(GbP11DItemsListDeclarationsResponseItemsItemItemServices)
    case taxOnNotionalPayments(GbP11DItemsListDeclarationsResponseItemsItemItemTaxOnNotionalPayments)
    case taxPaidNotDeducted(GbP11DItemsListDeclarationsResponseItemsItemItemTaxPaidNotDeducted)
    case vans(GbP11DItemsListDeclarationsResponseItemsItemItemVans)
    case vouchersOrCreditCards(GbP11DItemsListDeclarationsResponseItemsItemItemVouchersOrCreditCards)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .type)
        switch discriminant {
        case "asset-available":
            self = .assetAvailable(try GbP11DItemsListDeclarationsResponseItemsItemItemAssetAvailable(from: decoder))
        case "asset-transferred":
            self = .assetTransferred(try GbP11DItemsListDeclarationsResponseItemsItemItemAssetTransferred(from: decoder))
        case "car":
            self = .car(try GbP11DItemsListDeclarationsResponseItemsItemItemCar(from: decoder))
        case "expenses-entertainment":
            self = .expensesEntertainment(try GbP11DItemsListDeclarationsResponseItemsItemItemExpensesEntertainment(from: decoder))
        case "expenses-home-telephone":
            self = .expensesHomeTelephone(try GbP11DItemsListDeclarationsResponseItemsItemItemExpensesHomeTelephone(from: decoder))
        case "expenses-non-qualifying-relocation":
            self = .expensesNonQualifyingRelocation(try GbP11DItemsListDeclarationsResponseItemsItemItemExpensesNonQualifyingRelocation(from: decoder))
        case "expenses-other":
            self = .expensesOther(try GbP11DItemsListDeclarationsResponseItemsItemItemExpensesOther(from: decoder))
        case "expenses-travel-and-subsistence":
            self = .expensesTravelAndSubsistence(try GbP11DItemsListDeclarationsResponseItemsItemItemExpensesTravelAndSubsistence(from: decoder))
        case "living-accommodation":
            self = .livingAccommodation(try GbP11DItemsListDeclarationsResponseItemsItemItemLivingAccommodation(from: decoder))
        case "loan":
            self = .loan(try GbP11DItemsListDeclarationsResponseItemsItemItemLoan(from: decoder))
        case "medical":
            self = .medical(try GbP11DItemsListDeclarationsResponseItemsItemItemMedical(from: decoder))
        case "mileage-allowance":
            self = .mileageAllowance(try GbP11DItemsListDeclarationsResponseItemsItemItemMileageAllowance(from: decoder))
        case "other-class-1a":
            self = .otherClass1A(try GbP11DItemsListDeclarationsResponseItemsItemItemOtherClass1A(from: decoder))
        case "other-non-class-1a":
            self = .otherNonClass1A(try GbP11DItemsListDeclarationsResponseItemsItemItemOtherNonClass1A(from: decoder))
        case "payment":
            self = .payment(try GbP11DItemsListDeclarationsResponseItemsItemItemPayment(from: decoder))
        case "relocation":
            self = .relocation(try GbP11DItemsListDeclarationsResponseItemsItemItemRelocation(from: decoder))
        case "services":
            self = .services(try GbP11DItemsListDeclarationsResponseItemsItemItemServices(from: decoder))
        case "tax-on-notional-payments":
            self = .taxOnNotionalPayments(try GbP11DItemsListDeclarationsResponseItemsItemItemTaxOnNotionalPayments(from: decoder))
        case "tax-paid-not-deducted":
            self = .taxPaidNotDeducted(try GbP11DItemsListDeclarationsResponseItemsItemItemTaxPaidNotDeducted(from: decoder))
        case "vans":
            self = .vans(try GbP11DItemsListDeclarationsResponseItemsItemItemVans(from: decoder))
        case "vouchers-or-credit-cards":
            self = .vouchersOrCreditCards(try GbP11DItemsListDeclarationsResponseItemsItemItemVouchersOrCreditCards(from: decoder))
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