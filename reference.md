# Reference
## reference
<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">exchangeRatesSync</a>(request: Requests.ExchangeRatesSyncReferenceRequest, requestOptions: RequestOptions?) -> ExchangeRatesSyncReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches the euro exchange rates the Bank of Lithuania web service publishes for `date` (default: the company's current date) and stores them in the rate table shared by all companies, replacing the rates already stored for that date. Answers 404 when no rates are published for the date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.exchangeRatesSync(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExchangeRatesSyncReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">exchangeRatesList</a>(request: Requests.ExchangeRatesListReferenceRequest, requestOptions: RequestOptions?) -> ExchangeRatesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the stored euro exchange rates, which are shared by all companies. Filterable by `currencyCode` and `date`; sortable by `date` and `currencyCode`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.exchangeRatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExchangeRatesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">exchangeRatesSet</a>(request: Requests.ExchangeRatesSetReferenceRequest, requestOptions: RequestOptions?) -> ExchangeRatesSetReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stores a company exchange rate for `currency` on `date`, in units of the currency per one unit of the company's base currency, replacing the company rate stored for that currency and date. Rate lookups use the company rate when it is dated on or after the latest shared rate on or before the lookup date. Answers 422 when `rate` is not positive.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.exchangeRatesSet(request: .init(
        currency: "currency",
        date: CalendarDate("2026-07-01")!,
        rate: "121.00000000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExchangeRatesSetReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">exchangeRatesOverridesList</a>(request: Requests.ExchangeRatesOverridesListReferenceRequest, requestOptions: RequestOptions?) -> ExchangeRatesOverridesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's own exchange rates set with `reference/exchange-rates/set`. Filterable by `currencyCode` and `date`; sortable by `date` and `currencyCode`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.exchangeRatesOverridesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExchangeRatesOverridesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">exchangeRatesOverridesDelete</a>(request: Requests.ExchangeRatesOverridesDeleteReferenceRequest, requestOptions: RequestOptions?) -> ExchangeRatesOverridesDeleteReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the company's own exchange rate for `currency` on `date`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.exchangeRatesOverridesDelete(request: .init(
        currency: "currency",
        date: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExchangeRatesOverridesDeleteReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">countriesList</a>(request: Requests.CountriesListReferenceRequest, requestOptions: RequestOptions?) -> CountriesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists every country code Nordlet knows with its EU and EEA membership and its name in each supported locale.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.countriesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CountriesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">ltCountiesList</a>(request: Requests.LtCountiesListReferenceRequest, requestOptions: RequestOptions?) -> LtCountiesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the ten Lithuanian counties (apskritys) with their code and ISO code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.ltCountiesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtCountiesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">ltMunicipalitiesList</a>(request: Requests.LtMunicipalitiesListReferenceRequest, requestOptions: RequestOptions?) -> LtMunicipalitiesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the Lithuanian municipalities (savivaldybės) with the county each belongs to; `countyCode` limits the list to one county.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.ltMunicipalitiesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtMunicipalitiesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">ltCitiesList</a>(request: Requests.LtCitiesListReferenceRequest, requestOptions: RequestOptions?) -> LtCitiesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Lithuanian cities with their municipality; `municipalityCode` limits the list to one municipality and `q` to names that start with the given text (case-insensitive).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.ltCitiesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtCitiesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">banksList</a>(request: Requests.BanksListReferenceRequest, requestOptions: RequestOptions?) -> BanksListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the banks of the bank directory shared by all companies. Filterable by `countryCode`, `name`, `bic` and `bankCode`; sortable by `name`, `bic` and `countryCode`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.banksList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BanksListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">banksUpsert</a>(request: Requests.BanksUpsertReferenceRequest, requestOptions: RequestOptions?) -> BanksUpsertReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a bank to the shared bank directory or, when a bank with the same `countryCode` and `bic` exists, replaces its name, bank code and active flag. Platform administrators only.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.banksUpsert(request: .init(
        countryCode: "countryCode",
        name: "name",
        bic: "bic"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BanksUpsertReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">ltRegionsList</a>(request: Requests.LtRegionsListReferenceRequest, requestOptions: RequestOptions?) -> LtRegionsListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the ten Lithuanian regions (apskritys) with their code and ISO code; the same list as `reference/lt/counties/list`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.ltRegionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtRegionsListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">currenciesList</a>(request: Requests.CurrenciesListReferenceRequest, requestOptions: RequestOptions?) -> CurrenciesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the currencies known to Nordlet with their minor units. Filterable and sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.currenciesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CurrenciesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">vatClassifiersList</a>(request: Requests.VatClassifiersListReferenceRequest, requestOptions: RequestOptions?) -> VatClassifiersListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's VAT classifiers (code, country, name and rate). A document line that names a classifier in `vatClassifierCode` takes its rate from it when neither the line nor the item has a rate. Filterable by `code`, `countryCode` and `ratePercent`; sortable by `code` and `ratePercent`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.vatClassifiersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatClassifiersListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">vatClassifiersUpsert</a>(request: Requests.VatClassifiersUpsertReferenceRequest, requestOptions: RequestOptions?) -> VatClassifiersUpsertReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds VAT classifiers to the company or replaces the country, name and rate of the ones whose `code` already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.vatClassifiersUpsert(request: .init(rows: [
        VatClassifiersUpsertReferenceRequestRowsItem(
            code: "code",
            name: "name"
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatClassifiersUpsertReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">euVatRatesList</a>(request: Requests.EuVatRatesListReferenceRequest, requestOptions: RequestOptions?) -> EuVatRatesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Effective EU VAT rate mapping for this company: EC TEDB defaults, replaced per country by any company overrides. Verify the mapping fits the goods and services you sell before relying on it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.euVatRatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuVatRatesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">euVatRatesSetOverrides</a>(request: Requests.EuVatRatesSetOverridesReferenceRequest, requestOptions: RequestOptions?) -> EuVatRatesSetOverridesReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replace the VAT rate mapping this company uses for one EU country. Pass an empty rates array to drop the overrides and return to the TEDB defaults. Overrides feed rate suggestions (vat/resolve) and OSS/IOSS return rate classification.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.euVatRatesSetOverrides(request: .init(
        countryCode: "countryCode",
        rates: [
            EuVatRatesSetOverridesReferenceRequestRatesItem(
                category: .standard,
                ratePercent: "121.00"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuVatRatesSetOverridesReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">vatResolve</a>(request: Requests.VatResolveReferenceRequest, requestOptions: RequestOptions?) -> VatResolveReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Works out the VAT treatment of a supply by this company: the scheme (domestic, intra-EU B2B, reverse charge, OSS, IOSS, marketplace deemed supplier, export, out of scope or SME exempt), the country whose VAT applies, its rates with the company's overrides applied, and the legal basis. The customer comes from `partnerId` (country from the partner's address or VAT number, business status from the VAT number) or from `customerCountryCode` and `customerIsBusiness`; `date` defaults to the company's current date; when `belowDistanceSalesThreshold` is not given, the distance-sales threshold is tracked from the company's ledger. Answers 422 when the partner has neither an address country nor a VAT code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.vatResolve(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatResolveReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">cnCodesList</a>(request: Requests.CnCodesListReferenceRequest, requestOptions: RequestOptions?) -> CnCodesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the Combined Nomenclature codes of the directory shared by all companies. Filterable by `code`, `name` and `nameLt`; sortable by `code`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.cnCodesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CnCodesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">cnCodesUpsert</a>(request: Requests.CnCodesUpsertReferenceRequest, requestOptions: RequestOptions?) -> CnCodesUpsertReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds Combined Nomenclature codes to the shared directory or replaces the names and supplementary unit of the codes that exist. Platform administrators only.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.cnCodesUpsert(request: .init(rows: [
        CnCodesUpsertReferenceRequestRowsItem(
            code: "code",
            name: "name"
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CnCodesUpsertReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">complianceVersionsList</a>(request: Requests.ComplianceVersionsListReferenceRequest, requestOptions: RequestOptions?) -> ComplianceVersionsListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the versions of the filing systems, schemas and forms Nordlet's output was checked against, with the date of the check and the source; `country` limits the list to one country.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.complianceVersionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ComplianceVersionsListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">intrastatThresholdsList</a>(request: Requests.IntrastatThresholdsListReferenceRequest, requestOptions: RequestOptions?) -> IntrastatThresholdsListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the Intrastat thresholds stored per year: the reporting and the statistical-value threshold for arrivals and for dispatches.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.intrastatThresholdsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntrastatThresholdsListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">unitsList</a>(request: Requests.UnitsListReferenceRequest, requestOptions: RequestOptions?) -> UnitsListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the measurement units of the directory shared by all companies, with Lithuanian and English names. Filterable by `code`, `nameLt` and `nameEn`; sortable by `code`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.unitsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">seriesCreate</a>(request: Requests.SeriesCreateReferenceRequest, requestOptions: RequestOptions?) -> SeriesCreateReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a numbering series for a document type, prefix and year; the first number the series hands out is at least `startAt`. Answers 409 when a series with the same document type, prefix and year exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.seriesCreate(request: .init(
        documentType: "documentType",
        year: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SeriesCreateReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reference.<a href="/Sources/Resources/Reference/ReferenceClient.swift">seriesList</a>(request: Requests.SeriesListReferenceRequest, requestOptions: RequestOptions?) -> SeriesListReferenceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's numbering series with the next number of each. Filterable and sortable by `documentType`, `prefix` and `year`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reference.seriesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SeriesListReferenceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## partners
<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">addressesCreate</a>(request: Requests.AddressesCreatePartnersRequest, requestOptions: RequestOptions?) -> AddressesCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an address of type billing, shipping, registered or other to the partner in `partnerId`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.addressesCreate(request: .init(partnerId: "partnerId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AddressesCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">addressesUpdate</a>(request: Requests.AddressesUpdatePartnersRequest, requestOptions: RequestOptions?) -> AddressesUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of a partner address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.addressesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AddressesUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">addressesDelete</a>(request: Requests.AddressesDeletePartnersRequest, requestOptions: RequestOptions?) -> AddressesDeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a partner address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.addressesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AddressesDeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">addressesList</a>(request: Requests.AddressesListPartnersRequest, requestOptions: RequestOptions?) -> AddressesListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists partner addresses; filterable by `partnerId`, `type` and `city`, sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.addressesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AddressesListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">contactsCreate</a>(request: Requests.ContactsCreatePartnersRequest, requestOptions: RequestOptions?) -> ContactsCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a contact person to the partner in `partnerId`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.contactsCreate(request: .init(
        name: "name",
        partnerId: "partnerId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContactsCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">contactsUpdate</a>(request: Requests.ContactsUpdatePartnersRequest, requestOptions: RequestOptions?) -> ContactsUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of a partner contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.contactsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContactsUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">contactsDelete</a>(request: Requests.ContactsDeletePartnersRequest, requestOptions: RequestOptions?) -> ContactsDeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a partner contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.contactsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContactsDeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">contactsList</a>(request: Requests.ContactsListPartnersRequest, requestOptions: RequestOptions?) -> ContactsListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists partner contacts; filterable by `partnerId`, `name` and `email`, sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.contactsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContactsListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">bankAccountsCreate</a>(request: Requests.BankAccountsCreatePartnersRequest, requestOptions: RequestOptions?) -> BankAccountsCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a bank account to the partner in `partnerId`. The IBAN is stored without spaces in upper case; an IBAN the partner already has is refused with 409. With `isDefault` true the partner's other accounts lose their default mark.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.bankAccountsCreate(request: .init(
        iban: "iban",
        partnerId: "partnerId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BankAccountsCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">bankAccountsUpdate</a>(request: Requests.BankAccountsUpdatePartnersRequest, requestOptions: RequestOptions?) -> BankAccountsUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of a partner bank account. A new IBAN is stored without spaces in upper case and is refused with 409 when the partner already has it; when the account is the default after the change, the partner's other accounts lose their default mark.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.bankAccountsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BankAccountsUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">bankAccountsDelete</a>(request: Requests.BankAccountsDeletePartnersRequest, requestOptions: RequestOptions?) -> BankAccountsDeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a partner bank account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.bankAccountsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BankAccountsDeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">bankAccountsList</a>(request: Requests.BankAccountsListPartnersRequest, requestOptions: RequestOptions?) -> BankAccountsListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists partner bank accounts; filterable by `partnerId` and `iban`, sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.bankAccountsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BankAccountsListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">filesList</a>(request: Requests.FilesListPartnersRequest, requestOptions: RequestOptions?) -> FilesListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the files attached to a partner, newest first. `partners/create` attaches one with `documentRef`, and `leads/convert` moves the lead's files here.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.filesList(request: .init(partnerId: "partnerId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FilesListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">debtRemindersPreview</a>(request: Requests.DebtRemindersPreviewPartnersRequest, requestOptions: RequestOptions?) -> DebtRemindersPreviewPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs the overdue selection of the daily debt-reminder job for this company as of the company's current date and returns the overdue reminders it would send, without sending or recording anything. A partner is included when it has `autoDebtReminder`, is active, has an e-mail address, got no overdue reminder in the last `repeatDays` days (`partners/debt-reminders/settings/get`) and has issued invoices or advance invoices with `debtRemindersEnabled` past their due date with an unpaid remainder; the interest per invoice is the remainder times the partner's `lateInterestPercent` times the days late over 365, and the totals are per currency. Sent reminders are listed by `partners/debt-reminders/list`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.debtRemindersPreview(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtRemindersPreviewPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">debtRemindersList</a>(request: Requests.DebtRemindersListPartnersRequest, requestOptions: RequestOptions?) -> DebtRemindersListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the debt reminders the daily job has sent, one row per partner and currency with the ids of the invoices it covered and its `kind` (`before_due` or `overdue`); filterable by `partnerId`, sortable by `sentAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.debtRemindersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtRemindersListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">debtRemindersSettingsGet</a>(request: Requests.DebtRemindersSettingsGetPartnersRequest, requestOptions: RequestOptions?) -> DebtRemindersSettingsGetPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the debt-reminder schedule of the company: `daysBefore`, the days before the due date on which the first reminder is sent (null when no reminder is sent before the due date), and `repeatDays`, the days between overdue reminders to a partner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.debtRemindersSettingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtRemindersSettingsGetPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">debtRemindersSettingsUpdate</a>(request: Requests.DebtRemindersSettingsUpdatePartnersRequest, requestOptions: RequestOptions?) -> DebtRemindersSettingsUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of the company's debt-reminder schedule. `daysBefore` (1 to 90, or null to send nothing before the due date) makes the daily job send one "payment due soon" reminder per invoice that many days before its due date; `repeatDays` (1 to 90) is the number of days between overdue reminders to a partner. Only partners with `autoDebtReminder` get reminders, and only for invoices with `debtRemindersEnabled`. A body without fields is refused with 400.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.debtRemindersSettingsUpdate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtRemindersSettingsUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">debtRemindersUpcoming</a>(request: Requests.DebtRemindersUpcomingPartnersRequest, requestOptions: RequestOptions?) -> DebtRemindersUpcomingPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the next reminder the daily debt-reminder job would send for each unpaid issued invoice or advance invoice with `debtRemindersEnabled` of the partners that get reminders (`autoDebtReminder`, active, with an e-mail address), as of the company's current date and sorted by `date`. A `before_due` reminder is sent once per invoice, `daysBefore` days before its due date or on the first daily run after that while the due date is still ahead; `overdue` reminders start the day after the due date and repeat every `repeatDays` days per partner, counting only overdue reminders. Nothing is sent or recorded.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.debtRemindersUpcoming(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtRemindersUpcomingPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">validateVat</a>(request: Requests.ValidateVatPartnersRequest, requestOptions: RequestOptions?) -> ValidateVatPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks a VAT number against VIES, either a free `vatCode` or the VAT code of the partner in `partnerId` (exactly one of the two); a code without an EU country prefix and 2 to 12 alphanumeric characters is refused with 422, as is a partner without a VAT code, and a VIES outage answers 503. With a partner the outcome is written to it (`vatValid`, `vatValidatedAt`): an invalid number or a VIES name that shares no word with the partner's name opens or refreshes the partner's VAT review (`vat_review.opened`), a VIES failure opens one with reason `service_error`, and a valid matching number resolves the open review as `revalidated` (`vat_review.resolved`). Reviews are listed and closed with `partners/vat-reviews/list` and `partners/vat-reviews/resolve`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.validateVat(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ValidateVatPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">vatReviewsList</a>(request: Requests.VatReviewsListPartnersRequest, requestOptions: RequestOptions?) -> VatReviewsListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the VAT reviews opened by VIES checks of partners' VAT codes, with reason `invalid`, `name_mismatch` or `service_error`; filterable by `partnerId`, `status` and `reason`, sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.vatReviewsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatReviewsListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">vatReviewsResolve</a>(request: Requests.VatReviewsResolvePartnersRequest, requestOptions: RequestOptions?) -> VatReviewsResolvePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Closes an open VAT review as `confirmed_valid`, `confirmed_invalid` or `dismissed`, with an optional note. The first two also set the partner's `vatValid` and stamp `vatValidatedAt` when the partner still carries the reviewed VAT code; `dismissed` leaves the partner unchanged. A review that is already resolved answers 409; emits `vat_review.resolved`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.vatReviewsResolve(request: .init(
        id: "id",
        resolution: .confirmedValid
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatReviewsResolvePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">create</a>(request: Requests.CreatePartnersRequest, requestOptions: RequestOptions?) -> CreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a partner. `groupId`, `statusId` and `priceListId` must belong to the company; without `legalCountryClass` the class is derived from the address country (`lt`, `eu` or `non_eu`); `documentRef` attaches an uploaded file that is not yet linked to a record; a `code` already used by a live partner of the company is refused with 409. A `vatCode` is checked against VIES at once and the result stored on the partner: an invalid number, a VIES name that shares no word with the partner's name, or a VIES failure opens a VAT review (`vat_review.opened`), while a code that is not an EU VAT number is stored unchecked (see `partners/validate-vat`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.create(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">findOrCreate</a>(request: Requests.FindOrCreatePartnersRequest, requestOptions: RequestOptions?) -> FindOrCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the live partner matched by `code`, then `vatCode`, then `email` (at least one is required), or creates one from the body with the same validation and VIES check as `partners/create`; `created` says which happened. A creation that loses a race on the partner code returns the partner the other call created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.findOrCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FindOrCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">get</a>(request: Requests.GetPartnersRequest, requestOptions: RequestOptions?) -> GetPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one partner; a deleted partner answers 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">update</a>(request: Requests.UpdatePartnersRequest, requestOptions: RequestOptions?) -> UpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of a partner; the clearable fields accept null. A new address country re-derives `legalCountryClass` unless the class is given, and a `code` already used by another live partner of the company is refused with 409. A changed `vatCode` resets the VIES result and is checked at once as in `partners/create`; a removed code, or one that is not an EU VAT number, resolves the partner's open VAT review as `superseded` (`vat_review.resolved`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.update(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">delete</a>(request: Requests.DeletePartnersRequest, requestOptions: RequestOptions?) -> DeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a partner as deleted; it no longer appears in lists or lookups.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">merge</a>(request: Requests.MergePartnersRequest, requestOptions: RequestOptions?) -> MergePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Moves every row that references the duplicate `sourceId` through a foreign key to partners (looked up in the database catalogue, within the company) to `targetId`, then marks the source partner as deleted; `moved` lists the tables, columns and row counts. Merging a partner into itself is 422, and when both partners hold the same unique entry (for example the same IBAN or item supplier row) the merge is refused with 409 until it is removed from one of them. When the kept partner has an open VAT review, the duplicate's open review is resolved as `superseded` (`vat_review.resolved`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.merge(request: .init(
        sourceId: "sourceId",
        targetId: "targetId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MergePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">anonymize</a>(request: Requests.AnonymizePartnersRequest, requestOptions: RequestOptions?) -> AnonymizePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes birth date, self-employment certificate number, email, phone, address, notes, contacts, addresses and bank accounts, then hides the partner. The name, code and VAT number stay because issued invoices must keep identifying the counterparty for the statutory retention period.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.anonymize(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnonymizePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">list</a>(request: Requests.ListPartnersRequest, requestOptions: RequestOptions?) -> ListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists live partners; filterable by `name`, `code`, `vatCode`, `email`, `type`, `isCustomer`, `isSupplier`, `isActive`, `legalCountryClass`, `isEmployee`, `groupId`, `statusId` and `nextCallDate`, sortable by `name`, `code`, `createdAt`, `nextCallDate` and `rating`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">groupsCreate</a>(request: Requests.GroupsCreatePartnersRequest, requestOptions: RequestOptions?) -> GroupsCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a partner group; a `code` already used by a group of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.groupsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">groupsUpdate</a>(request: Requests.GroupsUpdatePartnersRequest, requestOptions: RequestOptions?) -> GroupsUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the code or name of a partner group; a code already used by another group of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.groupsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">groupsDelete</a>(request: Requests.GroupsDeletePartnersRequest, requestOptions: RequestOptions?) -> GroupsDeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a partner group; a group still assigned to a live partner is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.groupsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsDeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">groupsList</a>(request: Requests.GroupsListPartnersRequest, requestOptions: RequestOptions?) -> GroupsListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's partner groups ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.groupsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">statusesCreate</a>(request: Requests.StatusesCreatePartnersRequest, requestOptions: RequestOptions?) -> StatusesCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a partner status with a `sortOrder`; a `code` already used by a status of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.statusesCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatusesCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">statusesUpdate</a>(request: Requests.StatusesUpdatePartnersRequest, requestOptions: RequestOptions?) -> StatusesUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the code, name or sort order of a partner status; a code already used by another status of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.statusesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatusesUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">statusesDelete</a>(request: Requests.StatusesDeletePartnersRequest, requestOptions: RequestOptions?) -> StatusesDeletePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a partner status; a status still assigned to a live partner is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.statusesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatusesDeletePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">statusesList</a>(request: Requests.StatusesListPartnersRequest, requestOptions: RequestOptions?) -> StatusesListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's partner statuses ordered by sort order, then code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.statusesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatusesListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">inquiriesCreate</a>(request: Requests.InquiriesCreatePartnersRequest, requestOptions: RequestOptions?) -> InquiriesCreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records an inquiry in status `new`, from a partner (`partnerId`) or from a contact given by `contactName` or `contactEmail`; without any of the three it is refused with 422. `assignedUserId` must be a member of the company. Emits `partner_inquiry.created`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.inquiriesCreate(request: .init(subject: "subject"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InquiriesCreatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">inquiriesUpdate</a>(request: Requests.InquiriesUpdatePartnersRequest, requestOptions: RequestOptions?) -> InquiriesUpdatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of an inquiry; `partnerId` and `assignedUserId` accept null. Setting `status` to `closed` stamps `closedAt`, and moving a closed inquiry to another status clears it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.inquiriesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InquiriesUpdatePartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">inquiriesGet</a>(request: Requests.InquiriesGetPartnersRequest, requestOptions: RequestOptions?) -> InquiriesGetPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one inquiry with the name of its partner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.inquiriesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InquiriesGetPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">inquiriesList</a>(request: Requests.InquiriesListPartnersRequest, requestOptions: RequestOptions?) -> InquiriesListPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists inquiries with their partner names; filterable by `status`, `channel`, `partnerId`, `assignedUserId` and `subject`, sortable by `createdAt` and `updatedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.inquiriesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InquiriesListPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/Sources/Resources/Partners/PartnersClient.swift">creditCheck</a>(request: Requests.CreditCheckPartnersRequest, requestOptions: RequestOptions?) -> CreditCheckPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compares a partner's open receivables plus an optional `additionalAmount` with its `creditLimit`. The open receivables are the unpaid remainder of the partner's issued invoices, advance invoices and credit notes (credit notes negative), converted to the company's base currency at each invoice's `fxRate`. Without a credit limit `available` is null and `exceeded` is false.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.partners.creditCheck(request: .init(partnerId: "partnerId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreditCheckPartnersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Leads
<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">create</a>(request: Requests.CreateLeadsRequest, requestOptions: RequestOptions?) -> CreateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a lead in status `new`, `contacted`, `qualified` or `lost`. `assignedUserId` must be a member of the company and `sourceId` and `typeId` must exist in it; `countryCode` and `currency` are stored in upper case; `documents` attach uploaded files not yet linked to a record, and `notes` become the lead's first notes with the caller as author. Emits `lead.created`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.create(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">get</a>(request: Requests.GetLeadsRequest, requestOptions: RequestOptions?) -> GetLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one lead with its source and type names.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">update</a>(request: Requests.UpdateLeadsRequest, requestOptions: RequestOptions?) -> UpdateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of a lead; the clearable fields accept null, `documents` attach more uploaded files, and `countryCode` and `currency` are stored in upper case. A lead that is already converted cannot change `status` (409).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.update(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">delete</a>(request: Requests.DeleteLeadsRequest, requestOptions: RequestOptions?) -> DeleteLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a lead with its notes and detaches its files, which stay in the company's files without a record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">list</a>(request: Requests.ListLeadsRequest, requestOptions: RequestOptions?) -> ListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists leads with their source and type names; filterable by `name`, `contactName`, `email`, `phone`, `status`, `sourceId`, `typeId`, `countryCode`, `assignedUserId`, `partnerId`, `estimatedValue` and `createdAt`, sortable by `name`, `status`, `estimatedValue`, `createdAt` and `updatedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">notesCreate</a>(request: Requests.NotesCreateLeadsRequest, requestOptions: RequestOptions?) -> NotesCreateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a note to a lead with the caller as author and refreshes the lead's `updatedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.notesCreate(request: .init(
        leadId: "leadId",
        body: "body"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.NotesCreateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">notesDelete</a>(request: Requests.NotesDeleteLeadsRequest, requestOptions: RequestOptions?) -> NotesDeleteLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a lead note.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.notesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.NotesDeleteLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">notesList</a>(request: Requests.NotesListLeadsRequest, requestOptions: RequestOptions?) -> NotesListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the notes of a lead, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.notesList(request: .init(leadId: "leadId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.NotesListLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">filesList</a>(request: Requests.FilesListLeadsRequest, requestOptions: RequestOptions?) -> FilesListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the files attached to a lead, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.filesList(request: .init(leadId: "leadId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FilesListLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">sourcesCreate</a>(request: Requests.SourcesCreateLeadsRequest, requestOptions: RequestOptions?) -> SourcesCreateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a lead source; a `name` already used by a source of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.sourcesCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SourcesCreateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">sourcesUpdate</a>(request: Requests.SourcesUpdateLeadsRequest, requestOptions: RequestOptions?) -> SourcesUpdateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the name or `isActive` flag of a lead source; a name already used by another source of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.sourcesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SourcesUpdateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">sourcesDelete</a>(request: Requests.SourcesDeleteLeadsRequest, requestOptions: RequestOptions?) -> SourcesDeleteLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a lead source; one still referenced by a lead is refused with 409 and should be deactivated with `leads/sources/update` instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.sourcesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SourcesDeleteLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">sourcesList</a>(request: Requests.SourcesListLeadsRequest, requestOptions: RequestOptions?) -> SourcesListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all lead sources of the company, active and inactive, ordered by name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.sourcesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SourcesListLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">sourcesOptions</a>(request: Requests.SourcesOptionsLeadsRequest, requestOptions: RequestOptions?) -> SourcesOptionsLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the id and name of the active lead sources, ordered by name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.sourcesOptions(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SourcesOptionsLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">typesCreate</a>(request: Requests.TypesCreateLeadsRequest, requestOptions: RequestOptions?) -> TypesCreateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a lead type; a `name` already used by a type of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.typesCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesCreateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">typesUpdate</a>(request: Requests.TypesUpdateLeadsRequest, requestOptions: RequestOptions?) -> TypesUpdateLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the name or `isActive` flag of a lead type; a name already used by another type of the company is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.typesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesUpdateLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">typesDelete</a>(request: Requests.TypesDeleteLeadsRequest, requestOptions: RequestOptions?) -> TypesDeleteLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a lead type; one still referenced by a lead is refused with 409 and should be deactivated with `leads/types/update` instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.typesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesDeleteLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">typesList</a>(request: Requests.TypesListLeadsRequest, requestOptions: RequestOptions?) -> TypesListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all lead types of the company, active and inactive, ordered by name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.typesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesListLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">typesOptions</a>(request: Requests.TypesOptionsLeadsRequest, requestOptions: RequestOptions?) -> TypesOptionsLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the id and name of the active lead types, ordered by name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.typesOptions(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesOptionsLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/Sources/Resources/Leads/LeadsClient.swift">convert</a>(request: Requests.ConvertLeadsRequest, requestOptions: RequestOptions?) -> ConvertLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a customer partner from the lead, move the lead files to the partner, copy the lead notes into the partner notes and mark the lead as converted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.leads.convert(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ConvertLeadsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## catalog
<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsCreate</a>(request: Requests.ItemsCreateCatalogRequest, requestOptions: RequestOptions?) -> ItemsCreateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a catalog item: a product, a service or a set of other items. `unit` must be `vnt`, a global measurement unit or one of the company's own units (`catalog/units/options`), the sale, purchase and expense account codes must be postable accounts of the chart, and `priceFrom`/`priceTo` and `validFrom`/`validTo` must be in order; otherwise 422. A `set` needs at least one component and none of them may be a set; `components` on any other type is refused with 422. 409 when an active item already carries the `code`. `documentRef` is the storage key of a file uploaded with `files/upload`, which is attached to the item. Emits `item.created`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsCreateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsGet</a>(request: Requests.ItemsGetCatalogRequest, requestOptions: RequestOptions?) -> ItemsGetCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one item; a set comes with its components.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsGetCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsUpdate</a>(request: Requests.ItemsUpdateCatalogRequest, requestOptions: RequestOptions?) -> ItemsUpdateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the fields of an item; the fields that are nullable in the request can be set to null to clear them. The checks of `catalog/items/create` apply. `components` replaces the whole component list and is accepted only when the item is or becomes a set (422); turning an item into a set needs components and is refused with 409 while the item is itself a component of another set. Turning a set into another type removes its components. 409 when an active item already carries the new `code`. Emits `item.updated`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsUpdateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsDelete</a>(request: Requests.ItemsDeleteCatalogRequest, requestOptions: RequestOptions?) -> ItemsDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Soft-delete an item. Refused with 409 while the item is a component of an active set. Emits `item.deleted`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsList</a>(request: Requests.ItemsListCatalogRequest, requestOptions: RequestOptions?) -> ItemsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the active items. Filterable: name, code, barcode, type, vatClassifierCode, groupId, kindId, externalId, manufacturer, department. Sortable: name, code, createdAt, updatedAt, salePriceExclVat; default name ascending. Rows carry no components; `catalog/items/get` returns them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsFilesList</a>(request: Requests.ItemsFilesListCatalogRequest, requestOptions: RequestOptions?) -> ItemsFilesListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the files attached to an item, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsFilesList(request: .init(itemId: "itemId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsFilesListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsKindsCreate</a>(request: Requests.ItemsKindsCreateCatalogRequest, requestOptions: RequestOptions?) -> ItemsKindsCreateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an item kind: a code, a name, the SAF-T item type, whether quantities are accounted for, and a sort order. 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsKindsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsKindsCreateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsKindsUpdate</a>(request: Requests.ItemsKindsUpdateCatalogRequest, requestOptions: RequestOptions?) -> ItemsKindsUpdateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change an item kind. 409 when the new code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsKindsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsKindsUpdateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsKindsDelete</a>(request: Requests.ItemsKindsDeleteCatalogRequest, requestOptions: RequestOptions?) -> ItemsKindsDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an item kind. Refused with 409 while an active item uses it; soft-deleted items that still carry it are detached.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsKindsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsKindsDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsKindsList</a>(request: Requests.ItemsKindsListCatalogRequest, requestOptions: RequestOptions?) -> ItemsKindsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's item kinds in sort order, then by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsKindsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsKindsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">unitsCreate</a>(request: Requests.UnitsCreateCatalogRequest, requestOptions: RequestOptions?) -> UnitsCreateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a unit of measure of the company's own, in addition to the global measurement units (`reference/units/list`). 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.unitsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsCreateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">unitsUpdate</a>(request: Requests.UnitsUpdateCatalogRequest, requestOptions: RequestOptions?) -> UnitsUpdateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the code, name or active flag of a company unit. 409 when the new code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.unitsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsUpdateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">unitsDelete</a>(request: Requests.UnitsDeleteCatalogRequest, requestOptions: RequestOptions?) -> UnitsDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a company unit of measure.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.unitsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">unitsList</a>(request: Requests.UnitsListCatalogRequest, requestOptions: RequestOptions?) -> UnitsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's own units of measure, ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.unitsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">unitsOptions</a>(request: Requests.UnitsOptionsCatalogRequest, requestOptions: RequestOptions?) -> UnitsOptionsCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the unit codes an item can use: the company's active own units first, then the global measurement units, named in the requested `locale` (Lithuanian for `lt`, English otherwise). A company unit hides a global unit with the same code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.unitsOptions(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UnitsOptionsCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemGroupsCreate</a>(request: Requests.ItemGroupsCreateCatalogRequest, requestOptions: RequestOptions?) -> ItemGroupsCreateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an item group, optionally under `parentId`. 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemGroupsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemGroupsCreateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemGroupsUpdate</a>(request: Requests.ItemGroupsUpdateCatalogRequest, requestOptions: RequestOptions?) -> ItemGroupsUpdateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the code, name or parent of an item group; `parentId` null moves it to the top level. 422 when the new parent is the group itself or one of its descendants. 409 when the new code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemGroupsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemGroupsUpdateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemGroupsDelete</a>(request: Requests.ItemGroupsDeleteCatalogRequest, requestOptions: RequestOptions?) -> ItemGroupsDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an item group. Refused with 409 while it has child groups or active items assigned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemGroupsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemGroupsDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemGroupsList</a>(request: Requests.ItemGroupsListCatalogRequest, requestOptions: RequestOptions?) -> ItemGroupsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's item groups, ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemGroupsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemGroupsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsSuppliersUpsert</a>(request: Requests.ItemsSuppliersUpsertCatalogRequest, requestOptions: RequestOptions?) -> ItemsSuppliersUpsertCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create or replace the supplier record of an item for a partner (one per item and partner): supplier code, purchase price excluding VAT, currency (EUR when omitted) and notes. Fields omitted from the request are cleared on an existing record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsSuppliersUpsert(request: .init(
        itemId: "itemId",
        partnerId: "partnerId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsSuppliersUpsertCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsSuppliersList</a>(request: Requests.ItemsSuppliersListCatalogRequest, requestOptions: RequestOptions?) -> ItemsSuppliersListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the supplier records, optionally for one `itemId` and/or `partnerId`, ordered by partner name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsSuppliersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsSuppliersListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">itemsSuppliersDelete</a>(request: Requests.ItemsSuppliersDeleteCatalogRequest, requestOptions: RequestOptions?) -> ItemsSuppliersDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete the supplier record of an item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.itemsSuppliersDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItemsSuppliersDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsCreate</a>(request: Requests.PriceListsCreateCatalogRequest, requestOptions: RequestOptions?) -> PriceListsCreateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a price list (currency EUR and active when omitted). 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsCreateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsUpdate</a>(request: Requests.PriceListsUpdateCatalogRequest, requestOptions: RequestOptions?) -> PriceListsUpdateCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a price list. 409 when the new code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsUpdateCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsList</a>(request: Requests.PriceListsListCatalogRequest, requestOptions: RequestOptions?) -> PriceListsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's price lists, ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsItemsSet</a>(request: Requests.PriceListsItemsSetCatalogRequest, requestOptions: RequestOptions?) -> PriceListsItemsSetCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the unit price excluding VAT of up to 500 items on a price list; a price already on the list is replaced and the other items on the list are kept. 422 when an item appears twice in the request. Emits `price_list.updated` with the item ids.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsItemsSet(request: .init(
        priceListId: "priceListId",
        items: [
            PriceListsItemsSetCatalogRequestItemsItem(
                itemId: "itemId",
                unitPriceExclVat: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsItemsSetCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsItemsList</a>(request: Requests.PriceListsItemsListCatalogRequest, requestOptions: RequestOptions?) -> PriceListsItemsListCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the prices of a price list with the item name and code, ordered by item name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsItemsList(request: .init(priceListId: "priceListId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsItemsListCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.catalog.<a href="/Sources/Resources/Catalog/CatalogClient.swift">priceListsItemsDelete</a>(request: Requests.PriceListsItemsDeleteCatalogRequest, requestOptions: RequestOptions?) -> PriceListsItemsDeleteCatalogResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove one item from a price list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.catalog.priceListsItemsDelete(request: .init(
        priceListId: "priceListId",
        itemId: "itemId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PriceListsItemsDeleteCatalogRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## sales
<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesCreate</a>(request: Requests.InvoicesCreateSalesRequest, requestOptions: RequestOptions?) -> InvoicesCreateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft sale document - an invoice, credit note, proforma or advance invoice (`type`) - with its lines; the totals are computed from the lines and `discountPercent`, and the number is assigned by `sales/invoices/issue`. Answers 422 when a credit note credits a proforma, another credit note or a document that is not issued, when the credited document has another partner or currency, when an OSS or IOSS document has no EU `vatCountryCode`, when the lines carry VAT but the company is not a VAT payer or the VAT scheme charges none, or when the operation type or document series is for another document type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesCreate(request: .init(
        partnerId: "partnerId",
        lines: [
            InvoicesCreateSalesRequestLinesItem(

            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCreateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesGet</a>(request: Requests.InvoicesGetSalesRequest, requestOptions: RequestOptions?) -> InvoicesGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one sale document with its lines, its VAT evidence and, on an advance invoice, the gross amount already applied to final invoices.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPdf</a>(request: Requests.InvoicesPdfSalesRequest, requestOptions: RequestOptions?) -> InvoicesPdfSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render a sale document, draft or issued, as a PDF returned base64-encoded. The document's own `locale` wins over the requested one. When the company has a payment link template and the document is issued and not paid, the PDF carries the payment link.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPdf(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPdfSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesView</a>(request: Requests.InvoicesViewSalesRequest, requestOptions: RequestOptions?) -> InvoicesViewSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a sale document as its customer sees it: the seller as printed on it (the snapshot taken at issue, else the company), the buyer with address and e-mail, the lines, the totals, `paidOn` (the date of the latest payment once the document is paid), `payUrl` (as in `sales/invoices/payment-link`) and `token`, the document's customer token for `public/invoices/get` and `public/invoices/pdf`, created on first use; `token` is null on a draft.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesView(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesViewSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesSend</a>(request: Requests.InvoicesSendSalesRequest, requestOptions: RequestOptions?) -> InvoicesSendSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

E-mail an issued sale document as a PDF attachment to `to`, else to the partner's e-mail address, and emit `sale_invoice.sent`. The PDF is the one of `sales/invoices/pdf`. With `quote: true` the document must be a draft: it is e-mailed as a quote (PDF titled quote, no payment link), stays a draft, and `sale_invoice.quote_sent` is emitted instead. Answers 422 when e-mail sending is not configured, when the document is not issued (or, with `quote`, not a draft), or when neither `to` nor the partner's e-mail is set.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesSend(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesSendSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPeppolXml</a>(request: Requests.InvoicesPeppolXmlSalesRequest, requestOptions: RequestOptions?) -> InvoicesPeppolXmlSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render an issued invoice or credit note as a Peppol BIS Billing 3.0 UBL file, returned base64-encoded with the sender and receiver participant identifiers, without sending it; `sales/invoices/peppol-send` sends the same file. Answers 422 for a draft, a proforma or an advance invoice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPeppolXml(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPeppolXmlSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPeppolSend</a>(request: Requests.InvoicesPeppolSendSalesRequest, requestOptions: RequestOptions?) -> InvoicesPeppolSendSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send an issued invoice or credit note to the customer over Peppol through the company's own access point (Account → Compliance → EU; Nordlet supports Recommand, Storecove and e-invoice.be). Without one the call is refused with 422 and the document can only be downloaded with `sales/invoices/peppol-xml`. `status` is `pending` until the receiving access point confirms, then `delivered`; `failed` and `rejected` come with `detail`, and the invoice can then be sent again. Later changes arrive through the access point's webhook and are announced as `sale_invoice.peppol_delivered`, `sale_invoice.peppol_rejected` and `sale_invoice.peppol_failed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPeppolSend(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPeppolSendSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPeppolStatus</a>(request: Requests.InvoicesPeppolStatusSalesRequest, requestOptions: RequestOptions?) -> InvoicesPeppolStatusSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ask the company's Peppol access point what happened to an invoice sent with `sales/invoices/peppol-send`, and store the answer: `pending`, `delivered` (the receiving access point confirmed it), `rejected` (the receiver refused it, see `detail`) or `failed` (it could not be delivered, see `detail`). The access point's webhook updates the same fields without this call. Storecove has no call for the status of a sent document, so for a Storecove access point this answers 422 and the status comes only from its webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPeppolStatus(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPeppolStatusSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesEinvoiceXml</a>(request: Requests.InvoicesEinvoiceXmlSalesRequest, requestOptions: RequestOptions?) -> InvoicesEinvoiceXmlSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render an issued invoice as the national e-invoicing payload for the company country: FatturaPA (IT), KSeF FA(3) (PL) or UBL CIUS-RO (RO). Review the warnings - data the invoice does not carry is flagged, never invented.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesEinvoiceXml(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesEinvoiceXmlSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesEinvoiceSend</a>(request: Requests.InvoicesEinvoiceSendSalesRequest, requestOptions: RequestOptions?) -> InvoicesEinvoiceSendSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the national e-invoicing payload and deliver it over the transport configured for the country gateway in compliance settings. With transport=direct the request talks to the tax authority itself - SdICoop over 2-way TLS for Italy, a KSeF session for Poland, ANAF SPV OAuth for Romania - and returns the national number as soon as the channel assigns one. With transport=bridge the payload goes to the configured bridge endpoint (an accredited intermediary or connector) instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesEinvoiceSend(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesEinvoiceSendSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesEinvoiceStatus</a>(request: Requests.InvoicesEinvoiceStatusSalesRequest, requestOptions: RequestOptions?) -> InvoicesEinvoiceStatusSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ask the national e-invoicing channel what happened to an invoice that was already sent, and store the answer. Italy, Poland and Romania return the outcome only on request - none of them calls back - so this is the way the national number and any rejection reason reach the invoice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesEinvoiceStatus(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesEinvoiceStatusSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesUpdate</a>(request: Requests.InvoicesUpdateSalesRequest, requestOptions: RequestOptions?) -> InvoicesUpdateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a draft sale document. Fields left out keep their value, `lines` replaces every line, a changed `discountPercent` recomputes the existing lines, and `salesTaxPercent` (invoices only, null removes it) recomputes the sales tax and the total. Answers 409 when the document is issued or locked, and 422 under the checks of `sales/invoices/create` (the credited document's partner and currency, the OSS and IOSS country, VAT on the lines, the operation type and document series).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesUpdateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesDelete</a>(request: Requests.InvoicesDeleteSalesRequest, requestOptions: RequestOptions?) -> InvoicesDeleteSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a draft sale document and release the time entries billed on it. Answers 409 when the document is issued (credit it instead) or locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesDeleteSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesIssue</a>(request: Requests.InvoicesIssueSalesRequest, requestOptions: RequestOptions?) -> InvoicesIssueSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a draft sale document: assigns the next number (from its document series, else from `series` or the type's default prefix and the year), the issue date (`issueDate`, else the draft's, else today) and a missing due date from the partner's payment term, and for an invoice, credit note or advance invoice posts the journal entry and stores the VAT evidence. `warehouseId` (or the series' warehouse) takes the sold goods of an invoice out of stock with a cost of goods sold entry; `returnToStock` puts them back for a credit note that credits an invoice. A credit note is set against the unpaid balance of the credited document. Emits `sale_invoice.issued`, `sale_invoice.paid` when a credit note settles the credited invoice in full, and `intercompany.invoice_mirrored` when the partner is linked to another company of the group (a draft purchase invoice is created there). Answers 409 when the document is already issued or locked or the accounting period is locked, 422 when the lines carry VAT under a scheme that charges none, when credit notes would exceed the credited total, or when `returnToStock` is used on anything but a credit note of an invoice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesIssue(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesIssueSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesLock</a>(request: Requests.InvoicesLockSalesRequest, requestOptions: RequestOptions?) -> InvoicesLockSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lock a sale document. A locked document is refused with 409 by `sales/invoices/update`, `sales/invoices/delete`, `sales/invoices/issue` and `sales/invoices/apply-advance` until `sales/invoices/unlock`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesLock(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesLockSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesUnlock</a>(request: Requests.InvoicesUnlockSalesRequest, requestOptions: RequestOptions?) -> InvoicesUnlockSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unlock a sale document locked with `sales/invoices/lock`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesUnlock(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesUnlockSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPaymentLink</a>(request: Requests.InvoicesPaymentLinkSalesRequest, requestOptions: RequestOptions?) -> InvoicesPaymentLinkSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the customer payment link of a sale document: the Stripe card payment page (`source` `stripe`) when the company's Stripe account is connected and can take charges (`sales/invoices/card-payments/get`), else the link rendered from the company's payment link template (`sales/invoices/payment-settings/update`, `source` `template`); `url` is null when the company has neither, the document is not issued or its `payLinkEnabled` is false. The document's payment token is created on first use. Answers 409 when the document is already paid.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPaymentLink(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPaymentLinkSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPaymentSettingsGet</a>(request: Requests.InvoicesPaymentSettingsGetSalesRequest, requestOptions: RequestOptions?) -> InvoicesPaymentSettingsGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the company's payment link template, the https URL that `sales/invoices/payment-link`, the invoice PDF and the invoice e-mail fill in for an issued, unpaid document.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPaymentSettingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPaymentSettingsGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesPaymentSettingsUpdate</a>(request: Requests.InvoicesPaymentSettingsUpdateSalesRequest, requestOptions: RequestOptions?) -> InvoicesPaymentSettingsUpdateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set or clear (null) the company's payment link template: an https URL in which `{{number}}`, `{{amount}}` (the unpaid balance), `{{currency}}`, `{{token}}`, `{{invoiceId}}` and `{{partnerName}}` are replaced, URL-encoded, when a link is rendered.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesPaymentSettingsUpdate(request: .init(paymentLinkTemplate: .null))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPaymentSettingsUpdateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionSchedulesList</a>(request: Requests.RecognitionSchedulesListSalesRequest, requestOptions: RequestOptions?) -> RecognitionSchedulesListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the revenue recognition schedules: the tranches of deferred income of issued invoices whose lines are recognised ratably, by milestone or by percent complete, each with its status and the journal transaction that recognised it. Filterable by invoiceId, invoiceLineId, status, method and scheduleDate; sortable by scheduleDate and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionSchedulesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionSchedulesListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesApplyAdvance</a>(request: Requests.InvoicesApplyAdvanceSalesRequest, requestOptions: RequestOptions?) -> InvoicesApplyAdvanceSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Apply a fully paid advance invoice to an issued invoice of the same partner: posts the settlement journal entry dated `date` (default today), with the applied amount's share of the advance VAT, and records the amount as a payment of the invoice. `amount` defaults to the smaller of the unapplied advance and the invoice's unpaid balance. Emits `sale_invoice.paid` when the invoice becomes fully paid. Answers 409 when the advance is not fully paid, is already applied or credited, when the invoice has nothing left to pay, or when `amount` exceeds the unapplied advance or the unpaid balance; 422 when the advance is not in the company's base currency or the two documents differ in currency.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesApplyAdvance(request: .init(
        advanceId: "advanceId",
        invoiceId: "invoiceId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesApplyAdvanceSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesList</a>(request: Requests.InvoicesListSalesRequest, requestOptions: RequestOptions?) -> InvoicesListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the sale documents of the company with the partner name. Filterable by partnerId, type, status, paymentStatus, fullNumber, issueDate, currency, agreementId, creditedInvoiceId, operationTypeId, documentSeriesId, lockedAt, grossTotal, netTotal, vatTotal, dueDate, orderNumber, seriesLabel, locale and recurringInvoiceId; sortable by createdAt, issueDate, fullNumber, grossTotal, netTotal, vatTotal, status and paymentStatus.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsCreate</a>(request: Requests.ActsCreateSalesRequest, requestOptions: RequestOptions?) -> ActsCreateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft delivery act of goods or services (`type`) for a partner, dated `documentDate` (default today). Lines come from `lines`, else from the sale invoice in `saleInvoiceId`, else the act has none; the number is assigned by `sales/acts/issue`. Answers 422 when the sale invoice belongs to another partner or, when its lines are copied, has none.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsCreate(request: .init(partnerId: "partnerId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsCreateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsUpdate</a>(request: Requests.ActsUpdateSalesRequest, requestOptions: RequestOptions?) -> ActsUpdateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a draft delivery act; fields left out keep their value and `lines` replaces every line. Answers 409 when the act is issued or cancelled, 422 when the linked sale invoice belongs to another partner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsUpdateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsIssue</a>(request: Requests.ActsIssueSalesRequest, requestOptions: RequestOptions?) -> ActsIssueSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a draft delivery act: assigns the next number of its series for the year of the document date. When the act is linked to a sale invoice with pending milestone recognition schedules, they are all recognised on the act's document date, which posts the recognition journal entry and emits `revenue_recognition.posted`. Answers 409 when the act is not a draft, 422 when it has no lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsIssue(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsIssueSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsCancel</a>(request: Requests.ActsCancelSalesRequest, requestOptions: RequestOptions?) -> ActsCancelSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a draft or issued delivery act. Answers 409 when it is already cancelled.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsCancelSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsGet</a>(request: Requests.ActsGetSalesRequest, requestOptions: RequestOptions?) -> ActsGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one delivery act with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsList</a>(request: Requests.ActsListSalesRequest, requestOptions: RequestOptions?) -> ActsListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List delivery acts. Filterable by status, type, partnerId and documentDate; sortable by createdAt, documentDate and fullNumber.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">actsPdf</a>(request: Requests.ActsPdfSalesRequest, requestOptions: RequestOptions?) -> ActsPdfSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render a delivery act as a PDF in `locale`, returned base64-encoded, with the number of the linked sale invoice when there is one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.actsPdf(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ActsPdfSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoiceTemplatesCreate</a>(request: Requests.InvoiceTemplatesCreateSalesRequest, requestOptions: RequestOptions?) -> InvoiceTemplatesCreateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a named template for invoices or credit notes (`documentType`): the header defaults and the lines that `sales/recurring-invoices/generate` turns into invoices. Answers 422 when a referenced partner, agreement, operation type, document series, catalog item or project does not exist or the series is for another document type; 409 when a template with that name exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoiceTemplatesCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceTemplatesCreateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoiceTemplatesUpdate</a>(request: Requests.InvoiceTemplatesUpdateSalesRequest, requestOptions: RequestOptions?) -> InvoiceTemplatesUpdateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a template; fields left out keep their value and `lines` replaces every line. The 422 reference checks of `sales/invoice-templates/create` apply; 409 when the new name is taken.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoiceTemplatesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceTemplatesUpdateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoiceTemplatesGet</a>(request: Requests.InvoiceTemplatesGetSalesRequest, requestOptions: RequestOptions?) -> InvoiceTemplatesGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one invoice template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoiceTemplatesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceTemplatesGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoiceTemplatesDelete</a>(request: Requests.InvoiceTemplatesDeleteSalesRequest, requestOptions: RequestOptions?) -> InvoiceTemplatesDeleteSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an invoice template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoiceTemplatesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceTemplatesDeleteSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoiceTemplatesList</a>(request: Requests.InvoiceTemplatesListSalesRequest, requestOptions: RequestOptions?) -> InvoiceTemplatesListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List invoice templates. Filterable by name, documentType and partnerId; sortable by name, documentType and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoiceTemplatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceTemplatesListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesCreate</a>(request: Requests.RecurringInvoicesCreateSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesCreateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a schedule that generates invoices from an invoice template every `interval` periods of `frequency` from `startDate` (the first run) until `endDate`, for `partnerId` or else the template's partner. `autoIssue` issues each generated invoice and `autoSend` e-mails it to `sendTo`, else to the partner. Invoices are generated by `sales/recurring-invoices/run`, `sales/recurring-invoices/generate` and the scheduled job `recurring-invoices`. Answers 422 when the template is a credit note template, when neither the schedule nor the template names a partner, when `endDate` is before `startDate`, or when `autoSend` is set without `autoIssue`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesCreate(request: .init(
        templateId: "templateId",
        startDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesCreateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesUpdate</a>(request: Requests.RecurringInvoicesUpdateSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesUpdateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a schedule; fields left out keep their value. A change of `startDate`, `frequency` or `interval` moves `nextRunDate` to the first occurrence of the new grid on or after the current next run (or the new start date, if later); an explicit `nextRunDate` wins. `status` switches between `active` and `paused`; a next run past `endDate` makes the schedule `finished`. The 422 checks of `sales/recurring-invoices/create` apply.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesUpdateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesGet</a>(request: Requests.RecurringInvoicesGetSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one recurring invoice schedule with the names of its template and partner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesDelete</a>(request: Requests.RecurringInvoicesDeleteSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesDeleteSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a recurring invoice schedule. The invoices it generated stay.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesDeleteSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesGenerate</a>(request: Requests.RecurringInvoicesGenerateSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesGenerateSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate the next invoice of a schedule now, dated its `nextRunDate`: creates a draft from the template (due date from the template's payment term, VAT scheme from the template or else resolved for the partner and supply type), issues it when `autoIssue` is set and e-mails it when `autoSend` is set, then moves the schedule to its next occurrence (or to `finished` after the last one) and emits `recurring_invoice.generated`. A failure to issue or send comes back in `error` and is stored as `lastError`; the draft stays. Answers 409 when the schedule is finished, 422 when the template is a credit note template or has no lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesGenerate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesGenerateSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesRun</a>(request: Requests.RecurringInvoicesRunSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesRunSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate every invoice due up to `asOfDate` (default today) from the active schedules of the company, catching up to 60 missed occurrences per schedule, as `sales/recurring-invoices/generate` does for one; each generated invoice emits `recurring_invoice.generated`. The answer lists what was generated and the schedules that failed; a failure is also stored as the schedule's `lastError`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesRun(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesRunSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recurringInvoicesList</a>(request: Requests.RecurringInvoicesListSalesRequest, requestOptions: RequestOptions?) -> RecurringInvoicesListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List recurring invoice schedules with the names of their template and partner. Filterable by status, partnerId, templateId, frequency, nextRunDate and autoIssue; sortable by nextRunDate, startDate, status, frequency and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recurringInvoicesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecurringInvoicesListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionCompute</a>(request: Requests.RecognitionComputeSalesRequest, requestOptions: RequestOptions?) -> RecognitionComputeSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview the pending ratable revenue schedules due on or before `asOfDate` (default the company's current date) with their total; nothing is posted. `sales/recognition/run` posts them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionCompute(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionComputeSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionRun</a>(request: Requests.RecognitionRunSalesRequest, requestOptions: RequestOptions?) -> RecognitionRunSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Recognise deferred revenue: posts one journal entry dated `postingDate` (default `asOfDate`, default the company's current date) that debits the deferred income account and credits each line's revenue account, for the pending ratable schedules due on or before `asOfDate` or for exactly the `scheduleIds` given, marks them recognised, records a run with trigger `manual` and emits `revenue_recognition.posted`. Answers 422 when nothing is due or a given schedule is missing or no longer pending, and 409 when the posting period is locked. Due ratable schedules are also posted by the scheduler once their date has passed (trigger `schedule_due`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionRun(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionRunSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionProgress</a>(request: Requests.RecognitionProgressSalesRequest, requestOptions: RequestOptions?) -> RecognitionProgressSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Report the percentage of completion of a `percent_complete` invoice line and recognise the revenue up to it: a schedule for the difference between the revenue due at that percentage and the amount already recognised is created and posted at once, dated `date` (default the company's current date), as a run with trigger `progress` that emits `revenue_recognition.posted`. Refused with 422 when the line is not `percent_complete`, the invoice is not an issued standard invoice, the percentage is 0 or above 100, or nothing new is to be recognised; 409 when the period is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionProgress(request: .init(
        invoiceLineId: "invoiceLineId",
        percentComplete: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionProgressSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionModify</a>(request: Requests.RecognitionModifySalesRequest, requestOptions: RequestOptions?) -> RecognitionModifySalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Apply an IFRS 15 contract modification to a deferred invoice line. Prospective: cancel the pending schedule and respread the unrecognized remainder over the new terms. Cumulative catch-up (ratable only): recompute revenue as if the new terms applied from the start and post the difference immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionModify(request: .init(
        invoiceLineId: "invoiceLineId",
        approach: .prospective
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionModifySalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionRunsList</a>(request: Requests.RecognitionRunsListSalesRequest, requestOptions: RequestOptions?) -> RecognitionRunsListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the revenue recognition runs, newest first; filterable by `runDate` and `trigger`, sortable by `runDate` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionRunsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionRunsListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">recognitionSummary</a>(request: Requests.RecognitionSummarySalesRequest, requestOptions: RequestOptions?) -> RecognitionSummarySalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deferred revenue per line of the issued standard invoices whose recognition method is not `point_in_time`: the deferred total, the amount recognised so far, the remainder, the number of pending schedules and the next schedule date, with totals; `invoiceId` limits it to one invoice. For a `percent_complete` line the deferred total is the line's base amount, for the other methods the sum of its schedules.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.recognitionSummary(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecognitionSummarySalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">refundLiabilityList</a>(request: Requests.RefundLiabilityListSalesRequest, requestOptions: RequestOptions?) -> RefundLiabilityListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the refund liabilities of issued invoices (created at issue from the lines' `refundEstimatePercent` or by `sales/refund-liability/true-up`): the estimate, the part consumed by credit notes, the settlement refunds and the remaining amount (estimate less consumed), with the invoice number. Filterable by invoiceId; sortable by createdAt and updatedAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.refundLiabilityList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RefundLiabilityListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">refundLiabilityTrueUp</a>(request: Requests.RefundLiabilityTrueUpSalesRequest, requestOptions: RequestOptions?) -> RefundLiabilityTrueUpSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-estimate the refund liability of an issued standard invoice to `estimatedTotal` and post the difference on `date` (default today) between the refund liability account and the invoice's revenue accounts, in proportion to the lines' allocated or net amounts; creates the liability when the invoice has none. Emits `refund_liability.trued_up`. Answers 422 when the invoice is not an issued standard invoice, when the estimate is below the amount already consumed or unchanged, or when the invoice has no revenue to allocate against; 409 when the accounting period is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.refundLiabilityTrueUp(request: .init(
        invoiceId: "invoiceId",
        estimatedTotal: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RefundLiabilityTrueUpSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">paymentsList</a>(request: Requests.PaymentsListSalesRequest, requestOptions: RequestOptions?) -> PaymentsListSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the money received on sale documents between `from` and `to` (inclusive), oldest first: bank payments matched to the document, card settlements of a payment provider and cash receipt orders. A reversed bank match is a row with a negative amount on the date it was reversed. Credit notes, advances applied to a final invoice and balances carried over by a migration are not money received and are left out. `amount` is in the document currency; `method` is `card` for a settlement or a payment into a Stripe bank account, `cash` for a cash order and `bank_transfer` otherwise.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.paymentsList(request: .init(
        from: CalendarDate("2026-07-01")!,
        to: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PaymentsListSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">exportsMonth</a>(request: Requests.ExportsMonthSalesRequest, requestOptions: RequestOptions?) -> ExportsMonthSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export one calendar month for the accountant as a single file: every invoice and credit note issued in the month (number, dates, client, currency, net, VAT, total and the amount paid so far) and every payment received in the month as listed by `sales/payments/list`. `format` is `csv` (comma separated, UTF-8, one section per table) or `pdf`. `format` `nordlet` instead returns a JSON package that `migration/books/validate` and `migration/books/import` accept: every posted journal transaction dated in the month with its debit and credit lines, the accounts those lines use (with their parent accounts) and the partners of those transactions; its cutoverDate is the day after the month ends. The file comes back base64-encoded in `data`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.exportsMonth(request: .init(
        month: "month",
        format: .csv
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExportsMonthSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesCardPaymentsGet</a>(request: Requests.InvoicesCardPaymentsGetSalesRequest, requestOptions: RequestOptions?) -> InvoicesCardPaymentsGetSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return whether the company's Stripe account is connected for card payments and whether Stripe lets it take charges yet. While the account is connected but cannot take charges, Stripe is asked again on each call. When `chargesEnabled` is true, payment links of issued invoices open a Stripe Checkout page on that account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesCardPaymentsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCardPaymentsGetSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesCardPaymentsConnect</a>(request: Requests.InvoicesCardPaymentsConnectSalesRequest, requestOptions: RequestOptions?) -> InvoicesCardPaymentsConnectSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Start or continue connecting the company's own Stripe account for card payments: creates the Stripe account on first use and returns the Stripe-hosted onboarding `url`. Stripe sends the user back to `returnUrl` when onboarding ends and to `refreshUrl` when the link has expired. Answers 503 when Stripe is not configured.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesCardPaymentsConnect(request: .init(
        returnUrl: "returnUrl",
        refreshUrl: "refreshUrl"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCardPaymentsConnectSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sales.<a href="/Sources/Resources/Sales/SalesClient.swift">invoicesCardPaymentsDisconnect</a>(request: Requests.InvoicesCardPaymentsDisconnectSalesRequest, requestOptions: RequestOptions?) -> InvoicesCardPaymentsDisconnectSalesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Disconnect the company's Stripe account: payment links fall back to the payment link template. The Stripe account itself is left as it is.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.sales.invoicesCardPaymentsDisconnect(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCardPaymentsDisconnectSalesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OperationTypes
<details><summary><code>client.operationTypes.<a href="/Sources/Resources/OperationTypes/OperationTypesClient.swift">create</a>(request: Requests.CreateOperationTypesRequest, requestOptions: RequestOptions?) -> CreateOperationTypesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an operation type: a `code` with the flags that say what it is for (`isSale`, `isPurchase`, ...), an optional `invoiceType` (`invoice`, `credit_note`, `proforma`, `advance`) and optional account codes. An invoice names it in `operationTypeId`: a sale invoice needs `isSale` and a matching `invoiceType`, a purchase invoice `isPurchase`, and the type's account codes then replace the default posting accounts when the invoice is issued (`sales/invoices/issue`) or registered (`purchases/invoices/register`). `includeInVatRegister: false` keeps the type's invoices out of the Lithuanian i.SAF and FR0600, `includeInSaft: false` out of the SAF-T file. Account codes must exist and be postable and `payerPartnerId` must be an active partner (422 otherwise); a repeated `code` is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.operationTypes.create(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateOperationTypesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operationTypes.<a href="/Sources/Resources/OperationTypes/OperationTypesClient.swift">update</a>(request: Requests.UpdateOperationTypesRequest, requestOptions: RequestOptions?) -> UpdateOperationTypesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change an operation type's fields; omitted ones keep their value. A `code` already used by another type is refused with 409, a body without changes with 400.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.operationTypes.update(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateOperationTypesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operationTypes.<a href="/Sources/Resources/OperationTypes/OperationTypesClient.swift">get</a>(request: Requests.GetOperationTypesRequest, requestOptions: RequestOptions?) -> GetOperationTypesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one operation type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.operationTypes.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetOperationTypesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operationTypes.<a href="/Sources/Resources/OperationTypes/OperationTypesClient.swift">delete</a>(request: Requests.DeleteOperationTypesRequest, requestOptions: RequestOptions?) -> DeleteOperationTypesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an operation type that no sale invoice, purchase invoice or document series refers to. Otherwise the call is refused with 409; deactivate the type with `operation-types/update` instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.operationTypes.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteOperationTypesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operationTypes.<a href="/Sources/Resources/OperationTypes/OperationTypesClient.swift">list</a>(request: Requests.ListOperationTypesRequest, requestOptions: RequestOptions?) -> ListOperationTypesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List operation types. Filterable by `code`, `name`, `isSale`, `isPurchase` and `isActive`; sortable by `code`, `name`, `sortOrder` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.operationTypes.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListOperationTypesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## DocumentSeries
<details><summary><code>client.documentSeries.<a href="/Sources/Resources/DocumentSeries/DocumentSeriesClient.swift">create</a>(request: Requests.CreateDocumentSeriesRequest, requestOptions: RequestOptions?) -> CreateDocumentSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a numbering series for sale invoices, credit notes, proformas or advance invoices (`documentType`). Numbers run from `nextNumber`, padded to `numberLength` digits, and are written as `prefix`-number or, with `printSeries` false, as the bare number; a series may be bound to an operation type (a default series of an operation type is picked for its documents that name no series) and to a warehouse, which `sales/invoices/issue` takes the goods from. `isDefault` makes it the default of its document type and clears the previous one. Answers 422 when only one end of the allocated range `allocatedFrom`..`allocatedTo` is given or the range is reversed, 409 when the prefix exists for the document type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.documentSeries.create(request: .init(prefix: "prefix"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateDocumentSeriesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documentSeries.<a href="/Sources/Resources/DocumentSeries/DocumentSeriesClient.swift">update</a>(request: Requests.UpdateDocumentSeriesRequest, requestOptions: RequestOptions?) -> UpdateDocumentSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a document series; fields left out keep their value. `nextNumber` cannot go below its current value (409); `isDefault` clears the previous default of the document type. Answers 422 for an incomplete or reversed allocated range, 409 when the prefix is taken for the document type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.documentSeries.update(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateDocumentSeriesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documentSeries.<a href="/Sources/Resources/DocumentSeries/DocumentSeriesClient.swift">get</a>(request: Requests.GetDocumentSeriesRequest, requestOptions: RequestOptions?) -> GetDocumentSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one document series.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.documentSeries.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetDocumentSeriesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documentSeries.<a href="/Sources/Resources/DocumentSeries/DocumentSeriesClient.swift">delete</a>(request: Requests.DeleteDocumentSeriesRequest, requestOptions: RequestOptions?) -> DeleteDocumentSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a document series no sale document uses. Answers 409 when invoices reference it; deactivate it with `isActive` instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.documentSeries.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteDocumentSeriesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documentSeries.<a href="/Sources/Resources/DocumentSeries/DocumentSeriesClient.swift">list</a>(request: Requests.ListDocumentSeriesRequest, requestOptions: RequestOptions?) -> ListDocumentSeriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List document series. Filterable by documentType, prefix, operationTypeId and isActive; sortable by prefix, documentType and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.documentSeries.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListDocumentSeriesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## purchases
<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesCreate</a>(request: Requests.InvoicesCreatePurchasesRequest, requestOptions: RequestOptions?) -> InvoicesCreatePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft purchase invoice or credit note (`type`) from a supplier document; it is posted with `purchases/invoices/register`. Lines without a unit price take the item's supplier or purchase price, `currency` defaults to the company's invoice currency, `documentRef` links an uploaded file, and the gross total leaves out self-assessed VAT. `creditedInvoiceId` (credit notes only) must be an invoice of the same partner, `purchaseOrderId` an order of the same partner that is not draft, submitted or cancelled, and `operationTypeId` an active purchase operation type, each 422 otherwise; the same `documentNumber` for the same partner is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesCreate(request: .init(
        partnerId: "partnerId",
        documentNumber: "documentNumber",
        documentDate: CalendarDate("2026-07-01")!,
        lines: [
            InvoicesCreatePurchasesRequestLinesItem(

            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCreatePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesGet</a>(request: Requests.InvoicesGetPurchasesRequest, requestOptions: RequestOptions?) -> InvoicesGetPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one purchase invoice or credit note with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesGetPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesUpdate</a>(request: Requests.InvoicesUpdatePurchasesRequest, requestOptions: RequestOptions?) -> InvoicesUpdatePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a draft purchase invoice (409 once registered); only the fields sent are changed, and `lines` replace all existing lines with the totals recomputed. `purchaseOrderId` and `operationTypeId` are checked as on `purchases/invoices/create` (422). A `documentNumber` already used for the partner is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesUpdatePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesDelete</a>(request: Requests.InvoicesDeletePurchasesRequest, requestOptions: RequestOptions?) -> InvoicesDeletePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a draft purchase invoice as deleted (409 once registered). A document capture linked to it goes back to `extracted` (or `pending` when it has no extraction) and can be confirmed again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesDeletePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesRegister</a>(request: Requests.InvoicesRegisterPurchasesRequest, requestOptions: RequestOptions?) -> InvoicesRegisterPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a draft purchase invoice or credit note: posts the journal entry dated `registrationDate` (default the document date) and sets the status to `registered`. The entry debits each line's expense account (the line's `accountCode`, else the item's purchase or expense account, else the operation type's expense account, else the `purchases.goodsForResale` or `purchases.defaultExpense` rule account), debits VAT receivable (a company that is not a VAT payer books the VAT into the expense instead), credits payables (the operation type's credit account when set) and credits output VAT for self-assessed VAT; a credit note posts the reverse. Lines with `deferralStartDate` and `deferralEndDate` are debited to the `purchases.prepaidExpenses` account instead and get a monthly release schedule for `purchases/deferrals/post`. With `warehouseId` the product lines of an invoice are received into stock at their base-currency cost (422 on an order-linked invoice, whose goods arrive through `purchases/receipts/create`, and for a line that is also deferred); `returnFromStock` on a credit note that credits an invoice takes the goods back out of stock at their FIFO cost and books the difference to the credited amount on the `inventory.cogs` account (422 on an invoice, without `creditedInvoiceId`, or when no goods of the credited invoice are in stock). A credit note that credits a registered invoice in the same currency is applied to it as a payment up to the open amount. Refused with 409 when already registered or the accounting period is locked, and with 422 when the credit notes would exceed the credited invoice, a posting account is missing or no exchange rate exists for the date. Emits `purchase_invoice.registered`, `purchase_invoice.paid` when the credited invoice becomes fully paid, and `stock.changed` when stock moves.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesRegister(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesRegisterPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">deferralsList</a>(request: Requests.DeferralsListPurchasesRequest, requestOptions: RequestOptions?) -> DeferralsListPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the monthly release rows that `purchases/invoices/register` creates for lines booked as prepaid expenses, each with its amount, expense and prepaid account and `status` (`pending`, `posted`, `cancelled`). Filterable by `invoiceId`, `status` and `scheduleDate`; sortable by `scheduleDate`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.deferralsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeferralsListPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">deferralsPost</a>(request: Requests.DeferralsPostPurchasesRequest, requestOptions: RequestOptions?) -> DeferralsPostPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Post every `pending` prepaid-expense release row dated on or before `asOfDate` (default today in the company's time zone): one journal entry per schedule date debiting the expense account and crediting the prepaid account, and the rows become `posted`. A locked accounting period is refused with 409. The scheduled job `expense-deferrals` runs the same release for every active company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.deferralsPost(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeferralsPostPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesList</a>(request: Requests.InvoicesListPurchasesRequest, requestOptions: RequestOptions?) -> InvoicesListPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List purchase invoices and credit notes without lines, with the supplier's `partnerName`. Filterable by `partnerId`, `type`, `status`, `paymentStatus`, `documentNumber`, `documentDate`, `currency`, `operationTypeId`, `purchaseOrderId`, `grossTotal`, `netTotal`, `vatTotal` and `dueDate`; sortable by `createdAt`, `documentDate`, `documentNumber`, `grossTotal` and `dueDate`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesListPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersCreate</a>(request: Requests.OrdersCreatePurchasesRequest, requestOptions: RequestOptions?) -> OrdersCreatePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft purchase order for a supplier. Lines without a unit price take the item's supplier or purchase price; `orderNumber` comes from the `purchase_order` series with prefix PO when not given; `currency` defaults to the company's invoice currency; `documentRef` links an uploaded file to the order. A number already in use is refused with 409. The order continues with `purchases/orders/submit`, `purchases/orders/approve` and `purchases/receipts/create`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersCreate(request: .init(
        partnerId: "partnerId",
        orderDate: CalendarDate("2026-07-01")!,
        lines: [
            OrdersCreatePurchasesRequestLinesItem(

            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCreatePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersUpdate</a>(request: Requests.OrdersUpdatePurchasesRequest, requestOptions: RequestOptions?) -> OrdersUpdatePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a draft purchase order (409 once it is submitted); only the fields sent are changed. `lines` replace all existing lines and the totals are recomputed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersUpdatePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersGet</a>(request: Requests.OrdersGetPurchasesRequest, requestOptions: RequestOptions?) -> OrdersGetPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one purchase order with its lines; each line carries `receivedQty` and `remainingQty`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersGetPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersList</a>(request: Requests.OrdersListPurchasesRequest, requestOptions: RequestOptions?) -> OrdersListPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List purchase orders without lines, with the supplier's `partnerName`. Filterable by `partnerId`, `status`, `orderNumber`, `orderDate`, `currency` and `grossTotal`; sortable by `createdAt`, `orderDate`, `orderNumber` and `grossTotal`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersListPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersSubmit</a>(request: Requests.OrdersSubmitPurchasesRequest, requestOptions: RequestOptions?) -> OrdersSubmitPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Move a `draft` purchase order to `submitted` for approval (409 from any other status). `reason` is kept in the audit log.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersSubmit(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersSubmitPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersApprove</a>(request: Requests.OrdersApprovePurchasesRequest, requestOptions: RequestOptions?) -> OrdersApprovePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Approve a `submitted` purchase order (409 from any other status), recording who approved it and when; needs the `purchases:approve` scope. Goods are then received with `purchases/receipts/create`. Emits `purchase_order.approved`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersApprove(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersApprovePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersReject</a>(request: Requests.OrdersRejectPurchasesRequest, requestOptions: RequestOptions?) -> OrdersRejectPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a `submitted` purchase order back to `draft` (409 from any other status); needs the `purchases:approve` scope. `reason` is kept in the audit log.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersReject(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersRejectPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersCancel</a>(request: Requests.OrdersCancelPurchasesRequest, requestOptions: RequestOptions?) -> OrdersCancelPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a `draft`, `submitted` or `approved` purchase order (409 from any other status, or when the order already has a goods receipt).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCancelPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersClose</a>(request: Requests.OrdersClosePurchasesRequest, requestOptions: RequestOptions?) -> OrdersClosePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Close an `approved`, `partially_received` or `received` purchase order (409 from any other status); a closed order accepts no further goods receipts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersClose(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersClosePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">ordersDelete</a>(request: Requests.OrdersDeletePurchasesRequest, requestOptions: RequestOptions?) -> OrdersDeletePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a `draft` purchase order as deleted (409 once it is submitted).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.ordersDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersDeletePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">receiptsCreate</a>(request: Requests.ReceiptsCreatePurchasesRequest, requestOptions: RequestOptions?) -> ReceiptsCreatePurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a goods receipt against an `approved` or `partially_received` purchase order (409 otherwise), numbered from the `goods_receipt` series with prefix GR. Lines whose item is a product go into stock in `warehouseId`, else the order's warehouse (422 when neither is set), at their share of the order line's net amount converted at the receipt date's rate; `lotNumber` and `expiryDate` receive them into a lot, and an item that needs lot or serial tracking is refused with 422 without one. A quantity above the line's remaining quantity is refused with 409; the order becomes `received` when every line is fully received, else `partially_received`. Emits `goods_receipt.posted`, `stock.changed` and, when fully received, `purchase_order.received`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.receiptsCreate(request: .init(
        orderId: "orderId",
        receiptDate: CalendarDate("2026-07-01")!,
        lines: [
            ReceiptsCreatePurchasesRequestLinesItem(
                orderLineId: "orderLineId",
                quantity: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsCreatePurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">receiptsGet</a>(request: Requests.ReceiptsGetPurchasesRequest, requestOptions: RequestOptions?) -> ReceiptsGetPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one goods receipt with its lines and their stock movement ids.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.receiptsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsGetPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">receiptsList</a>(request: Requests.ReceiptsListPurchasesRequest, requestOptions: RequestOptions?) -> ReceiptsListPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List goods receipts without lines. Filterable by `orderId`, `warehouseId`, `receiptDate` and `receiptNumber`; sortable by `createdAt` and `receiptDate`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.receiptsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsListPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.purchases.<a href="/Sources/Resources/Purchases/PurchasesClient.swift">invoicesMatch</a>(request: Requests.InvoicesMatchPurchasesRequest, requestOptions: RequestOptions?) -> InvoicesMatchPurchasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compare a purchase invoice with its linked purchase order and the goods received so far, grouped by item (by description for lines without one). Each row is `matched`, `not_received` (invoiced but nothing received), `over_invoiced` (invoiced more than received), `price_mismatch` (unit price differs by more than `priceTolerancePercent`), `not_on_order` or `not_invoiced`; `status` is `mismatched` when any row other than `not_invoiced` is not matched. Refused with 422 when the invoice has no `purchaseOrderId` or its currency differs from the order's. Nothing is changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.purchases.invoicesMatch(request: .init(invoiceId: "invoiceId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesMatchPurchasesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## capture
<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">settingsGet</a>(request: Requests.SettingsGetCaptureRequest, requestOptions: RequestOptions?) -> SettingsGetCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the company's document capture settings: whether intake by e-mail is enabled, whether e-mailed documents are read on arrival, the company's intake e-mail address and whether a reading provider is configured. The intake token behind the address is created on the first call.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.settingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsGetCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">settingsUpdate</a>(request: Requests.SettingsUpdateCaptureRequest, requestOptions: RequestOptions?) -> SettingsUpdateCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Switch `intakeEnabled` (documents sent to the intake address are accepted) and `captureAutoExtract` (they are read on arrival) on or off; at least one field is required.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.settingsUpdate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsUpdateCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">settingsRegenerateIntake</a>(request: Requests.SettingsRegenerateIntakeCaptureRequest, requestOptions: RequestOptions?) -> SettingsRegenerateIntakeCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replace the company's intake token, so the previous intake e-mail address stops working and the settings come back with the new one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.settingsRegenerateIntake(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsRegenerateIntakeCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">inboundEmail</a>(request: Requests.InboundEmailCaptureRequest, requestOptions: RequestOptions?) -> InboundEmailCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Endpoint for the inbound e-mail provider (Postmark field names or the generic `to`, `from`, `subject` and `attachments` form). It needs the `x-inbound-secret` header and finds the company by the `intake+<token>@` recipient address (404 when unknown, 403 when intake is disabled). Every PDF, image, Word or PowerPoint attachment up to 10 MB becomes a `pending` capture (`accepted`), anything else is `skipped`; when the company has automatic reading on, is not on trial and a reading provider is configured, each capture is read at once.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.inboundEmail(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InboundEmailCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsUpload</a>(request: Requests.DocumentsUploadCaptureRequest, requestOptions: RequestOptions?) -> DocumentsUploadCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload a supplier document (PDF, image, Word or PowerPoint, up to 10 MB; 422 for any other type) as a capture and read it at once. The result holds the extracted supplier, dates, totals and lines, the partner matched by VAT code, then partner code, then name, the raw text, and `status` `extracted` or `failed` with `error`. Needs a configured reading provider, is refused with 402 for a company on trial until its first top-up, and counts every page read as `ocr_page` usage. The draft is reviewed and saved with `capture/documents/confirm`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsUpload(request: .init(
        fileName: "fileName",
        mimeType: "mimeType",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsUploadCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsExtract</a>(request: Requests.DocumentsExtractCaptureRequest, requestOptions: RequestOptions?) -> DocumentsExtractCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read a stored capture again and replace its draft (supplier, totals, lines, matched partner). A capture received over Peppol is parsed from its document again without a reading provider; any other needs the provider and, for a company on trial, the first top-up (402). Refused with 409 once the capture is linked to a purchase invoice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsExtract(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsExtractCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsGet</a>(request: Requests.DocumentsGetCaptureRequest, requestOptions: RequestOptions?) -> DocumentsGetCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one capture with its extraction and raw text.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsGetCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsList</a>(request: Requests.DocumentsListCaptureRequest, requestOptions: RequestOptions?) -> DocumentsListCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List captures without raw text. Filterable by `status`, `matchedPartnerId` and `purchaseInvoiceId`; sortable by `createdAt` and `updatedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsListCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsDelete</a>(request: Requests.DocumentsDeleteCaptureRequest, requestOptions: RequestOptions?) -> DocumentsDeleteCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a capture and its stored file (409 once it is linked to a purchase invoice).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsDeleteCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.capture.<a href="/Sources/Resources/Capture/CaptureClient.swift">documentsConfirm</a>(request: Requests.DocumentsConfirmCaptureRequest, requestOptions: RequestOptions?) -> DocumentsConfirmCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates the purchase invoice (or credit note, see `type`) from `lines`. Lines with the opposite sign go in `oppositeLines` and are saved as a second document of the opposite type for the same supplier: a purchase credit note against the new invoice, or a purchase invoice next to the new credit note. It is numbered `oppositeDocumentNumber`, by default the document number followed by "-CR" (credit note) or "-INV" (invoice).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.capture.documentsConfirm(request: .init(
        id: "id",
        documentNumber: "documentNumber",
        documentDate: CalendarDate("2026-07-01")!,
        lines: [
            DocumentsConfirmCaptureRequestLinesItem(

            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DocumentsConfirmCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## peppol
<details><summary><code>client.peppol.<a href="/Sources/Resources/Peppol/PeppolClient.swift">participantsLookup</a>(request: Requests.ParticipantsLookupPeppolRequest, requestOptions: RequestOptions?) -> ParticipantsLookupPeppolResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Look a receiver up on the Peppol network (SML and SMP) and say which Peppol BIS Billing 3.0 documents it accepts. Give `partnerId` to look up a partner by its Peppol ID, VAT code or registration code, or `participantId` as "<scheme>:<identifier>". Works without an access point.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.peppol.participantsLookup(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ParticipantsLookupPeppolRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.peppol.<a href="/Sources/Resources/Peppol/PeppolClient.swift">webhooks</a>(provider: String, companyId: String, requestOptions: RequestOptions?) -> WebhooksPeppolResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Apply one event: a delivery status event updates the Peppol status of the sale invoice with that message id and, when the status changes, emits `sale_invoice.peppol_delivered`, `sale_invoice.peppol_rejected` or `sale_invoice.peppol_failed`; a received-document event fetches the document from the access point, stores it as a document capture with the matched supplier, emits `document_capture.peppol_received` and marks it read at the access point (a document already stored is skipped). `handled` is false when the event matched no invoice or document. Answers 404 when no company uses that provider account, 401 when the signature does not match.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.peppol.webhooks(
        provider: "recommand",
        companyId: "companyId"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**provider:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**companyId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## declarations
<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIntrastatCompute</a>(request: Requests.LtIntrastatComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtIntrastatComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the Lithuanian Intrastat report of a month for one flow as the IDAIS INTRASTATReportSubmission XML: dispatches from the issued sale invoices and purchase credit notes, arrivals from the registered purchase invoices and sale credit notes, grouped into report items. `transactionNature`, `deliveryTerms`, `transportMode` and `regionCode` are the defaults for lines without their own values; `statisticalValueRequired` adds the statistical value to each item. Answers 422 when the company is not a VAT payer. With `persist`, the file is stored and a submission for `lt-intrastat-arrivals` or `lt-intrastat-dispatches` is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIntrastatCompute(request: .init(
        year: 1000000,
        month: 1000000,
        flow: .arrivals
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIntrastatComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIvazGenerate</a>(request: Requests.LtIvazGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LtIvazGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the i.VAZ transport document message (iVAZ1.3.3) for up to 100 issued waybills and returns the XML. Answers 422 when the registration code of the company is not numeric or when a waybill is not issued. With `persist`, the file is stored and a submission for `lt-ivaz` is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIvazGenerate(request: .init(waybillIds: [
        "waybillIds"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIvazGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIntrastatObligation</a>(request: Requests.LtIntrastatObligationDeclarationsRequest, requestOptions: RequestOptions?) -> LtIntrastatObligationDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks the Intrastat reporting obligation of a year per flow: the value of goods traded with other Member States in the previous year, the month from which reporting is due (January when that value already passed the reporting threshold, else the month the cumulative value of the year passes it), whether the statistical value is required, and the monthly values. Answers 422 when no thresholds are stored for the year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIntrastatObligation(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIntrastatObligationDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIsafGenerate</a>(request: Requests.LtIsafGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LtIsafGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the Lithuanian i.SAF register XML of a month: `dataType` F covers both registers, S the issued sale invoices only, P the registered purchase invoices only. Returns the XML without storing it; `declarations/submissions/create` stores it as a submission.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIsafGenerate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIsafGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltFr0600Compute</a>(request: Requests.LtFr0600ComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtFr0600ComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the fields of the Lithuanian VAT return FR0600 for the period of `months` months starting in `month`, with the breakdown by VAT classifier behind them. `deductionPercent` is the share of input VAT deducted and is written to field 28.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltFr0600Compute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtFr0600ComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltGpm313Compute</a>(request: Requests.LtGpm313ComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtGpm313ComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes fields 5 to 7 of the monthly GPM313 from the payroll run of the month the pay was earned: the run of the previous month with `payoutTiming` `next-month`, the run of the same month with `same-month`. `paymentDay` decides whether the withheld tax goes to field 6 (paid by the 15th) or field 7 (after it). Fields 8 to 12 are returned as zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltGpm313Compute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtGpm313ComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltSamCompute</a>(request: Requests.LtSamComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtSamComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the monthly SAM figures from the payroll run of the month: per employee the insured income, the employee and employer contributions together and the resulting tariff, plus the insured count and the totals. A missing run or a run still in draft is reported in the warnings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltSamCompute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtSamComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltSdGenerate</a>(request: Requests.LtSdGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LtSdGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the rows of the 1-SD (employment contracts that start in the date range) or of the 2-SD (contracts that ended in the range, with the final insured income and contributions from the payroll line of the termination month). Answers 422 when `fromDate` is after `toDate`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltSdGenerate(request: .init(
        type: .oneSd,
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtSdGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltSaftGenerate</a>(request: Requests.LtSaftGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LtSaftGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the Lithuanian SAF-T (version 2.01) XML for a date range: `dataType` F is the full file, GL, SI, PI, PA, MG and AS limit it to the general ledger, sale invoices, purchase invoices, payments, movements of goods or asset transactions. Answers 422 when `fromDate` is after `toDate`. With `persist`, the file is stored and a submission for `lt-saft` is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltSaftGenerate(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtSaftGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIvazAmend</a>(request: Requests.LtIvazAmendDeclarationsRequest, requestOptions: RequestOptions?) -> LtIvazAmendDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds an i.VAZ amendment message for up to 100 issued waybills, carrying their current data as TransportDocumentAmendment elements. Answers 422 when the registration code of the company is not numeric or when a waybill is not issued. With `persist`, the file is stored and a submission for `lt-ivaz-amendment` is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIvazAmend(request: .init(waybillIds: [
        "waybillIds"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIvazAmendDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltIvazCancel</a>(request: Requests.LtIvazCancelDeclarationsRequest, requestOptions: RequestOptions?) -> LtIvazCancelDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds an i.VAZ cancellation message for up to 100 waybills, each with a cancellation reason code and optional additional information. Answers 422 when the registration code of the company is not numeric; a waybill that was never issued is reported in the warnings. With `persist`, the file is stored and a submission for `lt-ivaz-cancellation` is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltIvazCancel(request: .init(entries: [
        LtIvazCancelDeclarationsRequestEntriesItem(
            waybillId: "waybillId",
            reason: .one
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtIvazCancelDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltFr0564Compute</a>(request: Requests.LtFr0564ComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtFr0564ComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the rows of the Lithuanian FR0564 report of a month from the issued sale invoices and credit notes with the `intra_eu_b2b` or `reverse_charge` scheme: one row per buyer VAT number of another Member State, with goods and services split by the type of the catalogue item. Invoices not in EUR and buyers without a valid EU VAT number are left out and named in the warnings; the triangular column is always zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltFr0564Compute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtFr0564ComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltGpm312Compute</a>(request: Requests.LtGpm312ComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtGpm312ComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the rows of the annual GPM312 from the payroll runs of the payout months of the year (December of the previous year to November with `payoutTiming` `next-month`, January to December with `same-month`): one row per employee and payment type code, with the amount paid, the tax withheld and the rate applied.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltGpm312Compute(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtGpm312ComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltPln204Compute</a>(request: Requests.LtPln204ComputeDeclarationsRequest, requestOptions: RequestOptions?) -> LtPln204ComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the boxes of the Lithuanian annual corporate income tax return PLN204 for the fiscal year from the financial statements and the tax adjustments recorded with `declarations/tax-adjustments/create`: the PLN204S annex from the `non_deductible` adjustments and the PLN204Z annex from the `non_taxable_income` ones, by their `code`. The small-entity rate is applied when the size criteria allow it. Answers 422 when such an adjustment has no code or a code the annex does not list, or when no rate table covers the period.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltPln204Compute(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtPln204ComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euOssCompute</a>(request: Requests.EuOssComputeDeclarationsRequest, requestOptions: RequestOptions?) -> EuOssComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the Union OSS return of a quarter from the issued invoices and credit notes with the `oss_union` VAT scheme: one row per Member State of consumption and VAT rate, classified as standard or reduced, and a corrections section for the credit notes that credit invoices of earlier periods. Amounts are in EUR, converted at the official rate of the last day of the period. Answers 422 when the company is not established in the EU.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euOssCompute(request: .init(
        year: 1000000,
        quarter: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuOssComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euIossCompute</a>(request: Requests.EuIossComputeDeclarationsRequest, requestOptions: RequestOptions?) -> EuIossComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the IOSS return of a month from the issued invoices and credit notes with the `ioss` VAT scheme, with the same rows, corrections and EUR conversion as `declarations/eu/oss/compute`. Answers 422 when the company is not established in the EU.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euIossCompute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuIossComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euOwnGoodsTransfersCompute</a>(request: Requests.EuOwnGoodsTransfersComputeDeclarationsRequest, requestOptions: RequestOptions?) -> EuOwnGoodsTransfersComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the monthly return of the special scheme for transfers of own goods from the warehouse transfers between warehouses in two different EU Member States: one row per destination and dispatch country with the cost of the goods as the taxable amount in EUR, the transfers behind the rows, and the due date. Answers 422 when the company is not established in the EU.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euOwnGoodsTransfersCompute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuOwnGoodsTransfersComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euDigitalReportingList</a>(request: Requests.EuDigitalReportingListDeclarationsRequest, requestOptions: RequestOptions?) -> EuDigitalReportingListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the transactions of a date range that fall under EU digital reporting: issued sale invoices and credit notes with the `intra_eu_b2b` or `reverse_charge` scheme to EU customers, and registered purchase invoices from suppliers in other Member States whose lines carry a self-assessed VAT classifier. Each transaction names the article it is reported under, the Member State it is reported to, its deadline and the data still missing. Answers 422 when the company is not identified for VAT in the EU.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euDigitalReportingList(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuDigitalReportingListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euDac7Preview</a>(request: Requests.EuDac7PreviewDeclarationsRequest, requestOptions: RequestOptions?) -> EuDac7PreviewDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Which platform sellers are reportable for the year (Council Directive (EU) 2021/514, Annex V) and why the others are excluded, the data still missing, and how the company files the report in its Member State.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euDac7Preview(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuDac7PreviewDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euDac7Xml</a>(request: Requests.EuDac7XmlDeclarationsRequest, requestOptions: RequestOptions?) -> EuDac7XmlDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the DAC7 (DPI) XML report of a year for the Member State of the company and returns it base64-encoded with the file name the administration expects. Answers 422 when no DAC7 filing channel exists for the company country. The sellers and the missing data behind it come from `declarations/eu/dac7/preview`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euDac7Xml(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuDac7XmlDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euDistanceSalesThresholdGet</a>(request: Requests.EuDistanceSalesThresholdGetDeclarationsRequest, requestOptions: RequestOptions?) -> EuDistanceSalesThresholdGetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sums the cross-border sales to EU consumers (invoices under the `oss_union` scheme, and domestic-scheme invoices to partners without a VAT number in another Member State) of the current and the preceding calendar year as of `date` (default: the current date of the company) and compares both with the EUR 10 000 distance sales threshold.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euDistanceSalesThresholdGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuDistanceSalesThresholdGetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euUnionTurnoverGet</a>(request: Requests.EuUnionTurnoverGetDeclarationsRequest, requestOptions: RequestOptions?) -> EuUnionTurnoverGetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sums the turnover of the company within the Union (issued invoices and credit notes other than export and out-of-scope supplies) for the current and the previous calendar year as of `date` (default: the current date of the company) and compares it with the EUR 100 000 cap of the cross-border SME scheme. The status is `not_applicable` for a registered VAT payer, otherwise `below`, `approaching` or `exceeded`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euUnionTurnoverGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuUnionTurnoverGetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euSmeCrossBorderReportCompute</a>(request: Requests.EuSmeCrossBorderReportComputeDeclarationsRequest, requestOptions: RequestOptions?) -> EuSmeCrossBorderReportComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the quarterly report of the cross-border SME scheme: the value of the issued supplies within the Union per Member State of supply (the VAT country of the invoice, else the country of the partner, else the home country), in the base currency of the company. Supplies that resolve to a non-EU country are left out and named in the warnings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euSmeCrossBorderReportCompute(request: .init(
        year: 1000000,
        quarter: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuSmeCrossBorderReportComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euSmeThresholdsList</a>(request: Requests.EuSmeThresholdsListDeclarationsRequest, requestOptions: RequestOptions?) -> EuSmeThresholdsListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the stored table of national SME VAT exemption thresholds per Member State, with sector thresholds and intra-EU acquisition triggers where recorded, and the national and Union-wide caps of the directive. No company data is read.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euSmeThresholdsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuSmeThresholdsListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euSmeThresholdGet</a>(request: Requests.EuSmeThresholdGetDeclarationsRequest, requestOptions: RequestOptions?) -> EuSmeThresholdGetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compares the gross turnover of the company in the current calendar year as of `date` (default: the current date of the company) with the national SME exemption threshold of its country. The status is `not_applicable` for a registered VAT payer, `unknown` when no threshold is on file or its currency differs from the base currency, otherwise `below`, `approaching` or `exceeded`; when the country has an intra-EU acquisitions trigger, the acquisitions from and services to other Member States are compared with it too.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euSmeThresholdGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuSmeThresholdGetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euVatReturnPacksList</a>(request: Requests.EuVatReturnPacksListDeclarationsRequest, requestOptions: RequestOptions?) -> EuVatReturnPacksListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the national VAT return forms Nordlet can compute, with the country, form key, form name, filing frequency and source.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euVatReturnPacksList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuVatReturnPacksListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">euVatReturnCompute</a>(request: Requests.EuVatReturnComputeDeclarationsRequest, requestOptions: RequestOptions?) -> EuVatReturnComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Computes the national VAT return of `countryCode` for the period of `months` months starting in `month`, as the numbered boxes of the form with labels and amounts. Answers 422 when no return pack is registered for the country; the packs are listed by `declarations/eu/vat-return/packs/list`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.euVatReturnCompute(request: .init(
        countryCode: "countryCode",
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuVatReturnComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plJpkV7MGenerate</a>(request: Requests.PlJpkV7MGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlJpkV7MGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate the Polish JPK_V7M(3) file (VAT declaration with evidence) for a month, per the MF schema in force since February 2026. Amounts must already be in PLN; rows are marked BFK until a KSeF integration supplies invoice numbers. Review the warnings before submitting via e-dokumenty.mf.gov.pl.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plJpkV7MGenerate(request: .init(
        year: 1000000,
        month: 1000000,
        kodUrzedu: "kodUrzedu",
        email: "email"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlJpkV7MGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plVatUeGenerate</a>(request: Requests.PlVatUeGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlVatUeGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the rows of the Polish recapitulative statement VAT-UE for a month: section C intra-Community supplies of goods, section D intra-Community acquisitions, section E services taxed where the customer is established. Amounts are full złoty per counterparty. The VAT-UE(5) file itself goes out from the EU sales list deadline in the calendar.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plVatUeGenerate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlVatUeGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plIntrastatGenerate</a>(request: Requests.PlIntrastatGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlIntrastatGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the rows of the Polish INTRASTAT declaration for a month, arrivals or dispatches, grouped by CN code, partner country, country of origin, partner VAT number, nature of transaction, transport and delivery terms. Values are whole złoty converted at the invoice rate; credit notes with goods lines are returns (code 21). Goods without a CN code are left out and named in the warnings. The IST message itself goes out from the Intrastat deadline in the calendar.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plIntrastatGenerate(request: .init(
        year: 1000000,
        month: 1000000,
        flow: .arrivals
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlIntrastatGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plKsefReceivedList</a>(request: Requests.PlKsefReceivedListDeclarationsRequest, requestOptions: RequestOptions?) -> PlKsefReceivedListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the invoices KSeF holds for this company as the buyer, for a window of acquisition timestamps. Each row carries the KSeF number and, when the document number matches a registered purchase invoice, the invoice it belongs to.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plKsefReceivedList(request: .init(
        from: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        to: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlKsefReceivedListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plKsefReceivedFetch</a>(request: Requests.PlKsefReceivedFetchDeclarationsRequest, requestOptions: RequestOptions?) -> PlKsefReceivedFetchDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one invoice out of KSeF by its national number. With a purchase invoice given, the KSeF number is written onto that invoice, which is what makes the purchase row of JPK_V7M carry NrKSeF instead of the BFK marker.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plKsefReceivedFetch(request: .init(ksefNumber: "ksefNumber"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlKsefReceivedFetchDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plKsefReceipt</a>(request: Requests.PlKsefReceiptDeclarationsRequest, requestOptions: RequestOptions?) -> PlKsefReceiptDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The UPO for a KSeF session. KSeF issues one receipt per session rather than per invoice, so the session reference number from the send is what identifies it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plKsefReceipt(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlKsefReceiptDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxAdjustmentsList</a>(request: Requests.TaxAdjustmentsListDeclarationsRequest, requestOptions: RequestOptions?) -> TaxAdjustmentsListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The differences between the accounting result and the taxable profit: non-deductible expenses, income added to or left out of the tax base, extra deductible expenses, donations, losses carried forward, reliefs and tax credits. The annual corporate income tax return is built from them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxAdjustmentsList(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxAdjustmentsListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxAdjustmentsCreate</a>(request: Requests.TaxAdjustmentsCreateDeclarationsRequest, requestOptions: RequestOptions?) -> TaxAdjustmentsCreateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records a tax adjustment of one kind for a tax year, with an optional form `code`. Answers 422 when the amount is zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxAdjustmentsCreate(request: .init(
        year: 1000000,
        kind: .nonDeductible,
        amount: "121.00",
        description: "description"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxAdjustmentsCreateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxAdjustmentsUpdate</a>(request: Requests.TaxAdjustmentsUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> TaxAdjustmentsUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the kind, code, amount or description of a recorded tax adjustment; fields left out keep their value and an empty `code` clears it. Answers 422 when the new amount is zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxAdjustmentsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxAdjustmentsUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxAdjustmentsDelete</a>(request: Requests.TaxAdjustmentsDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> TaxAdjustmentsDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a recorded tax adjustment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxAdjustmentsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxAdjustmentsDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxPaymentsList</a>(request: Requests.TaxPaymentsListDeclarationsRequest, requestOptions: RequestOptions?) -> TaxPaymentsListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

What the company has paid the administration towards a tax before the return is filed: payments on account, tax withheld at source by others, a final settlement, and a refund received. Returns report these on their own lines, so the amount they ask for is the balance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxPaymentsList(request: .init(
        tax: .corporateIncomeTax,
        year: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxPaymentsListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxPaymentsCreate</a>(request: Requests.TaxPaymentsCreateDeclarationsRequest, requestOptions: RequestOptions?) -> TaxPaymentsCreateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records a payment made towards a tax (`tax`) of a year, and of a month when given, as an advance payment, tax withheld by others, a final settlement or a refund received. Answers 422 when the amount is zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxPaymentsCreate(request: .init(
        tax: .corporateIncomeTax,
        year: 1000000,
        kind: .advance,
        amount: "121.00",
        paidOn: CalendarDate("2026-07-01")!,
        description: "description"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxPaymentsCreateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxPaymentsUpdate</a>(request: Requests.TaxPaymentsUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> TaxPaymentsUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the kind, amount, payment date, reference or description of a recorded tax payment; fields left out keep their value and an empty `reference` clears it. Answers 422 when the new amount is zero.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxPaymentsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxPaymentsUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">taxPaymentsDelete</a>(request: Requests.TaxPaymentsDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> TaxPaymentsDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a recorded tax payment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.taxPaymentsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaxPaymentsDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsGet</a>(request: Requests.AnnualAccountsGetDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsGetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Whether the general meeting adopted the annual accounts and on which date, the date the accounts were prepared, and which directors signed them. The annual accounts filed with the trade register are built from these facts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsGet(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsGetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsSet</a>(request: Requests.AnnualAccountsSetDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsSetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or replaces the record of a year: whether and when the accounts were adopted, when they were prepared, whether they were audited (with the qualification flag and the auditor report date) or the auditor was not elected, the report texts and the appropriation of the result. Answers 422 when `adopted` is true without `adoptionDate`, when the adoption date is not after 31 December of the year, or when the date of preparation is after the adoption date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsSet(request: .init(
        year: 1000000,
        adopted: true,
        dateOfPreparation: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsSetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsSignaturesCreate</a>(request: Requests.AnnualAccountsSignaturesCreateDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsSignaturesCreateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a director to the signatures of the annual accounts of the year: signed, with the date and place of signature, or not signed, with the reason. Answers 422 when no annual accounts record exists for the year (`declarations/annual-accounts/set` first), when a signed entry lacks the date or the place, or when an unsigned entry lacks the reason.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsSignaturesCreate(request: .init(
        year: 1000000,
        directorName: "directorName",
        directorType: .managingCurrent,
        signed: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsSignaturesCreateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsSignaturesUpdate</a>(request: Requests.AnnualAccountsSignaturesUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsSignaturesUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the name, type and signing facts of a recorded director signature. Answers 422 when a signed entry lacks the date or the place of signature, or when an unsigned entry lacks the reason.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsSignaturesUpdate(request: .init(
        id: "id",
        directorName: "directorName",
        directorType: .managingCurrent,
        signed: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsSignaturesUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsSignaturesDelete</a>(request: Requests.AnnualAccountsSignaturesDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsSignaturesDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a recorded director signature.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsSignaturesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsSignaturesDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsDistributionsCreate</a>(request: Requests.AnnualAccountsDistributionsCreateDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsDistributionsCreateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a profit distribution decision (decision date, kind, amount, description) to the annual accounts record of the year. Answers 422 when no annual accounts record exists for the year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsDistributionsCreate(request: .init(
        year: 1000000,
        decidedOn: CalendarDate("2026-07-01")!,
        kind: .dividend,
        amount: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsDistributionsCreateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsDistributionsUpdate</a>(request: Requests.AnnualAccountsDistributionsUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsDistributionsUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the decision date, kind, amount and description of a recorded profit distribution.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsDistributionsUpdate(request: .init(
        id: "id",
        decidedOn: CalendarDate("2026-07-01")!,
        kind: .dividend,
        amount: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsDistributionsUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsDistributionsDelete</a>(request: Requests.AnnualAccountsDistributionsDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsDistributionsDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a recorded profit distribution.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsDistributionsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsDistributionsDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsAttachmentsAdd</a>(request: Requests.AnnualAccountsAttachmentsAddDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsAttachmentsAddDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links a file uploaded through files/upload (its storageKey) to the annual accounts of the year as the notes, the management report, the auditor statement, the profit appropriation resolution, the approval certificate, the general data sheet, the full report as a pdf, or another document. Deposits that must carry these documents take them from here.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsAttachmentsAdd(request: .init(
        year: 1000000,
        kind: .fullReport,
        ref: "ref"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsAttachmentsAddDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">annualAccountsAttachmentsDelete</a>(request: Requests.AnnualAccountsAttachmentsDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> AnnualAccountsAttachmentsDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the attachment from the annual accounts and deletes its file record and the stored bytes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.annualAccountsAttachmentsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnnualAccountsAttachmentsDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">cyTd4Generate</a>(request: Requests.CyTd4GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> CyTd4GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compute the company income tax return TD4 of a tax year from the ledger and the recorded tax adjustments: the accounting profit, the add-backs, deductions, capital allowances and losses brought forward, the chargeable income, the corporation tax at the rate of the year and the double tax relief, as the fields the company keys into TAXISnet or Tax For All. The Tax Department publishes no upload layout for the TD4; the XML is a working file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.cyTd4Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CyTd4GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">cyHe32Generate</a>(request: Requests.CyHe32GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> CyHe32GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the annual return HE32 of a year: the figures the Registrar’s e-filing screens ask for (company number, registered office, made-up-to date, share capital, register of members, directors and secretary, annual general meeting date, the accounts summary), the working file, and the printed form HE32(I) filled in as a PDF for signing and for keying into the Registrar’s system, which takes the return only through its own screens.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.cyHe32Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CyHe32GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">deReturnsGenerate</a>(request: Requests.DeReturnsGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> DeReturnsGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build one of the German returns that ELSTER accepts only through a licensed ERiC transmission (E-Bilanz, Körperschaftsteuer, Gewerbesteuer with its Zerlegungserklärung, annual VAT return, Lohnsteuer-Anmeldung, Lohnsteuerbescheinigung) for the company to send through its own ELSTER-capable program. The period is the year, or YYYY-MM for the monthly Lohnsteuer-Anmeldung.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.deReturnsGenerate(request: .init(
        ruleKey: .deEBilanz,
        period: "period"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeReturnsGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">deReturnFactsGet</a>(request: Requests.DeReturnFactsGetDeclarationsRequest, requestOptions: RequestOptions?) -> DeReturnFactsGetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The facts of one year that the German annual returns (Körperschaftsteuer, Gewerbesteuer, Umsatzsteuererklärung) need and the ledger does not hold: changes of shareholders, contracts with shareholders, the tax contribution account, loss carry-back, the donation carry-forward, the business premises with the municipalities for the apportionment of the trade tax, the land values or property tax and the participations for the trade tax additions and reductions, the foreign income per country for the Anlage AESt, the date of leaving the small-business scheme and the Anlage UN answers of a company seated abroad. A key that is absent has not been answered.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.deReturnFactsGet(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeReturnFactsGetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">deReturnFactsSet</a>(request: Requests.DeReturnFactsSetDeclarationsRequest, requestOptions: RequestOptions?) -> DeReturnFactsSetDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replace the facts of one year for the German annual returns. The returns built afterwards read them; a key left out stays unanswered.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.deReturnFactsSet(request: .init(
        year: 1000000,
        facts: DeReturnFactsSetDeclarationsRequestFacts(

        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeReturnFactsSetDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">deDeuevGenerate</a>(request: Requests.DeDeuevGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> DeDeuevGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the DEÜV notifications of a month (Anmeldung for every start, Abmeldung for every leaving, in December the Jahresmeldung for everyone employed on 31 December) as DSME records with the DBME, DBNA, DBGB and DBAN blocks of Anlage 4 in force from 2026, from the approved payroll runs and the employee record, for the company's own transmission channel.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.deDeuevGenerate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeDeuevGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">deBeitragsnachweisGenerate</a>(request: Requests.DeBeitragsnachweisGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> DeBeitragsnachweisGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the monthly contribution statement to the health insurers (Beitragsnachweis) from the payroll run: one fixed-length record BW02 per insurer, in the record layout in force from 2026, ready for the company's own transmission channel.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.deBeitragsnachweisGenerate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeBeitragsnachweisGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">dkSelskabsskatGenerate</a>(request: Requests.DkSelskabsskatGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> DkSelskabsskatGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compute the oplysningsskema for selskaber (selskabsselvangivelsen) of an income year from the ledger and the recorded tax adjustments: accounting result before tax, tax adjustments, losses carried forward, taxable income, the 22 % corporation tax, reliefs and the balance, as the rubrikker the company keys into TastSelv Selskabsskat (DIAS). Skatteforvaltningen publishes no file format for the return; the XML is a working file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.dkSelskabsskatGenerate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DkSelskabsskatGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">eeEmploymentRegisterSend</a>(request: Requests.EeEmploymentRegisterSendDeclarationsRequest, requestOptions: RequestOptions?) -> EeEmploymentRegisterSendDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send one employment register (töötamise register) entry for an employment contract to e-MTA over X-tee: the start of work, or its end with the reason recorded on the contract.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.eeEmploymentRegisterSend(request: .init(
        contractId: "contractId",
        event: .start
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EeEmploymentRegisterSendDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">esVerifactuDeclaracionResponsable</a>(request: Requests.EsVerifactuDeclaracionResponsableDeclarationsRequest, requestOptions: RequestOptions?) -> EsVerifactuDeclaracionResponsableDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Nordlet's declaración responsable for its VERI*FACTU invoicing system (Orden HAC/1177/2024, art. 15), as a PDF and as plain text.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.esVerifactuDeclaracionResponsable(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EsVerifactuDeclaracionResponsableDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ieCt1Generate</a>(request: Requests.IeCt1GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> IeCt1GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the Form CT1 of an accounting year as the ROS version 26 XML and the accompanying financial statements as inline XBRL on the FRS 102 Irish Extension 2026 taxonomy Revenue accepts, both from the ledger, the recorded tax adjustments, the annual accounts record and the officers, for upload through the company’s own ROS account. Says whether the company is above the iXBRL deferral limits (balance sheet total €4.4 million, turnover €8.8 million, 50 employees).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ieCt1Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IeCt1GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ieB1Generate</a>(request: Requests.IeB1GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> IeB1GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the working paper for the Form B1 annual return of a financial year - company details, registered office, directors and secretary from Account → Officers, the members from Account → Shareholders, the issued share capital and the figures of the financial statements - in the order the CORE screens ask for them. The CRO publishes no file format for the B1, so it is keyed into CORE.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ieB1Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IeB1GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">itSdiPurchaseSend</a>(request: Requests.ItSdiPurchaseSendDeclarationsRequest, requestOptions: RequestOptions?) -> ItSdiPurchaseSendDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the TD16-TD19 integration document for a registered purchase invoice and send it to the Sistema di Interscambio. Since July 2022 a purchase from a supplier established abroad is reported this way instead of the esterometro. The Italian VAT rate to self-assess is a judgement about the supply: pass vatRatePercent unless the purchase lines already carry it, otherwise the request is refused rather than guessed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.itSdiPurchaseSend(request: .init(purchaseInvoiceId: "purchaseInvoiceId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItSdiPurchaseSendDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">itSdiPurchasePreview</a>(request: Requests.ItSdiPurchasePreviewDeclarationsRequest, requestOptions: RequestOptions?) -> ItSdiPurchasePreviewDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render the TD16-TD19 integration document for a registered purchase invoice without sending it, so the rate and the document type can be checked first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.itSdiPurchasePreview(request: .init(purchaseInvoiceId: "purchaseInvoiceId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ItSdiPurchasePreviewDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltSaftSend</a>(request: Requests.LtSaftSendDeclarationsRequest, requestOptions: RequestOptions?) -> LtSaftSendDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload the SAF-T file to i.SAF-T over the iSAFTUploaderService web service and start its processing. The file, the case reference and the status are kept as a declaration submission (submissionId), whose outcome Nordlet then checks with i.SAF-T. The submission itself is confirmed separately, because after confirmation the file can no longer be corrected. A range and data type already sent is sent again only with amend: true.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltSaftSend(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtSaftSendDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltSdFfdata</a>(request: Requests.LtSdFfdataDeclarationsRequest, requestOptions: RequestOptions?) -> LtSdFfdataDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render the Sodra 1-SD or 2-SD notice for the contracts starting or ending in the range as an .ffdata document for EDAS.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltSdFfdata(request: .init(
        type: .oneSd,
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtSdFfdataDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">ltPln204Ffdata</a>(request: Requests.LtPln204FfdataDeclarationsRequest, requestOptions: RequestOptions?) -> LtPln204FfdataDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render the annual corporate income tax return PLN204 as an .ffdata document, including the PLN204S and PLN204Z annexes, from the ledger and the tax adjustments recorded for that year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.ltPln204Ffdata(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LtPln204FfdataDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">mtCompanyTaxGenerate</a>(request: Requests.MtCompanyTaxGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> MtCompanyTaxGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compute the company income tax return and self-assessment of a year of assessment from the ledger and the recorded tax adjustments: the accounting profit before tax, the add-backs and deductions, the approved donations, capital allowances and losses carried forward, the chargeable income, the 35 % charge, the relief against the tax and the allocation of the distributable profit to the five tax accounts. The Malta Tax and Customs Administration issues the return as a personalised spreadsheet to the registered tax practitioner and publishes no layout, so the XML is a working file and the figures are keyed into that spreadsheet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.mtCompanyTaxGenerate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MtCompanyTaxGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">mtAnnualReturnGenerate</a>(request: Requests.MtAnnualReturnGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> MtAnnualReturnGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the annual return of a year: the company number, registered office and made-up-to date, the share capital, the register of members, the directors and the company secretary and the accounts summary, as the figures the Malta Business Registry asks for on its own screens, plus the printed Annual Return Form of the Seventh Schedule filled in as a PDF for signing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.mtAnnualReturnGenerate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MtAnnualReturnGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plJpkFaGenerate</a>(request: Requests.PlJpkFaGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlJpkFaGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate JPK_FA(4), the on-demand structure with every sales invoice issued in a period, its VAT bases per rate and one row per invoice line. Filed only when the tax office asks for it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plJpkFaGenerate(request: .init(
        dateFrom: CalendarDate("2026-07-01")!,
        dateTo: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlJpkFaGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plJpkKrGenerate</a>(request: Requests.PlJpkKrGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlJpkKrGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate JPK_KR(1), the on-demand structure with the chart of accounts and its opening balances and turnover, the journal and the double entries behind it. Filed only when the tax office asks for it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plJpkKrGenerate(request: .init(
        dateFrom: CalendarDate("2026-07-01")!,
        dateTo: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlJpkKrGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plJpkMagGenerate</a>(request: Requests.PlJpkMagGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlJpkMagGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate JPK_MAG(2), the on-demand structure with the warehouse documents of one warehouse: goods received from outside (PZ) or internally (PW) and issued to a customer (WZ) or internally (RW). Filed only when the tax office asks for it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plJpkMagGenerate(request: .init(
        dateFrom: CalendarDate("2026-07-01")!,
        dateTo: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlJpkMagGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plPit11Generate</a>(request: Requests.PlPit11GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlPit11GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate PIT-11(29) for every person on the payroll of one year: the pay, the deductible costs, the advance withheld and the social and health contributions taken off it. One document per person, because that is how the form is filed, addressed to the tax office of the place of residence of that person (employee field plKodUrzedu); a person without that code is refused with 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plPit11Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlPit11GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plCit8Generate</a>(request: Requests.PlCit8GenerateDeclarationsRequest, requestOptions: RequestOptions?) -> PlCit8GenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate CIT-8(34), the annual corporate income tax return, from the ledger of the year and the recorded tax adjustments. The tax office code and the small-taxpayer setting come from the e-Deklaracje compliance settings, the seat address from the JPK gateway settings. Names the annexes the figures would need, which are not produced.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plCit8Generate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlCit8GenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plZusDraCompute</a>(request: Requests.PlZusDraComputeDeclarationsRequest, requestOptions: RequestOptions?) -> PlZusDraComputeDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Compute the monthly ZUS DRA settlement from the payroll run of one month: the pension, disability, sickness, accident and health insurance contributions and the Labour Fund, Solidarity Fund and guaranteed benefits fund charges, each split between the insured person and the payer. The amounts are carried into Płatnik or ePłatnik by hand.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plZusDraCompute(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlZusDraComputeDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plZusDraKedu</a>(request: Requests.PlZusDraKeduDeclarationsRequest, requestOptions: RequestOptions?) -> PlZusDraKeduDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the KEDU file for one month: the ZUS DRA settlement and one ZUS RCA report per person on the payroll, in the schema kedu_5_4 that Płatnik and ePłatnik import. The payer REGON, short name and declaration deadline code come from the ZUS compliance settings; the insurance title code and working time of each person from the employee record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plZusDraKedu(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlZusDraKeduDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">plZusDraPdf</a>(request: Requests.PlZusDraPdfDeclarationsRequest, requestOptions: RequestOptions?) -> PlZusDraPdfDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fill the published ZUS DRA form for one month and return it as a PDF. The amounts, the payer identity and the deadline code are the same ones the KEDU file carries; blocks the payroll does not hold (paid benefits, bridging pensions, income declaration of a self-paying person) stay empty.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.plZusDraPdf(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PlZusDraPdfDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">roEtransportBuild</a>(request: Requests.RoEtransportBuildDeclarationsRequest, requestOptions: RequestOptions?) -> RoEtransportBuildDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the RO e-Transport declaration for an issued waybill: goods with their tariff codes and masses, the commercial partner, the route and the vehicle. The XML follows the ANAF eTransport v2 schema and is kept as a file on the waybill. Anything listed in blockers has to be filled in before /etransport/send will accept it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.roEtransportBuild(request: .init(waybillId: "waybillId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoEtransportBuildDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">roEtransportSubmit</a>(request: Requests.RoEtransportSubmitDeclarationsRequest, requestOptions: RequestOptions?) -> RoEtransportSubmitDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hand the RO e-Transport declaration for an issued waybill to ANAF under the SPV OAuth token in compliance settings, and return the upload index the UIT is read back with. Answers 422 while any field the ANAF validator requires is still missing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.roEtransportSubmit(request: .init(waybillId: "waybillId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoEtransportSubmitDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">roEtransportStatus</a>(request: Requests.RoEtransportStatusDeclarationsRequest, requestOptions: RequestOptions?) -> RoEtransportStatusDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read the outcome of an e-Transport declaration from ANAF by its upload index, under the SPV OAuth token in compliance settings. Returns the UIT code once the declaration validates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.roEtransportStatus(request: .init(reference: "reference"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoEtransportStatusDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">liLohndeklarationGenerate</a>(request: Requests.LiLohndeklarationGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LiLohndeklarationGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the annual wage declaration (Lohndeklaration) to the AHV-IV-FAK from the approved payroll runs of the year as the CSV that AHVeasy imports under Lohndeklaration → CSV-Import der Lohndaten: one row per employee with the 18 columns of the AHVeasy template, the AHV-liable wage and the ALV wage.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.liLohndeklarationGenerate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LiLohndeklarationGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">liLohnlistenGenerate</a>(request: Requests.LiLohnlistenGenerateDeclarationsRequest, requestOptions: RequestOptions?) -> LiLohnlistenGenerateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build the annual wage list (Lohnliste) of a Liechtenstein employer from the approved payroll runs of the year as the XLSX file the tax administration's eLohnausweis / eLohnlisten application imports: one row per employee with PEID, name, birth date, address, gross wage, wage tax withheld and the settlement period.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.liLohnlistenGenerate(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LiLohnlistenGenerateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">configsList</a>(request: Requests.ConfigsListDeclarationsRequest, requestOptions: RequestOptions?) -> ConfigsListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the filing systems the company can configure: those of the company country (or of `country` when given), the EU-wide systems and the cross-border e-invoicing systems `it_sdi`, `pl_ksef` and `ro_efactura`. Each row carries the stored values, with a secret or certificate field shown as `__secret_set__` and the fields taken from the company profile filled from it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.configsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ConfigsListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">configsUpdate</a>(request: Requests.ConfigsUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> ConfigsUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stores the settings of one filing system for the company, merging the given fields into the stored ones. A secret or certificate value is encrypted before it is stored, an empty string clears a field, and `__secret_set__` leaves a stored secret unchanged. Answers 422 for an unknown system.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.configsUpdate(request: .init(
        system: "system",
        config: [
            "key": "value"
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ConfigsUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">certificatesUpload</a>(request: Requests.CertificatesUploadDeclarationsRequest, requestOptions: RequestOptions?) -> CertificatesUploadDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stores a PEM certificate, a PEM private key or a PKCS#12 bundle (base64 in `content`, opened with `passphrase` when it needs one) in the settings of the filing system and replaces the earlier upload of the same kind; for a PEM certificate the fingerprint, subject, issuer and validity dates are recorded. Answers 422 when the system is unknown or does not authenticate with a certificate. Returns the full certificate list of the company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.certificatesUpload(request: .init(
        system: "system",
        fileName: "fileName",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CertificatesUploadDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">certificatesList</a>(request: Requests.CertificatesListDeclarationsRequest, requestOptions: RequestOptions?) -> CertificatesListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the certificates and private keys stored for the filing systems of the company, ordered by system and field, each with its validity facts and health (`ok`, `expiring`, `expired` or `unknown`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.certificatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CertificatesListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">certificatesDelete</a>(request: Requests.CertificatesDeleteDeclarationsRequest, requestOptions: RequestOptions?) -> CertificatesDeleteDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the certificate or the private key (`fieldKey`) of a filing system from the settings of the company and from the certificate list, and returns the remaining certificates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.certificatesDelete(request: .init(
        system: "system",
        fieldKey: .certificate
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CertificatesDeleteDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">automationList</a>(request: Requests.AutomationListDeclarationsRequest, requestOptions: RequestOptions?) -> AutomationListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the filing deadlines Nordlet can file by itself for the country of the company: for each, whether automatic filing is switched on, whether the rule applies to the company profile, whether its filing system is configured, the state of its certificate and whether it would go to the test or the production service.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.automationList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AutomationListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">automationUpdate</a>(request: Requests.AutomationUpdateDeclarationsRequest, requestOptions: RequestOptions?) -> AutomationUpdateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Switches automatic filing of one deadline on or off for the company and returns the list of `declarations/automation/list`. Answers 422 when the deadline is not one Nordlet files, or when switching on while the filing system is connected to the test service of the administration (unless the company is a sandbox), is not configured, or has no valid certificate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.automationUpdate(request: .init(
        ruleKey: "ruleKey",
        enabled: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AutomationUpdateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">submissionsRetry</a>(request: Requests.SubmissionsRetryDeclarationsRequest, requestOptions: RequestOptions?) -> SubmissionsRetryDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends a submission that is still in status `generated` through its filing system once more, with the stored file or, when none was stored yet, a freshly generated one, and returns the updated submission. Answers 409 when the submission is already submitted, accepted or rejected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.submissionsRetry(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubmissionsRetryDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">submissionsCreate</a>(request: Requests.SubmissionsCreateDeclarationsRequest, requestOptions: RequestOptions?) -> SubmissionsCreateDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the Lithuanian i.SAF register file of a month (`dataType` F both registers, S sale invoices only, P purchase invoices only), stores it and creates a submission in status `generated` for the obligation `lt-isaf`, the only obligation accepted. The XML alone comes from `declarations/lt/isaf/generate`; the submission is moved on with `declarations/submissions/mark`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.submissionsCreate(request: .init(
        obligation: .ltIsaf,
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubmissionsCreateDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">submissionsMark</a>(request: Requests.SubmissionsMarkDeclarationsRequest, requestOptions: RequestOptions?) -> SubmissionsMarkDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records by hand that a submission was sent, accepted or rejected, with the reference and message of the administration when given. The allowed moves are `generated` to `submitted` and `submitted` to `accepted` or `rejected`; any other move answers 409. A submission without a transport system is marked as sent manually.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.submissionsMark(request: .init(
        id: "id",
        status: .submitted
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubmissionsMarkDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.declarations.<a href="/Sources/Resources/Declarations/DeclarationsClient.swift">submissionsList</a>(request: Requests.SubmissionsListDeclarationsRequest, requestOptions: RequestOptions?) -> SubmissionsListDeclarationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the declaration submissions of the company, newest first, filterable by `obligation`, `status`, `periodYear` and `periodMonth` and sortable by `createdAt` or `periodYear`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.declarations.submissionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubmissionsListDeclarationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ledger
<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">accountsList</a>(request: Requests.AccountsListLedgerRequest, requestOptions: RequestOptions?) -> AccountsListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's chart of accounts. Filterable by `code`, `name`, `type` and `isPostable`; sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.accountsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">accountsCreate</a>(request: Requests.AccountsCreateLedgerRequest, requestOptions: RequestOptions?) -> AccountsCreateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an account to the company's chart of accounts. `parentId` must name an account of the same company. Answers 409 when an account with the same `code` already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.accountsCreate(request: .init(
        code: "code",
        name: "name",
        type: .asset
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsCreateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">accountsUpdate</a>(request: Requests.AccountsUpdateLedgerRequest, requestOptions: RequestOptions?) -> AccountsUpdateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the name, parent or postability of an account; the code and type cannot be changed. An account cannot be its own parent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.accountsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsUpdateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">accountsApplyTemplate</a>(request: Requests.AccountsApplyTemplateLedgerRequest, requestOptions: RequestOptions?) -> AccountsApplyTemplateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds the accounts of the company's chart template that the chart does not have yet (an account whose code already exists is not replaced) and sets the parent links the template defines. Returns the number of accounts in the chart afterwards.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.accountsApplyTemplate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsApplyTemplateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">accountsSwitchChart</a>(request: Requests.AccountsSwitchChartLedgerRequest, requestOptions: RequestOptions?) -> AccountsSwitchChartLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the seeded chart with the chart template of the company country (the Romanian general chart for a company registered in Romania, the Estonian e-arveldaja chart for a company registered in Estonia, the Lithuanian standard chart otherwise) and switches the posting defaults with it. Answers 409 when the company already uses that chart, has journal entries, holds accounts created by hand, or has settings that name an account the new chart does not have.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.accountsSwitchChart(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsSwitchChartLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">periodsList</a>(request: Requests.PeriodsListLedgerRequest, requestOptions: RequestOptions?) -> PeriodsListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's accounting periods with their `open` or `locked` status. Filterable by `year`, `month` and `status`; sortable by `year` and `month`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.periodsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PeriodsListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">periodsLock</a>(request: Requests.PeriodsLockLedgerRequest, requestOptions: RequestOptions?) -> PeriodsLockLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Locks the month so that postings dated in it are refused with 409 (`ledger/journal/transactions/create`, `cash/orders/create` and `cash/expense-reports/create` among them). Before locking a month that is not locked yet, posts the pending ratable revenue recognition tranches scheduled up to the month end and emits `revenue_recognition.posted` when there were any; when the month is the company's fiscal year end and no year-end close is posted for that year, posts the year-end close that moves the income and expense balances of the fiscal year to the retained earnings account (posting rule `closing.retainedEarnings`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.periodsLock(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PeriodsLockLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">periodsUnlock</a>(request: Requests.PeriodsUnlockLedgerRequest, requestOptions: RequestOptions?) -> PeriodsUnlockLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens the month for posting again. When the month is the company's fiscal year end and a year-end close is posted for it, posts a reversal of that close dated the same day.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.periodsUnlock(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PeriodsUnlockLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">journalTransactionsList</a>(request: Requests.JournalTransactionsListLedgerRequest, requestOptions: RequestOptions?) -> JournalTransactionsListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists journal transactions with the partner name. Filterable by `date`, `status`, `documentType`, `partnerId` and `documentId`; sortable by `date` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.journalTransactionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JournalTransactionsListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCentersCreate</a>(request: Requests.CostCentersCreateLedgerRequest, requestOptions: RequestOptions?) -> CostCentersCreateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a cost center, optionally inside a cost center group. Answers 409 when the `code` is already used.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCentersCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCentersCreateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCentersUpdate</a>(request: Requests.CostCentersUpdateLedgerRequest, requestOptions: RequestOptions?) -> CostCentersUpdateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the name, group or active flag of a cost center. An inactive cost center is refused on new manual journal entries (`ledger/journal/transactions/create` answers 422).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCentersUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCentersUpdateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCentersList</a>(request: Requests.CostCentersListLedgerRequest, requestOptions: RequestOptions?) -> CostCentersListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists cost centers with their group name. Filterable by `code`, `name`, `isActive` and `groupId`; sortable by `code`, `name` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCentersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCentersListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCenterGroupsCreate</a>(request: Requests.CostCenterGroupsCreateLedgerRequest, requestOptions: RequestOptions?) -> CostCenterGroupsCreateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a cost center group. Answers 409 when the `code` is already used.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCenterGroupsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterGroupsCreateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCenterGroupsUpdate</a>(request: Requests.CostCenterGroupsUpdateLedgerRequest, requestOptions: RequestOptions?) -> CostCenterGroupsUpdateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the code or name of a cost center group. Answers 409 when the new code is already used.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCenterGroupsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterGroupsUpdateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCenterGroupsDelete</a>(request: Requests.CostCenterGroupsDeleteLedgerRequest, requestOptions: RequestOptions?) -> CostCenterGroupsDeleteLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a cost center group. Answers 409 while cost centers are still assigned to it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCenterGroupsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterGroupsDeleteLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">costCenterGroupsList</a>(request: Requests.CostCenterGroupsListLedgerRequest, requestOptions: RequestOptions?) -> CostCenterGroupsListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists cost center groups. Filterable and sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.costCenterGroupsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterGroupsListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">postingRulesList</a>(request: Requests.PostingRulesListLedgerRequest, requestOptions: RequestOptions?) -> PostingRulesListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists every posting rule with its default account code on the company's chart template, the account code in effect and whether the company has overridden it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.postingRulesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PostingRulesListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">postingRulesUpdate</a>(request: Requests.PostingRulesUpdateLedgerRequest, requestOptions: RequestOptions?) -> PostingRulesUpdateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Overrides the account code of one or more posting rules; an `accountCode` of null removes the override and the chart default applies again. Every code given must be a postable account of the company's chart, else 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.postingRulesUpdate(request: .init(rules: [
        PostingRulesUpdateLedgerRequestRulesItem(
            key: .salesReceivable,
            accountCode: .null
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PostingRulesUpdateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">ownersCreate</a>(request: Requests.OwnersCreateLedgerRequest, requestOptions: RequestOptions?) -> OwnersCreateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an owner of the company. `equityAccountCode` defaults to the share capital account of the company's chart; a code that is not in the chart of accounts answers 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.ownersCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OwnersCreateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">ownersUpdate</a>(request: Requests.OwnersUpdateLedgerRequest, requestOptions: RequestOptions?) -> OwnersUpdateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the fields of an owner. An `equityAccountCode` that is not in the chart of accounts answers 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.ownersUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OwnersUpdateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">ownersDelete</a>(request: Requests.OwnersDeleteLedgerRequest, requestOptions: RequestOptions?) -> OwnersDeleteLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an owner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.ownersDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OwnersDeleteLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">ownersList</a>(request: Requests.OwnersListLedgerRequest, requestOptions: RequestOptions?) -> OwnersListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's owners. Filterable by `name` and `code`; sortable by `name` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.ownersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OwnersListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">journalTransactionsGet</a>(request: Requests.JournalTransactionsGetLedgerRequest, requestOptions: RequestOptions?) -> JournalTransactionsGetLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a journal transaction with its entries, ordered by account code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.journalTransactionsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JournalTransactionsGetLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">journalTransactionsCreate</a>(request: Requests.JournalTransactionsCreateLedgerRequest, requestOptions: RequestOptions?) -> JournalTransactionsCreateLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Posts a manual journal transaction (`documentType` `manual`, status `posted`) in the company's base currency. Every `accountCode` must be a postable account of the chart, cost centers must exist and be active, projects must exist, and the debits must equal the credits. Answers 422 for an amount with more than two decimals, for a `currency` other than the base currency and for an inactive cost center, and 409 when the accounting period of `date` is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.journalTransactionsCreate(request: .init(
        date: CalendarDate("2026-07-01")!,
        entries: [
            JournalTransactionsCreateLedgerRequestEntriesItem(
                accountCode: "accountCode"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JournalTransactionsCreateLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">statementRowsSchemes</a>(request: Requests.StatementRowsSchemesLedgerRequest, requestOptions: RequestOptions?) -> StatementRowsSchemesLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The rows or codes of each return or registry deposit of the company country that are filled from account balances. Accounts fall into a row by the layout defaults for the standard chart of accounts unless mapped under Account → Statement rows.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.statementRowsSchemes(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementRowsSchemesLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">statementRowsList</a>(request: Requests.StatementRowsListLedgerRequest, requestOptions: RequestOptions?) -> StatementRowsListLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Every postable account of the company with the row of `scheme` it falls into, by a mapping (`ledger/statement-rows/set`) or by the layout default, and the amount it carries there: the balance up to `toDate` on a balance-sheet row, the movement from `fromDate` to `toDate` on an income-statement row. `toDate` defaults to today and `fromDate` to 1 January of that year. `rows` holds the row totals and `unmapped` the accounts with a balance but no row.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.statementRowsList(request: .init(scheme: "scheme"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementRowsListLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ledger.<a href="/Sources/Resources/Ledger/LedgerClient.swift">statementRowsSet</a>(request: Requests.StatementRowsSetLedgerRequest, requestOptions: RequestOptions?) -> StatementRowsSetLedgerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A mapping on a code prefix covers every account whose code starts with it; the longest matching prefix wins. An empty rowCode removes the mapping so the layout default applies again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ledger.statementRowsSet(request: .init(
        scheme: "scheme",
        accountCode: "accountCode",
        rowCode: .null
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementRowsSetLedgerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Officers
<details><summary><code>client.officers.<a href="/Sources/Resources/Officers/OfficersClient.swift">list</a>(request: Requests.ListOfficersRequest, requestOptions: RequestOptions?) -> ListOfficersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Directors, board members, the company secretary, representatives and liquidators, with their personal identifier, appointment and resignation dates and whether they sign the annual accounts. Annual returns and registry deposits are built from this register.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.officers.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListOfficersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.officers.<a href="/Sources/Resources/Officers/OfficersClient.swift">create</a>(request: Requests.CreateOfficersRequest, requestOptions: RequestOptions?) -> CreateOfficersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add an officer to the company's register (`officers/list`); `signsAccounts` defaults to true. Refused with 422 when `resignedOn` is before `appointedOn`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.officers.create(request: .init(
        name: "name",
        role: .director
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateOfficersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.officers.<a href="/Sources/Resources/Officers/OfficersClient.swift">update</a>(request: Requests.UpdateOfficersRequest, requestOptions: RequestOptions?) -> UpdateOfficersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replace the recorded data of an officer; every field is written as sent, so a field left out is cleared and `signsAccounts` falls back to true. Refused with 422 when `resignedOn` is before `appointedOn`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.officers.update(request: .init(
        id: "id",
        name: "name",
        role: .director
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateOfficersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.officers.<a href="/Sources/Resources/Officers/OfficersClient.swift">delete</a>(request: Requests.DeleteOfficersRequest, requestOptions: RequestOptions?) -> DeleteOfficersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove an officer from the company's register.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.officers.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteOfficersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PlatformSellers
<details><summary><code>client.platformSellers.<a href="/Sources/Resources/PlatformSellers/PlatformSellersClient.swift">list</a>(request: Requests.ListPlatformSellersRequest, requestOptions: RequestOptions?) -> ListPlatformSellersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Individuals and entities that sell goods, rent out property or transport, or perform personal services through the platform the company operates. The yearly DAC7 report is built from them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.platformSellers.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListPlatformSellersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.platformSellers.<a href="/Sources/Resources/PlatformSellers/PlatformSellersClient.swift">get</a>(request: Requests.GetPlatformSellersRequest, requestOptions: RequestOptions?) -> GetPlatformSellersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one platform seller with its activities, ordered by year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.platformSellers.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetPlatformSellersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.platformSellers.<a href="/Sources/Resources/PlatformSellers/PlatformSellersClient.swift">create</a>(request: Requests.CreatePlatformSellersRequest, requestOptions: RequestOptions?) -> CreatePlatformSellersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a seller on the company's platform for the DAC7 report: an `individual` (first and last name required) or an `entity` (`entityName` required), with its `activities` per year and quarter. An `immovable_property` activity needs `propertyAddress`; property address, type and rented days on any other kind of activity are refused. These checks answer 422; a `partnerId` that does not exist answers 404. The report is built from the sellers with `declarations/eu/dac7/preview` and `declarations/eu/dac7/xml`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.platformSellers.create(request: .init(
        kind: .individual,
        address: CreatePlatformSellersRequestAddress(
            countryCode: "countryCode"
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreatePlatformSellersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.platformSellers.<a href="/Sources/Resources/PlatformSellers/PlatformSellersClient.swift">update</a>(request: Requests.UpdatePlatformSellersRequest, requestOptions: RequestOptions?) -> UpdatePlatformSellersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replace a platform seller's details and all of its activities with the ones given, under the same checks as `platform-sellers/create`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.platformSellers.update(request: .init(
        id: "id",
        kind: .individual,
        address: UpdatePlatformSellersRequestAddress(
            countryCode: "countryCode"
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdatePlatformSellersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.platformSellers.<a href="/Sources/Resources/PlatformSellers/PlatformSellersClient.swift">delete</a>(request: Requests.DeletePlatformSellersRequest, requestOptions: RequestOptions?) -> DeletePlatformSellersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a platform seller as deleted. It leaves the lists and the DAC7 report.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.platformSellers.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeletePlatformSellersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## migration
<details><summary><code>client.migration.<a href="/Sources/Resources/Migration/MigrationClient.swift">booksValidate</a>(request: Requests.BooksValidateMigrationRequest, requestOptions: RequestOptions?) -> BooksValidateMigrationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs every check the import runs (accounts, partners, balances, open invoices, assets, stock) and returns the same summary and warnings, then rolls everything back. Nothing is stored.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.migration.booksValidate(request: .init(cutoverDate: CalendarDate("2026-07-01")!))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BooksValidateMigrationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.migration.<a href="/Sources/Resources/Migration/MigrationClient.swift">booksImport</a>(request: Requests.BooksImportMigrationRequest, requestOptions: RequestOptions?) -> BooksImportMigrationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Brings a company over from another system in one call: chart of accounts, partners, items, opening balances (or the full journal history), open customer and supplier invoices, fixed assets with their accumulated depreciation, and stock on hand. The whole package is written in one database transaction - if any row fails, nothing is stored.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.migration.booksImport(request: .init(cutoverDate: CalendarDate("2026-07-01")!))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BooksImportMigrationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## assets
<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">settingsGet</a>(request: Requests.SettingsGetAssetsRequest, requestOptions: RequestOptions?) -> SettingsGetAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the company's fixed asset setting `autoDepreciation`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.settingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsGetAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">settingsUpdate</a>(request: Requests.SettingsUpdateAssetsRequest, requestOptions: RequestOptions?) -> SettingsUpdateAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Turn automatic depreciation on or off. When it is on, the scheduler posts the previous month's depreciation for the company once a day, as `assets/depreciation/post` does.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.settingsUpdate(request: .init(autoDepreciation: true))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsUpdateAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">groupsCreate</a>(request: Requests.GroupsCreateAssetsRequest, requestOptions: RequestOptions?) -> GroupsCreateAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an asset group: the asset, accumulated depreciation and depreciation expense accounts its assets are posted to, and an optional default useful life in months. `expenseAccountCode` defaults to the chart's depreciation expense account; each account must exist and be postable (422). A duplicate code is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.groupsCreate(request: .init(
        code: "code",
        name: "name",
        assetAccountCode: "assetAccountCode",
        depreciationAccountCode: "depreciationAccountCode"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsCreateAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">groupsList</a>(request: Requests.GroupsListAssetsRequest, requestOptions: RequestOptions?) -> GroupsListAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the asset groups; filterable and sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.groupsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsListAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsCreate</a>(request: Requests.AssetsCreateAssetsRequest, requestOptions: RequestOptions?) -> AssetsCreateAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a fixed asset in a group with its acquisition date and cost, salvage value, useful life in months (defaults to the group's default; 422 when neither is set) and depreciation start date (defaults to the acquisition date). The salvage value must be below the acquisition cost (422); a duplicate code is refused with 409. Depreciation is posted with `assets/depreciation/post`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsCreate(request: .init(
        groupId: "groupId",
        code: "code",
        name: "name",
        acquisitionDate: CalendarDate("2026-07-01")!,
        acquisitionCost: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsCreateAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsUpdate</a>(request: Requests.AssetsUpdateAssetsRequest, requestOptions: RequestOptions?) -> AssetsUpdateAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change an asset that has no posted depreciation yet: group, code, name, dates, cost, salvage value, useful life, notes or documents. Refused with 409 once depreciation is posted or the asset is disposed, and with 422 when the salvage value would reach the acquisition cost; a duplicate code is 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsUpdateAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsInputVat</a>(request: Requests.AssetsInputVatAssetsRequest, requestOptions: RequestOptions?) -> AssetsInputVatAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record the input VAT facts of a capital good that the annual VAT return needs for the adjustment of the deduction over the adjustment period (Article 187 of the VAT Directive, § 15a UStG): the input VAT on the acquisition, the date of first use, the share of use for deductible turnover at first use, whether it is land or a building (ten-year period instead of five), and every later year in which the share changed or the good was sold or withdrawn. Allowed also after depreciation has been posted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsInputVat(request: .init(
        id: "id",
        inputVatAmount: .null,
        inputVatFirstUseDate: .null,
        inputVatDeductiblePercent: .null,
        inputVatRealEstate: true,
        inputVatUseChanges: [
            AssetsInputVatAssetsRequestInputVatUseChangesItem(
                year: 1000000,
                percent: "121.00",
                reason: .useChange
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsInputVatAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsGet</a>(request: Requests.AssetsGetAssetsRequest, requestOptions: RequestOptions?) -> AssetsGetAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one fixed asset with its totals (cost including modernisations, accumulated depreciation, net book value, total life in months), its input VAT facts and its disposal.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsGetAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsList</a>(request: Requests.AssetsListAssetsRequest, requestOptions: RequestOptions?) -> AssetsListAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the fixed assets; filterable by `code`, `name`, `groupId`, `status`, `acquisitionDate`, `acquisitionCost` and `accumulatedDepreciation`, sortable by `code`, `name`, `acquisitionDate` and `acquisitionCost`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsListAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsModernize</a>(request: Requests.AssetsModernizeAssetsRequest, requestOptions: RequestOptions?) -> AssetsModernizeAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a modernisation of a fixed asset: `amount` is added to its cost and `addedLifeMonths` to its useful life from the month of `date` on, and the remaining depreciable value is spread over the months left. Refused with 422 when the asset is disposed or when no depreciation month would be left (give `addedLifeMonths` of at least 1); a fully depreciated asset becomes active again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsModernize(request: .init(
        id: "id",
        date: CalendarDate("2026-07-01")!,
        amount: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsModernizeAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">assetsDispose</a>(request: Requests.AssetsDisposeAssetsRequest, requestOptions: RequestOptions?) -> AssetsDisposeAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Dispose of a fixed asset (sold, scrapped or written off). Removes its cost and accumulated depreciation, books the net book value as a disposal loss and the proceeds as a disposal gain (posting rules assets.disposalLoss, assets.disposalGain, assets.disposalProceeds), and stops its depreciation. Depreciation must be posted for every month before the disposal month.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.assetsDispose(request: .init(
        id: "id",
        date: CalendarDate("2026-07-01")!,
        reason: .sold
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssetsDisposeAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">depreciationPreview</a>(request: Requests.DepreciationPreviewAssetsRequest, requestOptions: RequestOptions?) -> DepreciationPreviewAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview what `assets/depreciation/post` would post for a month: per active asset the amount and the months it covers, earlier unposted months included, and whether the month is already posted. Nothing is written.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.depreciationPreview(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DepreciationPreviewAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.assets.<a href="/Sources/Resources/Assets/AssetsClient.swift">depreciationPost</a>(request: Requests.DepreciationPostAssetsRequest, requestOptions: RequestOptions?) -> DepreciationPostAssetsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Post the depreciation of a month: one journal entry dated the last day of the month that debits each group's expense account and credits its accumulated depreciation account, for every active asset whose depreciation has started, covering that month and any earlier month not yet posted. Each month's amount is the remaining depreciable value (cost plus modernisations less salvage value less accumulated depreciation) divided by the months left; an asset whose life or value is used up becomes `fully_depreciated`. Answers 409 when the period is locked, and `journalTransactionId` null when nothing is due.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.assets.depreciationPost(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DepreciationPostAssetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## hr
<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">positionsCreate</a>(request: Requests.PositionsCreateHrRequest, requestOptions: RequestOptions?) -> PositionsCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a job position with an optional code and name translations, for use in `hr/contracts/create`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.positionsCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PositionsCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">positionsUpdate</a>(request: Requests.PositionsUpdateHrRequest, requestOptions: RequestOptions?) -> PositionsUpdateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the code, name or translations of a position; a null `translations` removes them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.positionsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PositionsUpdateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">positionsList</a>(request: Requests.PositionsListHrRequest, requestOptions: RequestOptions?) -> PositionsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's positions; filterable and sortable by `name` and `code`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.positionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PositionsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesCreate</a>(request: Requests.EmployeesCreateHrRequest, requestOptions: RequestOptions?) -> EmployeesCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an employee record. `payrollOptions` holds the country-specific settings the payroll engine reads for the person (see `hr/employees/fields`); `applyAllowance` defaults to true and `pensionAccumulation` to false.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesCreate(request: .init(
        firstName: "firstName",
        lastName: "lastName"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesUpdate</a>(request: Requests.EmployeesUpdateHrRequest, requestOptions: RequestOptions?) -> EmployeesUpdateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of an employee; a null clears the fields that allow it (code, personal code, birth date, contact details, address, IBAN, social insurance number and start, hire date, notes). `status` and `terminationDate` are set here too.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesUpdateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesGet</a>(request: Requests.EmployeesGetHrRequest, requestOptions: RequestOptions?) -> EmployeesGetHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads one employee.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesGetHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesFields</a>(request: Requests.EmployeesFieldsHrRequest, requestOptions: RequestOptions?) -> EmployeesFieldsHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attributes a filing of the company country needs about a person that the shared employee record does not carry, such as the sex and place of birth an Italian income certificate asks for. Their values are kept in the payrollOptions of the employee.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesFields(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesFieldsHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesList</a>(request: Requests.EmployeesListHrRequest, requestOptions: RequestOptions?) -> EmployeesListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the employees that are not deleted; filterable by `firstName`, `lastName`, `code`, `status` and `email`, sortable by `lastName`, `code` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesDelete</a>(request: Requests.EmployeesDeleteHrRequest, requestOptions: RequestOptions?) -> EmployeesDeleteHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks the employee deleted; the record stays and no longer appears in lists or payroll runs. `hr/employees/anonymize` also blanks the personal data.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesDeleteHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesAnonymize</a>(request: Requests.EmployeesAnonymizeHrRequest, requestOptions: RequestOptions?) -> EmployeesAnonymizeHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the name with a placeholder and removes personal code, birth date, contact details, address, bank account, social-insurance number, notes and sick-leave reasons. Payroll and contract rows stay linked to the record for the statutory retention period.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesAnonymize(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesAnonymizeHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">contractsCreate</a>(request: Requests.ContractsCreateHrRequest, requestOptions: RequestOptions?) -> ContractsCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an employment contract for an employee. A `permanent` contract takes no `endDate` and a `fixed_term` one requires it; the number comes from `contractNo` or, with `agreementId`, from the employee's agreement; `workHours` defaults by `salaryType`. Answers 422 when the end date is before the start, and 409 when the employee already has a contract overlapping the period (end it with `hr/contracts/end` first) or the contract number already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.contractsCreate(request: .init(
        employeeId: "employeeId",
        startDate: CalendarDate("2026-07-01")!,
        baseSalary: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContractsCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">contractsEnd</a>(request: Requests.ContractsEndHrRequest, requestOptions: RequestOptions?) -> ContractsEndHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ends a contract on `endDate` with an optional reason. Answers 422 when the end date is before the contract start.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.contractsEnd(request: .init(
        id: "id",
        endDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContractsEndHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">contractsList</a>(request: Requests.ContractsListHrRequest, requestOptions: RequestOptions?) -> ContractsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists employment contracts; filterable by `employeeId`, `agreementId`, `status` and `contractNo`, sortable by `startDate` and `contractNo`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.contractsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ContractsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">leaveBalancesSet</a>(request: Requests.LeaveBalancesSetHrRequest, requestOptions: RequestOptions?) -> LeaveBalancesSetHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or replaces the leave entitlement of an employee for a year; `usedDays` is kept unless given (0 on a new row) and `remainingDays` is the entitled days less the used ones.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.leaveBalancesSet(request: .init(
        employeeId: "employeeId",
        year: 1000000,
        entitledDays: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LeaveBalancesSetHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">leaveBalancesList</a>(request: Requests.LeaveBalancesListHrRequest, requestOptions: RequestOptions?) -> LeaveBalancesListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists leave balances, narrowed to an employee and/or a year when given, oldest year first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.leaveBalancesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LeaveBalancesListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">incapacityCertificatesCreate</a>(request: Requests.IncapacityCertificatesCreateHrRequest, requestOptions: RequestOptions?) -> IncapacityCertificatesCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records a sick-leave certificate of an employee. Answers 422 when `toDate` is before `fromDate`. `payroll/runs/create` warns when a certificate covers working days of a month that has no timesheet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.incapacityCertificatesCreate(request: .init(
        employeeId: "employeeId",
        number: "number",
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IncapacityCertificatesCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">incapacityCertificatesList</a>(request: Requests.IncapacityCertificatesListHrRequest, requestOptions: RequestOptions?) -> IncapacityCertificatesListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists incapacity certificates; filterable by `employeeId` and `number`, sortable by `fromDate` and `number`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.incapacityCertificatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IncapacityCertificatesListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">perDiemRatesCreate</a>(request: Requests.PerDiemRatesCreateHrRequest, requestOptions: RequestOptions?) -> PerDiemRatesCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds the company's daily per diem rate for a destination country from `validFrom`; `hr/business-trips/create` takes the latest rate valid on the trip's start date. Answers 409 when a rate for that country already starts on that date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.perDiemRatesCreate(request: .init(
        countryCode: "countryCode",
        dailyAmount: "121.00",
        validFrom: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PerDiemRatesCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">perDiemRatesList</a>(request: Requests.PerDiemRatesListHrRequest, requestOptions: RequestOptions?) -> PerDiemRatesListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists per diem rates; filterable by `countryCode`, sortable by `countryCode` and `validFrom`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.perDiemRatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PerDiemRatesListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">perDiemRatesDelete</a>(request: Requests.PerDiemRatesDeleteHrRequest, requestOptions: RequestOptions?) -> PerDiemRatesDeleteHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a per diem rate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.perDiemRatesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PerDiemRatesDeleteHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">businessTripsCreate</a>(request: Requests.BusinessTripsCreateHrRequest, requestOptions: RequestOptions?) -> BusinessTripsCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stores the trip as a draft with `days` counted as calendar days, both ends included, and `perDiemAmount` as the days times the company's rate for the destination valid on the start date (`hr/per-diem-rates/create`). Answers 422 when the trip ends before it starts or no rate covers the destination on that date, and 409 when the employee already has a trip overlapping the dates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.businessTripsCreate(request: .init(
        employeeId: "employeeId",
        destinationCountryCode: "destinationCountryCode",
        purpose: "purpose",
        startDate: CalendarDate("2026-07-01")!,
        endDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BusinessTripsCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">businessTripsGet</a>(request: Requests.BusinessTripsGetHrRequest, requestOptions: RequestOptions?) -> BusinessTripsGetHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads one business trip.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.businessTripsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BusinessTripsGetHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">businessTripsList</a>(request: Requests.BusinessTripsListHrRequest, requestOptions: RequestOptions?) -> BusinessTripsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists business trips; filterable by `employeeId`, `status` and `payrollRunId`, sortable by `startDate`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.businessTripsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BusinessTripsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">businessTripsApprove</a>(request: Requests.BusinessTripsApproveHrRequest, requestOptions: RequestOptions?) -> BusinessTripsApproveHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the trip's status to `approved`. `payroll/runs/create` without explicit lines adds the per diem of every approved trip ending in the run month as an untaxed addition and sets the trip's `payrollRunId`; reversing or cancelling the run releases the trip again. Answers 409 when the trip is not a draft.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.businessTripsApprove(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BusinessTripsApproveHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">businessTripsDelete</a>(request: Requests.BusinessTripsDeleteHrRequest, requestOptions: RequestOptions?) -> BusinessTripsDeleteHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a draft trip; answers 409 when the trip is not a draft.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.businessTripsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BusinessTripsDeleteHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesRecordsCreate</a>(request: Requests.EmployeesRecordsCreateHrRequest, requestOptions: RequestOptions?) -> EmployeesRecordsCreateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an education, qualification, certificate or training record to an employee, optionally linked to one of the company's uploaded files (`fileId`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesRecordsCreate(request: .init(
        employeeId: "employeeId",
        type: .education,
        title: "title"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesRecordsCreateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesRecordsUpdate</a>(request: Requests.EmployeesRecordsUpdateHrRequest, requestOptions: RequestOptions?) -> EmployeesRecordsUpdateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the given fields of an employee record; `issuedAt`, `validUntil` and `fileId` can be cleared with null.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesRecordsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesRecordsUpdateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesRecordsDelete</a>(request: Requests.EmployeesRecordsDeleteHrRequest, requestOptions: RequestOptions?) -> EmployeesRecordsDeleteHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an employee record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesRecordsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesRecordsDeleteHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesRecordsList</a>(request: Requests.EmployeesRecordsListHrRequest, requestOptions: RequestOptions?) -> EmployeesRecordsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists employee records; filterable by `employeeId`, `type` and `title`, sortable by `createdAt` and `issuedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesRecordsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesRecordsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">employeesAttachmentsList</a>(request: Requests.EmployeesAttachmentsListHrRequest, requestOptions: RequestOptions?) -> EmployeesAttachmentsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the files uploaded against an employee, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.employeesAttachmentsList(request: .init(employeeId: "employeeId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmployeesAttachmentsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">timesheetsGenerate</a>(request: Requests.TimesheetsGenerateHrRequest, requestOptions: RequestOptions?) -> TimesheetsGenerateHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the timesheet of the month for every employee with a contract in it, or for one employee with `employeeId`, replacing any existing timesheet: the Monday to Friday days within the contract get the contract's daily hours (its weekly hours over five), and for a Lithuanian company the public holidays are `holiday` days with 0 hours. Answers 422 when no contract covers the month.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.timesheetsGenerate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimesheetsGenerateHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">timesheetsUpsert</a>(request: Requests.TimesheetsUpsertHrRequest, requestOptions: RequestOptions?) -> TimesheetsUpsertHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or replaces the timesheet of an employee for a month from the given days; `workedDays` and `workedHours` count the `work` and `business_trip` days with hours. Answers 422 for a day outside the month, a day given twice or more than 24 hours in a day. `payroll/runs/create` reads the timesheet for the paid days, the days worked and the business-trip days of the month.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.timesheetsUpsert(request: .init(
        employeeId: "employeeId",
        year: 1000000,
        month: 1000000,
        days: [
            TimesheetsUpsertHrRequestDaysItem(
                day: 1000000,
                hours: "121.00",
                type: .work
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimesheetsUpsertHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">timesheetsGet</a>(request: Requests.TimesheetsGetHrRequest, requestOptions: RequestOptions?) -> TimesheetsGetHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads the timesheet of an employee for a month.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.timesheetsGet(request: .init(
        employeeId: "employeeId",
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimesheetsGetHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">timesheetsList</a>(request: Requests.TimesheetsListHrRequest, requestOptions: RequestOptions?) -> TimesheetsListHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the timesheets of a month, ordered by employee name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.timesheetsList(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimesheetsListHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hr.<a href="/Sources/Resources/Hr/HrClient.swift">timesheetsDelete</a>(request: Requests.TimesheetsDeleteHrRequest, requestOptions: RequestOptions?) -> TimesheetsDeleteHrResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a timesheet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.hr.timesheetsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimesheetsDeleteHrRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## fleet
<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">vehiclesCreate</a>(request: Requests.VehiclesCreateFleetRequest, requestOptions: RequestOptions?) -> VehiclesCreateFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a vehicle. The plate number is stored in upper case and must be unique in the company (409 otherwise); `fixedAssetId` must name an existing fixed asset. Uploaded `documents` are attached to the vehicle.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.vehiclesCreate(request: .init(
        plateNumber: "plateNumber",
        make: "make",
        model: "model"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VehiclesCreateFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">vehiclesUpdate</a>(request: Requests.VehiclesUpdateFleetRequest, requestOptions: RequestOptions?) -> VehiclesUpdateFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a vehicle's details or set its `status` to `active`, `sold` or `scrapped`; omitted fields keep their value. A plate number already used by another vehicle is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.vehiclesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VehiclesUpdateFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">vehiclesGet</a>(request: Requests.VehiclesGetFleetRequest, requestOptions: RequestOptions?) -> VehiclesGetFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one vehicle with its current assignment, when an employee holds it today.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.vehiclesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VehiclesGetFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">vehiclesList</a>(request: Requests.VehiclesListFleetRequest, requestOptions: RequestOptions?) -> VehiclesListFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List vehicles with their current assignment. Filterable by `plateNumber`, `make`, `model` and `status`; sortable by `plateNumber`, `make` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.vehiclesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VehiclesListFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">assignmentsCreate</a>(request: Requests.AssignmentsCreateFleetRequest, requestOptions: RequestOptions?) -> AssignmentsCreateFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assign a vehicle to an employee from `fromDate`, open-ended or until `toDate`. A period that overlaps another assignment of the same vehicle is refused with 409, a `toDate` before `fromDate` with 422. `privateUse` makes the car a benefit in kind in `fleet/natura/preview`, and `employerPaysFuel` picks its rate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.assignmentsCreate(request: .init(
        vehicleId: "vehicleId",
        employeeId: "employeeId",
        fromDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssignmentsCreateFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">assignmentsEnd</a>(request: Requests.AssignmentsEndFleetRequest, requestOptions: RequestOptions?) -> AssignmentsEndFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

End an open assignment on `toDate`. An assignment that already has an end date is refused with 409, a `toDate` before its `fromDate` with 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.assignmentsEnd(request: .init(
        id: "id",
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssignmentsEndFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">assignmentsList</a>(request: Requests.AssignmentsListFleetRequest, requestOptions: RequestOptions?) -> AssignmentsListFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List vehicle assignments with the plate number and the employee's name. Filterable by `vehicleId`, `employeeId` and `privateUse`; sortable by `fromDate` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.assignmentsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AssignmentsListFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fleet.<a href="/Sources/Resources/Fleet/FleetClient.swift">naturaPreview</a>(request: Requests.NaturaPreviewFleetRequest, requestOptions: RequestOptions?) -> NaturaPreviewFleetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview the car benefit in kind of a month for a Lithuanian company: every assignment with `privateUse` that overlaps the month is valued at 0.75 % of the vehicle's market value when the employer pays the fuel, else 0.70 %, one row per employee and vehicle, with the total. A company registered in another country is refused with 422. The same amounts are added to a payroll run created with `includeNatura` (`payroll/runs/create`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.fleet.naturaPreview(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.NaturaPreviewFleetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## payroll
<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">departmentsCreate</a>(request: Requests.DepartmentsCreatePayrollRequest, requestOptions: RequestOptions?) -> DepartmentsCreatePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a department with a code and a name; answers 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.departmentsCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DepartmentsCreatePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">departmentsList</a>(request: Requests.DepartmentsListPayrollRequest, requestOptions: RequestOptions?) -> DepartmentsListPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's departments ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.departmentsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DepartmentsListPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">schedulesCreate</a>(request: Requests.SchedulesCreatePayrollRequest, requestOptions: RequestOptions?) -> SchedulesCreatePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a work schedule with a code, a name and `hoursPerWeek` (default 40); answers 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.schedulesCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SchedulesCreatePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">schedulesList</a>(request: Requests.SchedulesListPayrollRequest, requestOptions: RequestOptions?) -> SchedulesListPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the company's work schedules ordered by code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.schedulesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SchedulesListPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">paymentTypesList</a>(request: Requests.PaymentTypesListPayrollRequest, requestOptions: RequestOptions?) -> PaymentTypesListPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads the payment types of the company country's payroll engine, each with the labels of the taxes, contributions and reporting lines it is subject to (`applies`), and the default type an untyped payment falls under. These codes are what `payroll/calc` and the additions of `payroll/runs/create` accept as `paymentType`. Answers 422 when Nordlet has no payroll engine for the company's country.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.paymentTypesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PaymentTypesListPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">calc</a>(request: Requests.CalcPayrollRequest, requestOptions: RequestOptions?) -> CalcPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs the company country's payroll engine once on a taxable base at a date, with the employee settings given in the body instead of an employee record, and returns the allowance, income tax, contributions, components and net; nothing is saved. `payments` passes typed payments to the engine; each `paymentType` must be a code from `payroll/payment-types/list` (422 otherwise). Answers 422 when Nordlet has no payroll engine for the company's country.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.calc(request: .init(
        taxableBase: "121.00",
        date: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CalcPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsCreate</a>(request: Requests.RunsCreatePayrollRequest, requestOptions: RequestOptions?) -> RunsCreatePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a draft payroll run for a month, computing each line with the company country's payroll engine, the employee's approved runs of the year so far and of the two previous years, the month's timesheet and `payDate` (default the last day of the month). Without `lines`, every active employee whose contract covers the month gets a line: the gross is the contract's monthly salary reduced to the paid working days of the contract and the timesheet, unless `grossOverrides` sets it; the per diems of approved business trips ending in the month are added untaxed and the trips linked to the run; for a Lithuanian company the car benefit in kind (`includeNatura`) and the compensation for unused leave of a contract ending in the month are added. With `lines`, only the given employees are computed with their gross, additions and deductions; a taxable addition may carry a `paymentType` from `payroll/payment-types/list` and `hours`. Answers 422 when the country has no engine, an employee is given twice, has two contracts in the month, has no contract and no gross, or is paid by the hour or day without a gross; 409 when a run for the month already exists or the accounting period is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsCreate(request: .init(
        year: 1000000,
        month: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsCreatePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsGet</a>(request: Requests.RunsGetPayrollRequest, requestOptions: RequestOptions?) -> RunsGetPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads a payroll run with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsGetPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsList</a>(request: Requests.RunsListPayrollRequest, requestOptions: RequestOptions?) -> RunsListPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists payroll runs without their lines; filterable by `status`, `year` and `month`, sortable by `createdAt`, `year` and `month`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsListPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">linesAttendance</a>(request: Requests.LinesAttendancePayrollRequest, requestOptions: RequestOptions?) -> LinesAttendancePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The days and hours worked, the days on the register and the average hourly earnings that some countries report per employment. The Czech monthly employer report asks for all four. They can be set while the run is a draft.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.linesAttendance(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LinesAttendancePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsApprove</a>(request: Requests.RunsApprovePayrollRequest, requestOptions: RequestOptions?) -> RunsApprovePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Posts the run's journal entry dated the last day of the month and sets the status to `approved`: the wage expense (net pay, income tax, employee contributions and deductions) and the employer contributions are debited; the net payable, the income tax, the social contributions (on one account, or split between the employee and employer accounts when their codes differ) and the deductions are credited. The accounts default to the payroll accounts of the company's chart template; each can be given per call. Answers 409 when the run is not a draft or the accounting period is locked, 422 when the run has no lines or nothing to post, and emits `payroll_run.approved`. For an Irish company with the automation of the `ie-payroll-withholding` deadline switched on, the month's payroll submission is sent at once and a failure is added to the run's `warnings`. Undo with `payroll/runs/reverse`, pay with `payroll/payments/export`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsApprove(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsApprovePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsReverse</a>(request: Requests.RunsReversePayrollRequest, requestOptions: RequestOptions?) -> RunsReversePayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Posts a journal entry dated the last day of the month that mirrors the run's entry (debits and credits swapped), sets the status to `reversed` with the reason, and releases the business trips the run paid so the next run picks them up again. Answers 409 when the run is not approved, when part of it is matched to bank payments (`paidAmount`, unmatch them first) or when the accounting period is locked. Emits `payroll_run.reversed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsReverse(request: .init(
        id: "id",
        reason: "reason"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsReversePayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">runsCancel</a>(request: Requests.RunsCancelPayrollRequest, requestOptions: RequestOptions?) -> RunsCancelPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a draft run with its lines and releases the business trips linked to it; answers 409 when the run is not a draft. An approved run is undone with `payroll/runs/reverse`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.runsCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RunsCancelPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payroll.<a href="/Sources/Resources/Payroll/PayrollClient.swift">paymentsExport</a>(request: Requests.PaymentsExportPayrollRequest, requestOptions: RequestOptions?) -> PaymentsExportPayrollResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds a SEPA credit transfer file (pain.001.001.03) for an approved run: one transfer from the chosen bank account to each employee's IBAN for the line's net when it is positive, with a remittance text in `locale` (default the locale of the calling user) and the run period, executed on `executionDate` (default the company's current date). Answers 409 when the run is not approved, and 422 when the bank account has no IBAN or is not in the company's base currency, an employee has no IBAN (`hr/employees/update`) or no line has a positive net. The file is returned in `xml`; nothing is sent to the bank.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.payroll.paymentsExport(request: .init(
        runId: "runId",
        bankAccountId: "bankAccountId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PaymentsExportPayrollRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## agreements
<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">settingsGet</a>(request: Requests.SettingsGetAgreementsRequest, requestOptions: RequestOptions?) -> SettingsGetAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return whether automatic agreement billing is switched on for the company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.settingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsGetAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">settingsUpdate</a>(request: Requests.SettingsUpdateAgreementsRequest, requestOptions: RequestOptions?) -> SettingsUpdateAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Switch automatic agreement billing on or off for the company. With it on, a scheduled job runs the same billing as `agreements/agreements/billing/run` for the company once a day.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.settingsUpdate(request: .init(autoBilling: true))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsUpdateAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">typesCreate</a>(request: Requests.TypesCreateAgreementsRequest, requestOptions: RequestOptions?) -> TypesCreateAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an agreement type with a `code` and a `name`. Answers 409 when the company already has a type with that code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.typesCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesCreateAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">typesList</a>(request: Requests.TypesListAgreementsRequest, requestOptions: RequestOptions?) -> TypesListAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's agreement types. Filterable and sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.typesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TypesListAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsCreate</a>(request: Requests.AgreementsCreateAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsCreateAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an agreement for exactly one party, a partner, an employee or a bank account, which must exist in the company (400 otherwise). Without `kind`, an employee agreement is `employment`, a bank account agreement is `bank` and a partner agreement is `other`; a `documentRef` (the `storageKey` of an uploaded file) attaches that file to the agreement. Answers 409 when the company already has an agreement with that `number`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsCreate(request: .init(
        number: "number",
        startDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsCreateAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsGet</a>(request: Requests.AgreementsGetAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsGetAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one agreement with its items.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsGetAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsUpdate</a>(request: Requests.AgreementsUpdateAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsUpdateAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the given fields of an agreement and return it with its items. The party, `number`, `startDate`, `currency` and items are not changed by this call.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsUpdateAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsDelete</a>(request: Requests.AgreementsDeleteAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsDeleteAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark an agreement as deleted. It is no longer returned, changed or billed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsDeleteAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsList</a>(request: Requests.AgreementsListAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsListAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's agreements without their items, each with `partnerName`. Filterable by `number`, `name`, `partnerId`, `employeeId`, `bankAccountId`, `kind`, `typeId`, `status`, `startDate`, `endDate` and `value`; sortable by `number`, `startDate` and `createdAt` (default `startDate` descending).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsListAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsGenerateInvoice</a>(request: Requests.AgreementsGenerateInvoiceAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsGenerateInvoiceAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft sale invoice for the next unbilled period of an active agreement that has a partner and a `billingPeriod`. The period follows the monthly, quarterly or annual grid from `startDate`, continues after the last period already invoiced for the agreement, and is prorated by days when it starts late or is cut by `endDate`; an `autoRenew` agreement has its `endDate` moved forward by whole terms instead (`renewedEndDate`). The lines come from the agreement items, else one line of `value`, with revenue recognised ratably over the period. Answers 422 when the agreement is not active, has no partner, billing period, items or value, carries VAT while the company is not a VAT payer, is fully billed through its end date, or when the next period starts after `asOfDate` (default today). Emits `agreement.invoice_generated`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsGenerateInvoice(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsGenerateInvoiceAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">agreementsBillingRun</a>(request: Requests.AgreementsBillingRunAgreementsRequest, requestOptions: RequestOptions?) -> AgreementsBillingRunAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate the invoices due up to `asOfDate` (default today) for every active agreement of the company that has a partner and a billing period, one invoice per period and at most 60 per agreement in one run, in the same way as `agreements/agreements/generate-invoice`. An agreement that is fully billed and whose `endDate` has passed is set to `expired`. A failing agreement is listed in `errors` and does not stop the run. Each invoice emits `agreement.invoice_generated`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.agreementsBillingRun(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgreementsBillingRunAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">insurancePoliciesCreate</a>(request: Requests.InsurancePoliciesCreateAgreementsRequest, requestOptions: RequestOptions?) -> InsurancePoliciesCreateAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an insurance policy. Answers 422 when `toDate` is before `fromDate`, 400 when `insurerPartnerId` is not a partner of the company, and 409 when the company already has a policy with that `policyNumber`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.insurancePoliciesCreate(request: .init(
        policyNumber: "policyNumber",
        insuredObject: "insuredObject",
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InsurancePoliciesCreateAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">insurancePoliciesList</a>(request: Requests.InsurancePoliciesListAgreementsRequest, requestOptions: RequestOptions?) -> InsurancePoliciesListAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's insurance policies. Filterable by `policyNumber`, `insurerPartnerId` and `toDate`; sortable by `policyNumber` and `toDate` (default `toDate` descending).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.insurancePoliciesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InsurancePoliciesListAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agreements.<a href="/Sources/Resources/Agreements/AgreementsClient.swift">insurancePoliciesDelete</a>(request: Requests.InsurancePoliciesDeleteAgreementsRequest, requestOptions: RequestOptions?) -> InsurancePoliciesDeleteAgreementsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark an insurance policy as deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.agreements.insurancePoliciesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InsurancePoliciesDeleteAgreementsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## inventory
<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">settingsGet</a>(request: Requests.SettingsGetInventoryRequest, requestOptions: RequestOptions?) -> SettingsGetInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the company's negative stock policy.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.settingsGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsGetInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">settingsUpdate</a>(request: Requests.SettingsUpdateInventoryRequest, requestOptions: RequestOptions?) -> SettingsUpdateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the negative stock policy. With `reject` a consumption larger than the stock on hand of the item in the warehouse is refused with 422. With `allow` the missing quantity is written as a shortage priced at the unit cost of the last receipt in that warehouse (the item's purchase price when there is none); the next receipt of the item there settles the shortage and posts any cost difference between `inventory.cogs` and `inventory.stock`. A consumption from a named lot is refused with 422 under both policies.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.settingsUpdate(request: .init(negativeStockPolicy: .reject))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettingsUpdateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">warehousesCreate</a>(request: Requests.WarehousesCreateInventoryRequest, requestOptions: RequestOptions?) -> WarehousesCreateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a warehouse. 409 when the code already exists.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.warehousesCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WarehousesCreateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">warehousesList</a>(request: Requests.WarehousesListInventoryRequest, requestOptions: RequestOptions?) -> WarehousesListInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the warehouses. Filterable and sortable: code, name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.warehousesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WarehousesListInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">warehousesUpdate</a>(request: Requests.WarehousesUpdateInventoryRequest, requestOptions: RequestOptions?) -> WarehousesUpdateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the name or the country code of a warehouse.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.warehousesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WarehousesUpdateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockReceive</a>(request: Requests.StockReceiveInventoryRequest, requestOptions: RequestOptions?) -> StockReceiveInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a manual receipt of an item into a warehouse at `unitCost` (document type `manual_receipt`); the quantity must be positive (422). A lot- or serial-tracked item needs `lotNumber` (422); an unknown lot is created, and `expiryDate` is stored on a lot that has none. A serial-tracked item is received one unit at a time (422), and 409 when that serial number is already in stock. Open shortages of the item in the warehouse (negative stock policy `allow`) are settled from the receipt. Emits `stock.changed`. Receipts against a purchase order go through `purchases/receipts/create`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockReceive(request: .init(
        warehouseId: "warehouseId",
        itemId: "itemId",
        date: CalendarDate("2026-07-01")!,
        quantity: "121.0000",
        unitCost: "121.000000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockReceiveInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockWriteOff</a>(request: Requests.StockWriteOffInventoryRequest, requestOptions: RequestOptions?) -> StockWriteOffInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Consume a quantity of an item from a warehouse, oldest layers first (from one lot when `lotNumber` is given), and post a journal entry: debit the expense account (`expenseAccountCode`, default the chart's inventory expense account), credit the stock account each consumed layer was received on (the chart's inventory account for layers without one), or `inventoryAccountCode` for the whole cost when given. 409 when the accounting period of `date` is locked; 422 when the stock is insufficient under the `reject` policy or in the named lot. Emits `stock.changed` and, when the consumption takes the available quantity from above a reorder rule's minimum to at or below it, `stock.reorder_needed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockWriteOff(request: .init(
        warehouseId: "warehouseId",
        itemId: "itemId",
        date: CalendarDate("2026-07-01")!,
        quantity: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockWriteOffInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockTransfer</a>(request: Requests.StockTransferInventoryRequest, requestOptions: RequestOptions?) -> StockTransferInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Move a quantity of an item from one warehouse to another: the source layers are consumed oldest first (from one lot when `lotNumber` is given) and received in the target with the same quantities, costs, lots and stock accounts (document type `warehouse_transfer`). 422 when both warehouses are the same or the source stock is insufficient under the `reject` policy. `inMovementId` is the first receipt when the consumption spans several lots or stock accounts. Emits `stock.changed` for both warehouses and `stock.reorder_needed` as `inventory/stock/write-off` does.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockTransfer(request: .init(
        fromWarehouseId: "fromWarehouseId",
        toWarehouseId: "toWarehouseId",
        itemId: "itemId",
        date: CalendarDate("2026-07-01")!,
        quantity: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockTransferInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockTake</a>(request: Requests.StockTakeInventoryRequest, requestOptions: RequestOptions?) -> StockTakeInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Post a stock count for a warehouse. Each line names an item by `itemId` or `barcode` with its `countedQty`; the difference to the quantity on hand in the warehouse (all lots together) is written off oldest layers first or received as a surplus at `unitCost` (the item's purchase price when omitted; 422 when neither is set), with document type `stock_take`, and a surplus of a lot- or serial-tracked item needs `lotNumber` (422). The shortage cost less the surplus cost is posted in one journal entry between the expense account (`expenseAccountCode`, default the chart's inventory expense account) and the stock accounts (`inventoryAccountCode` for everything when given, else the accounts of the consumed layers and the chart's inventory account for the surpluses); nothing is posted and `journalTransactionId` is null when the net is zero. 409 when the accounting period of `date` is locked. Emits `stock.changed` per adjusted item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockTake(request: .init(
        warehouseId: "warehouseId",
        date: CalendarDate("2026-07-01")!,
        lines: [
            StockTakeInventoryRequestLinesItem(
                countedQty: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockTakeInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockLevels</a>(request: Requests.StockLevelsInventoryRequest, requestOptions: RequestOptions?) -> StockLevelsInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the quantity and value on hand per item and warehouse, summed from the stock movements, optionally for one `warehouseId` and/or `itemId`. Rows with a zero quantity are left out.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockLevels(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockLevelsInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">stockMovementsList</a>(request: Requests.StockMovementsListInventoryRequest, requestOptions: RequestOptions?) -> StockMovementsListInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the stock movements. Filterable: itemId, warehouseId, lotId, direction, documentType, date, quantity, totalCost. Sortable: date, createdAt, quantity, totalCost; default newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.stockMovementsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockMovementsListInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">lotsList</a>(request: Requests.LotsListInventoryRequest, requestOptions: RequestOptions?) -> LotsListInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the lots with their quantity on hand (the remaining quantity of the lot's incoming movements). Filterable: itemId, lotNumber, expiryDate. Sortable: lotNumber, expiryDate, createdAt; default newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.lotsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LotsListInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">lotsGet</a>(request: Requests.LotsGetInventoryRequest, requestOptions: RequestOptions?) -> LotsGetInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a lot with its quantity on hand and its movements in date order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.lotsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LotsGetInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">lotsUpdate</a>(request: Requests.LotsUpdateInventoryRequest, requestOptions: RequestOptions?) -> LotsUpdateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the expiry date or the notes of a lot; null clears the value.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.lotsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LotsUpdateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">landedCostsCreate</a>(request: Requests.LandedCostsCreateInventoryRequest, requestOptions: RequestOptions?) -> LandedCostsCreateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Allocate an extra cost `amount` (positive, whole cents; 422 otherwise) over incoming stock movements, named by `movementIds` or taken from the lines of a goods receipt (`goodsReceiptId`; 422 when the receipt has no stock movements), in proportion to their cost (`by_value`) or quantity (`by_quantity`), largest remainder to the cent. The part of each share that belongs to the quantity still on hand raises the movement's remaining cost and recomputes its unit cost; the part that belongs to quantity already consumed is posted in a journal entry dated `date` debiting `inventory.cogs` and crediting the movement's stock account (`inventory.stock` when it has none), 409 when that period is locked. 422 when a movement is not incoming or the weights sum to zero. `sourceInvoiceId` records the purchase invoice the cost came from. Goods receipts come from `purchases/receipts/create`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.landedCostsCreate(request: .init(
        date: CalendarDate("2026-07-01")!,
        amount: "121.000000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LandedCostsCreateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">landedCostsGet</a>(request: Requests.LandedCostsGetInventoryRequest, requestOptions: RequestOptions?) -> LandedCostsGetInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a landed cost with its allocation lines and the journal transaction it posted, if any.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.landedCostsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LandedCostsGetInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">landedCostsList</a>(request: Requests.LandedCostsListInventoryRequest, requestOptions: RequestOptions?) -> LandedCostsListInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the landed costs without their lines. Filterable: date, method, goodsReceiptId, sourceInvoiceId. Sortable: date, createdAt, amount; default newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.landedCostsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LandedCostsListInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">reorderRulesCreate</a>(request: Requests.ReorderRulesCreateInventoryRequest, requestOptions: RequestOptions?) -> ReorderRulesCreateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a reorder rule for an item, for one warehouse or, without `warehouseId`, for the item over all warehouses; one rule per item and warehouse (409). While the rule is active, an outgoing movement or a reservation that takes the available quantity (on hand less reserved) from above `minQty` to at or below it emits `stock.reorder_needed` with the `reorderQty`. `inventory/reorder-rules/check` lists the rules currently at or below their minimum.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.reorderRulesCreate(request: .init(
        itemId: "itemId",
        minQty: "121.0000"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReorderRulesCreateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">reorderRulesUpdate</a>(request: Requests.ReorderRulesUpdateInventoryRequest, requestOptions: RequestOptions?) -> ReorderRulesUpdateInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the minimum quantity, the reorder quantity (null clears it), the active flag or the notes of a reorder rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.reorderRulesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReorderRulesUpdateInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">reorderRulesDelete</a>(request: Requests.ReorderRulesDeleteInventoryRequest, requestOptions: RequestOptions?) -> ReorderRulesDeleteInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a reorder rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.reorderRulesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReorderRulesDeleteInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">reorderRulesList</a>(request: Requests.ReorderRulesListInventoryRequest, requestOptions: RequestOptions?) -> ReorderRulesListInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the reorder rules. Filterable: itemId, warehouseId, isActive. Sortable: createdAt, minQty; default newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.reorderRulesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReorderRulesListInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.inventory.<a href="/Sources/Resources/Inventory/InventoryClient.swift">reorderRulesCheck</a>(request: Requests.ReorderRulesCheckInventoryRequest, requestOptions: RequestOptions?) -> ReorderRulesCheckInventoryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the active reorder rules whose available quantity (on hand less reserved, in the rule's warehouse or over all warehouses) is at or below `minQty`, with the quantities. Emits no event.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.inventory.reorderRulesCheck(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReorderRulesCheckInventoryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## production
<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">workCentersCreate</a>(request: Requests.WorkCentersCreateProductionRequest, requestOptions: RequestOptions?) -> WorkCentersCreateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a work center with its `costPerHour`. `costAccountCode` must be a postable account of the chart (422 otherwise); when a production order completes, the labor cost of the operations run on this center is credited to it instead of the `production.laborApplied` posting rule account. A duplicate `code` is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.workCentersCreate(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WorkCentersCreateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">workCentersUpdate</a>(request: Requests.WorkCentersUpdateProductionRequest, requestOptions: RequestOptions?) -> WorkCentersUpdateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a work center; only the fields sent are changed. `costAccountCode` must be a postable account of the chart (422 otherwise); a `code` already used by another work center is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.workCentersUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WorkCentersUpdateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">workCentersList</a>(request: Requests.WorkCentersListProductionRequest, requestOptions: RequestOptions?) -> WorkCentersListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List work centers. `nextMaintenanceDate` is the latest completed maintenance date (the creation date when there is none) plus `maintenanceIntervalDays`, null without an interval. Filterable by `code`, `name` and `isActive`; sortable by `code`, `name` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.workCentersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WorkCentersListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">routingsCreate</a>(request: Requests.RoutingsCreateProductionRequest, requestOptions: RequestOptions?) -> RoutingsCreateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a routing with its operations: `sequence`, work center, `setupMinutes`, `runMinutesPerUnit` and an optional `qualityCheckName` that becomes a pending quality check on every production order using the routing. Operation sequences must be unique (422); a duplicate `code` is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.routingsCreate(request: .init(
        code: "code",
        name: "name",
        operations: [
            RoutingsCreateProductionRequestOperationsItem(
                sequence: 1000000,
                name: "name",
                workCenterId: "workCenterId"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoutingsCreateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">routingsGet</a>(request: Requests.RoutingsGetProductionRequest, requestOptions: RequestOptions?) -> RoutingsGetProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one routing with its operations in sequence order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.routingsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoutingsGetProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">routingsList</a>(request: Requests.RoutingsListProductionRequest, requestOptions: RequestOptions?) -> RoutingsListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List routings without their operations. Filterable by `code`, `name` and `isActive`; sortable by `code`, `name` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.routingsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RoutingsListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">maintenanceCreate</a>(request: Requests.MaintenanceCreateProductionRequest, requestOptions: RequestOptions?) -> MaintenanceCreateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a `preventive` or `corrective` maintenance planned for a work center on `plannedDate`; it starts as `planned`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.maintenanceCreate(request: .init(
        workCenterId: "workCenterId",
        type: .preventive,
        plannedDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MaintenanceCreateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">maintenanceComplete</a>(request: Requests.MaintenanceCompleteProductionRequest, requestOptions: RequestOptions?) -> MaintenanceCompleteProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a `planned` maintenance as completed on `completedDate`, with optional `downtimeHours` and `cost` (409 when it is already completed or cancelled). The work center's `nextMaintenanceDate` is then counted from the latest completed maintenance date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.maintenanceComplete(request: .init(
        id: "id",
        completedDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MaintenanceCompleteProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">maintenanceCancel</a>(request: Requests.MaintenanceCancelProductionRequest, requestOptions: RequestOptions?) -> MaintenanceCancelProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a `planned` maintenance (409 when it is already completed or cancelled).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.maintenanceCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MaintenanceCancelProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">maintenanceList</a>(request: Requests.MaintenanceListProductionRequest, requestOptions: RequestOptions?) -> MaintenanceListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List maintenance records. Filterable by `workCenterId`, `status` and `type`; sortable by `plannedDate` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.maintenanceList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MaintenanceListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">bomsCreate</a>(request: Requests.BomsCreateProductionRequest, requestOptions: RequestOptions?) -> BomsCreateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a bill of materials for a finished item. `outputQuantity` is the finished quantity made per unit of order quantity; each line's `quantity` is the component consumed per unit of order quantity, increased by its `scrapPercent` at completion; `routingId` is the default routing of assembly orders. A BOM that consumes its own finished item is refused with 422, a duplicate `code` with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.bomsCreate(request: .init(
        code: "code",
        name: "name",
        finishedItemId: "finishedItemId",
        lines: [
            BomsCreateProductionRequestLinesItem(
                componentItemId: "componentItemId",
                quantity: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BomsCreateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">bomsGet</a>(request: Requests.BomsGetProductionRequest, requestOptions: RequestOptions?) -> BomsGetProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one bill of materials with its component lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.bomsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BomsGetProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">bomsList</a>(request: Requests.BomsListProductionRequest, requestOptions: RequestOptions?) -> BomsListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List bills of materials without their lines. Filterable by `code`, `name`, `finishedItemId` and `isActive`; sortable by `code` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.bomsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BomsListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">ordersCreate</a>(request: Requests.OrdersCreateProductionRequest, requestOptions: RequestOptions?) -> OrdersCreateProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft production order for `quantity` units of a BOM in a warehouse; stock moves only at `production/orders/complete`. An `assembly` order takes its routing from `routingId`, else from the BOM, and copies the routing's operations onto the order (`plannedMinutes` = setup minutes + run minutes per unit × finished quantity, priced at the work center's current `costPerHour`) with a pending quality check for every operation that names one. A `routingId` on a `disassembly` order, an inactive routing or a routing without operations is refused with 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.ordersCreate(request: .init(
        bomId: "bomId",
        warehouseId: "warehouseId",
        quantity: "121.0000",
        date: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCreateProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">ordersRecordOperation</a>(request: Requests.OrdersRecordOperationProductionRequest, requestOptions: RequestOptions?) -> OrdersRecordOperationProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record the `actualMinutes` spent on one operation of a draft production order; at completion the actual minutes, else the planned ones, price the operation's labor cost. Refused with 409 once the order is completed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.ordersRecordOperation(request: .init(
        id: "id",
        actualMinutes: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersRecordOperationProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">qualityChecksAdd</a>(request: Requests.QualityChecksAddProductionRequest, requestOptions: RequestOptions?) -> QualityChecksAddProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a pending quality check to a draft production order (409 once the order is completed). The order cannot complete while a check is pending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.qualityChecksAdd(request: .init(
        orderId: "orderId",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.QualityChecksAddProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">qualityChecksRecord</a>(request: Requests.QualityChecksRecordProductionRequest, requestOptions: RequestOptions?) -> QualityChecksRecordProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record the result of a quality check as `passed` or `failed`, with the time and the actor (409 once the order is completed). Only a `pending` check blocks `production/orders/complete`; a `failed` one does not.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.qualityChecksRecord(request: .init(
        id: "id",
        result: .passed
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.QualityChecksRecordProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">qualityChecksList</a>(request: Requests.QualityChecksListProductionRequest, requestOptions: RequestOptions?) -> QualityChecksListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List quality checks. Filterable by `orderId`, `result` and `name`; sortable by `createdAt` and `name`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.qualityChecksList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.QualityChecksListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">ordersComplete</a>(request: Requests.OrdersCompleteProductionRequest, requestOptions: RequestOptions?) -> OrdersCompleteProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Complete a draft production order on the order's date. An `assembly` consumes the components FIFO from the warehouse (line quantity × order quantity, increased by `scrapPercent`), prices each operation at its actual or planned minutes × `costPerHour`, receives the finished item at material cost + labor cost less the share of `scrappedQuantity`, and, when there is labor, scrap or a component stock account other than the finished one, posts a journal entry debiting the finished stock account (and the `production.scrap` rule account for the scrapped share) and crediting the component stock accounts and the work centers' cost accounts (or the `production.laborApplied` rule account); a `disassembly` consumes the finished item and receives the components at its cost shared by quantity. `componentsAccountCode` and `finishedAccountCode` default to the chart's production accounts. Refused with 409 when the order is already completed, a quality check is still pending or the accounting period is locked, and with 422 when the BOM has no lines, `scrappedQuantity` is given on a disassembly or exceeds the finished quantity, the assembly cost is zero, stock is insufficient, a received item needs lot or serial tracking, or a posting account is missing. Emits `stock.changed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.ordersComplete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCompleteProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">ordersGet</a>(request: Requests.OrdersGetProductionRequest, requestOptions: RequestOptions?) -> OrdersGetProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one production order with its operations and quality checks.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.ordersGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersGetProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.production.<a href="/Sources/Resources/Production/ProductionClient.swift">ordersList</a>(request: Requests.OrdersListProductionRequest, requestOptions: RequestOptions?) -> OrdersListProductionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List production orders without operations and quality checks. Filterable by `bomId`, `warehouseId`, `status` and `type`; sortable by `date` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.production.ordersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersListProductionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ecommerce
<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersCreate</a>(request: Requests.OrdersCreateEcommerceRequest, requestOptions: RequestOptions?) -> OrdersCreateEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a sales order from an online channel in status `new`. The customer is `partnerId` or `partner` details: with an `email` the existing partner with that e-mail is reused, otherwise a new partner is created; without either the call is refused with 422. `currency` defaults to the company's invoice currency, and `shipToCountryCode` and `marketplace` are kept for the VAT treatment of the invoice at fulfilment. A second order with the same `channel` and `externalRef` is refused with 409. Emits `sales_order.created`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersCreate(request: .init(lines: [
        OrdersCreateEcommerceRequestLinesItem(
            description: "description",
            quantity: "121.0000",
            unitPriceExclVat: "121.0000"
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCreateEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersGet</a>(request: Requests.OrdersGetEcommerceRequest, requestOptions: RequestOptions?) -> OrdersGetEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one sales order with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersGetEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersList</a>(request: Requests.OrdersListEcommerceRequest, requestOptions: RequestOptions?) -> OrdersListEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List sales orders without their lines. Filterable by `channel`, `externalRef`, `partnerId` and `status`; sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersListEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersReserve</a>(request: Requests.OrdersReserveEcommerceRequest, requestOptions: RequestOptions?) -> OrdersReserveEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reserve stock for a `new` order in `warehouseId` (default: the order's warehouse; 422 when neither is set). Each product line, and each product component of a set line, is checked against the warehouse's on-hand quantity less the existing reservations; when any item is short the call is refused with 422 and nothing is reserved. Otherwise a reservation is written per stock line, `stock.changed` (change type `reserve`) is emitted for each, and the order becomes `reserved`. An order in another status is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersReserve(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersReserveEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersFulfill</a>(request: Requests.OrdersFulfillEcommerceRequest, requestOptions: RequestOptions?) -> OrdersFulfillEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fulfil a `new` or `reserved` order: its reservations are released, the stock lines are consumed FIFO from the order's warehouse on `date` (default: the company's today), the cost of goods sold is posted as a journal entry debiting `cogsAccountCode` and crediting the stock accounts of the consumed layers (`inventoryAccountCode` when a layer has none), and a draft sale invoice for the order lines is created and linked as `invoiceId`, ready for `sales/invoices/issue`. With a `shipToCountryCode` on the order the invoice's VAT scheme is resolved for goods shipped there, as a marketplace sale when `marketplace` is set. Account codes default to the company's chart. Refused with 422 when the stock lines have no warehouse or stock is insufficient (unless the company allows negative stock), with 409 when the accounting period is locked or the order is already `fulfilled` or `cancelled`. Emits `sales_order.fulfilled` and `stock.changed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersFulfill(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersFulfillEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">ordersCancel</a>(request: Requests.OrdersCancelEcommerceRequest, requestOptions: RequestOptions?) -> OrdersCancelEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel an order that is not fulfilled: its stock reservations are released, `stock.changed` (change type `release`) is emitted for each, and the status becomes `cancelled`. A fulfilled order is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.ordersCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCancelEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">productsList</a>(request: Requests.ProductsListEcommerceRequest, requestOptions: RequestOptions?) -> ProductsListEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's items as a shop catalogue, in order of last update, with price and stock. `price` is the item's price in `priceListId` when given, else its own sale price, and `currency` that of the price list, else the company's invoice currency; `vatRatePercent` falls back to the rate of the item's VAT classifier. For a product `onHand`, `reserved` and `available` are summed over all warehouses or over `warehouseId` only; for a set `available` is the number of sets its product components can still make; for a service they are null. With `updatedSince` only items changed after that time are returned, deleted ones included (`deleted: true`), so a shop can sync incrementally; without it only live items are listed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.productsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ProductsListEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/Sources/Resources/Ecommerce/EcommerceClient.swift">stockList</a>(request: Requests.StockListEcommerceRequest, requestOptions: RequestOptions?) -> StockListEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stock position per item and warehouse: `onHand`, `reserved` and their difference `available`, for all warehouses or `warehouseId` only. Only items with a positive quantity on hand are returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.ecommerce.stockList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockListEcommerceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## cash
<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">ordersCreate</a>(request: Requests.OrdersCreateCashRequest, requestOptions: RequestOptions?) -> OrdersCreateCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a numbered cash receipt (series `KPO`) or cash disbursement (`KIO`) and posts it in the base currency between the cash account (`cashAccountCode`, default the cash account of the company's chart) and `counterAccountCode`; a receipt debits the cash account, a disbursement credits it. Linked to an invoice - `saleInvoiceId` for a receipt against an issued invoice or advance invoice or a disbursement against an issued credit note, `purchaseInvoiceId` for a disbursement against a registered purchase invoice - the counter account is the receivable or payable account of the posting rules, the invoice's paid amount and payment status (`partial` or `paid`) are updated, and `sale_invoice.paid` or `purchase_invoice.paid` is emitted when the invoice becomes fully paid. Answers 422 when both invoice ids are given, a receipt names a purchase invoice, `counterAccountCode` differs from the invoice's account, or the invoice is in another currency or belongs to another partner; 409 when `amount` exceeds the invoice's remaining amount or the accounting period of `date` is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.ordersCreate(request: .init(
        type: .receipt,
        date: CalendarDate("2026-07-01")!,
        amount: "121.0000",
        purpose: "purpose"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCreateCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">ordersGet</a>(request: Requests.OrdersGetCashRequest, requestOptions: RequestOptions?) -> OrdersGetCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one cash order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.ordersGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersGetCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">ordersList</a>(request: Requests.OrdersListCashRequest, requestOptions: RequestOptions?) -> OrdersListCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists cash orders. Filterable by `type`, `date`, `partnerId`, `employeeId`, `fullNumber` and `amount`; sortable by `date`, `fullNumber`, `createdAt` and `amount`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.ordersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersListCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">balance</a>(request: Requests.BalanceCashRequest, requestOptions: RequestOptions?) -> BalanceCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the balance of a cash account (default: the cash account of the company's chart) from the posted journal entries, up to and including `asOf` when given.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.balance(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BalanceCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">expenseReportsCreate</a>(request: Requests.ExpenseReportsCreateCashRequest, requestOptions: RequestOptions?) -> ExpenseReportsCreateCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a numbered expense report (series `AA`) for the employee and posts it: each line's net amount is debited to its `accountCode` and the VAT total to the input VAT account of the posting rules (`purchases.vatReceivable`), or the gross amount to the line account when the company is not a VAT payer, and the total is credited to the cash advances account (`cash.advances`), which settles the employee's advance balance shown by `cash/advance-holders/balances`. Answers 422 when the total is zero or a line account is missing from the chart or not postable, and 409 when the accounting period of `date` is locked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.expenseReportsCreate(request: .init(
        employeeId: "employeeId",
        date: CalendarDate("2026-07-01")!,
        lines: [
            ExpenseReportsCreateCashRequestLinesItem(
                description: "description",
                accountCode: "accountCode",
                netAmount: "121.00"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExpenseReportsCreateCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">expenseReportsGet</a>(request: Requests.ExpenseReportsGetCashRequest, requestOptions: RequestOptions?) -> ExpenseReportsGetCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one expense report with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.expenseReportsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExpenseReportsGetCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">expenseReportsList</a>(request: Requests.ExpenseReportsListCashRequest, requestOptions: RequestOptions?) -> ExpenseReportsListCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expense reports without their lines. Filterable by `employeeId` and `date`; sortable by `date` and `number`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.expenseReportsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExpenseReportsListCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cash.<a href="/Sources/Resources/Cash/CashClient.swift">advanceHoldersBalances</a>(request: Requests.AdvanceHoldersBalancesCashRequest, requestOptions: RequestOptions?) -> AdvanceHoldersBalancesCashResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns, per employee, the cash advances issued to them (disbursements posted to the `cash.advances` account with the employee set), the amounts returned (receipts on the same account), the total settled by expense reports and the open balance (issued less returned less settled).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.cash.advanceHoldersBalances(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AdvanceHoldersBalancesCashRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## projects
<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">create</a>(request: Requests.CreateProjectsRequest, requestOptions: RequestOptions?) -> CreateProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a project; `partnerId` is the customer that `projects/time-entries/bill` invoices by default. A duplicate `code` is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.create(request: .init(
        code: "code",
        name: "name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">update</a>(request: Requests.UpdateProjectsRequest, requestOptions: RequestOptions?) -> UpdateProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a project's name, customer, `status` (`active`, `completed`, `archived`) or notes; only the fields sent are changed. An archived project accepts no new time entries.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.update(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">get</a>(request: Requests.GetProjectsRequest, requestOptions: RequestOptions?) -> GetProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one project.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">list</a>(request: Requests.ListProjectsRequest, requestOptions: RequestOptions?) -> ListProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List projects. Filterable by `code`, `name`, `status` and `partnerId`; sortable by `code`, `name` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">timeEntriesCreate</a>(request: Requests.TimeEntriesCreateProjectsRequest, requestOptions: RequestOptions?) -> TimeEntriesCreateProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record hours worked on a project on a date, optionally for an employee and with the `hourlyRate` used when billing. `hours` must be positive (422); an archived project is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.timeEntriesCreate(request: .init(
        projectId: "projectId",
        date: CalendarDate("2026-07-01")!,
        hours: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimeEntriesCreateProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">timeEntriesUpdate</a>(request: Requests.TimeEntriesUpdateProjectsRequest, requestOptions: RequestOptions?) -> TimeEntriesUpdateProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a time entry; only the fields sent are changed. `hours` must be positive (422); an entry already billed to an invoice cannot be changed (409).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.timeEntriesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimeEntriesUpdateProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">timeEntriesDelete</a>(request: Requests.TimeEntriesDeleteProjectsRequest, requestOptions: RequestOptions?) -> TimeEntriesDeleteProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a time entry (409 once it is billed).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.timeEntriesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimeEntriesDeleteProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">timeEntriesList</a>(request: Requests.TimeEntriesListProjectsRequest, requestOptions: RequestOptions?) -> TimeEntriesListProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List time entries. Filterable by `projectId`, `employeeId`, `billable`, `billedInvoiceId` and `date`; sortable by `date`, `createdAt` and `hours`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.timeEntriesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimeEntriesListProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">timeEntriesBill</a>(request: Requests.TimeEntriesBillProjectsRequest, requestOptions: RequestOptions?) -> TimeEntriesBillProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft sale invoice from the project's unbilled billable time entries, optionally limited to `dateFrom` and `dateTo`, and mark them billed; needs the `sales:write` scope, and the invoice is issued with `sales/invoices/issue`. The customer is `partnerId`, else the project's partner (422 without either); each entry is priced at its own `hourlyRate`, else the call's `hourlyRate` (422 when an entry has neither); `groupBy` `rate` makes one line per rate with the summed hours, `entry` one line per entry; `itemId`, `vatRatePercent` and `vatClassifierCode` go onto every line. No matching entries is 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.timeEntriesBill(request: .init(projectId: "projectId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TimeEntriesBillProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.projects.<a href="/Sources/Resources/Projects/ProjectsClient.swift">report</a>(request: Requests.ReportProjectsRequest, requestOptions: RequestOptions?) -> ReportProjectsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Profitability per project: `revenue` and `costs` from posted journal entries tagged with the project (income accounts credit less debit, expense accounts debit less credit), `profit` as their difference, and the hours from time entries (total, billable, billed, unbilled, and the unbilled amount at the entries' hourly rates). `projectId` limits the report to one project; `dateFrom` and `dateTo` limit the journal dates and the entry dates. Nothing is changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.projects.report(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReportProjectsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## transport
<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsCreate</a>(request: Requests.WaybillsCreateTransportRequest, requestOptions: RequestOptions?) -> WaybillsCreateTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft waybill to the consignee. The cargo lines are `lines` or, when none are given and `saleInvoiceId` is set, the product lines of that sale invoice (422 when it has none); a line without `description`, `unit` or `productCode` takes them from its item. `documentDate` defaults to the company's today and `series` to `VAZ`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsCreate(request: .init(
        consigneePartnerId: "consigneePartnerId",
        dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        loadAddress: "loadAddress",
        unloadAddress: "unloadAddress"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsCreateTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsUpdate</a>(request: Requests.WaybillsUpdateTransportRequest, requestOptions: RequestOptions?) -> WaybillsUpdateTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a draft waybill; omitted fields keep their value, the optional ones can be cleared with null, and `lines`, when given, replace all existing lines. A waybill that is already issued or cancelled is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsUpdateTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsIssue</a>(request: Requests.WaybillsIssueTransportRequest, requestOptions: RequestOptions?) -> WaybillsIssueTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a draft waybill: it takes the next number of its `series` for the year of `documentDate` and becomes `issued`. Without a vehicle plate or without lines the call is refused with 422, a waybill that is not a draft with 409. Only issued waybills can go into the Lithuanian i.VAZ file (`declarations/lt/ivaz/generate`) and the Romanian e-Transport declaration (`declarations/ro/etransport/build`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsIssue(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsIssueTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsCancel</a>(request: Requests.WaybillsCancelTransportRequest, requestOptions: RequestOptions?) -> WaybillsCancelTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a draft or issued waybill. An already cancelled one is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsCancelTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsGet</a>(request: Requests.WaybillsGetTransportRequest, requestOptions: RequestOptions?) -> WaybillsGetTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one waybill with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsGetTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transport.<a href="/Sources/Resources/Transport/TransportClient.swift">waybillsList</a>(request: Requests.WaybillsListTransportRequest, requestOptions: RequestOptions?) -> WaybillsListTransportResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List waybills with the consignee's name. Filterable by `status`, `consigneePartnerId`, `documentDate`, `fullNumber` and `dispatchAt`; sortable by `createdAt`, `dispatchAt` and `fullNumber`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.transport.waybillsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WaybillsListTransportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## pos
<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">devicesCreate</a>(request: Requests.DevicesCreatePosRequest, requestOptions: RequestOptions?) -> DevicesCreatePosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a cash register (POS device). The serial number must be unique in the company; a repeat is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.devicesCreate(request: .init(
        name: "name",
        serialNumber: "serialNumber"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesCreatePosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">devicesUpdate</a>(request: Requests.DevicesUpdatePosRequest, requestOptions: RequestOptions?) -> DevicesUpdatePosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a POS device's details or set `isActive`; an inactive device accepts no new shifts or reports. A serial number already used by another device is refused with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.devicesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesUpdatePosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">devicesList</a>(request: Requests.DevicesListPosRequest, requestOptions: RequestOptions?) -> DevicesListPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List POS devices. Filterable by `name` and `serialNumber`; sortable by `name`, `serialNumber` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.devicesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesListPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">reportsCreate</a>(request: Requests.ReportsCreatePosRequest, requestOptions: RequestOptions?) -> ReportsCreatePosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a daily cash register report (Z-report) and post it to the ledger in one journal entry: the cash and card takings are debited to `cashAccountCode` and `cardAccountCode`, the net of the `vatLines` is credited to `revenueAccountCode` and their VAT to `vatAccountCode`. `itemLines` write the sold products off `warehouseId` FIFO (a set is expanded to its product components) and add the cost of goods sold, debited to `cogsAccountCode` against the stock accounts. Account codes default to the company's chart. Refused with 422 when cash plus card differs from the gross total, the item lines have no warehouse or the device is inactive, with 409 when the accounting period is locked or the `reportNumber` already exists. Emits `pos_report.created` and, per item line, `stock.changed`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.reportsCreate(request: .init(
        reportNumber: "reportNumber",
        date: CalendarDate("2026-07-01")!,
        vatLines: [
            ReportsCreatePosRequestVatLinesItem(
                vatRatePercent: "121.00",
                netAmount: "121.0000",
                vatAmount: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReportsCreatePosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">reportsGet</a>(request: Requests.ReportsGetPosRequest, requestOptions: RequestOptions?) -> ReportsGetPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one POS report with its VAT lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.reportsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReportsGetPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">reportsList</a>(request: Requests.ReportsListPosRequest, requestOptions: RequestOptions?) -> ReportsListPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List POS reports without their VAT lines. Filterable by `date`, `reportNumber` and `deviceId`; sortable by `date`, `reportNumber` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.reportsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReportsListPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">shiftsOpen</a>(request: Requests.ShiftsOpenPosRequest, requestOptions: RequestOptions?) -> ShiftsOpenPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a shift on a POS device with the cash float `openingCash`. A device has at most one open shift (409 for a second); an inactive device is refused with 422. Give `warehouseId` when the shift will sell stock items; they are written off that warehouse when the shift is closed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.shiftsOpen(request: .init(deviceId: "deviceId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShiftsOpenPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">shiftsGet</a>(request: Requests.ShiftsGetPosRequest, requestOptions: RequestOptions?) -> ShiftsGetPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one POS shift.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.shiftsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShiftsGetPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">shiftsList</a>(request: Requests.ShiftsListPosRequest, requestOptions: RequestOptions?) -> ShiftsListPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List POS shifts. Filterable by `deviceId` and `status`; sortable by `openedAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.shiftsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShiftsListPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">receiptsCreate</a>(request: Requests.ReceiptsCreatePosRequest, requestOptions: RequestOptions?) -> ReceiptsCreatePosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a receipt in an open shift, numbered per shift from 1. Each line's net, VAT and gross come from its VAT-inclusive unit price; a line without `description` takes its item's name. Refused with 422 when cash plus card differs from the receipt total or a stock item is sold in a shift opened without a warehouse, with 409 when the shift is closed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.receiptsCreate(request: .init(
        shiftId: "shiftId",
        lines: [
            ReceiptsCreatePosRequestLinesItem(
                quantity: "121.0000",
                unitPriceInclVat: "121.0000",
                vatRatePercent: "121.00"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsCreatePosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">receiptsList</a>(request: Requests.ReceiptsListPosRequest, requestOptions: RequestOptions?) -> ReceiptsListPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List receipts without their lines. Filterable by `shiftId`; sortable by `number` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.receiptsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsListPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">receiptsGet</a>(request: Requests.ReceiptsGetPosRequest, requestOptions: RequestOptions?) -> ReceiptsGetPosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one receipt with its lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.receiptsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReceiptsGetPosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.pos.<a href="/Sources/Resources/Pos/PosClient.swift">shiftsClose</a>(request: Requests.ShiftsClosePosRequest, requestOptions: RequestOptions?) -> ShiftsClosePosResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Close an open shift: its receipts are summed by VAT rate and by product into one POS report, created as by `pos/reports/create` with number `reportNumber` (default `Z-<device serial>-<n>`, n being the device's closed shifts plus one) on `date` (default: the company's today), which posts the takings and the stock write-off to the ledger and emits `pos_report.created`. The response adds `expectedCash` (opening cash plus the cash receipts) and `cashDifference` (`countedCash` less expected). A shift without receipts is refused with 422, a closed one with 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.pos.shiftsClose(request: .init(
        id: "id",
        countedCash: "121.00"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShiftsClosePosRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## calendar
<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">list</a>(request: Requests.ListCalendarRequest, requestOptions: RequestOptions?) -> ListCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists, in due-date order, the filing deadlines Nordlet derives for the company from its country and profile together with the company's own events, between `from` and `to` (default 45 days back to 120 days ahead of the company's current date). Each deadline carries its submissions, whether it can be filed with `calendar/submit`, amended, or built with `calendar/download`, and whether its automation is on; `includeDone: false` leaves out the rows that are completed, submitted or accepted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">get</a>(request: Requests.GetCalendarRequest, requestOptions: RequestOptions?) -> GetCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reads one calendar row by `key`: the id of a company event, or `ruleKey:period` for a filing deadline with its submissions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.get(request: .init(key: "key"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">submit</a>(request: Requests.SubmitCalendarRequest, requestOptions: RequestOptions?) -> SubmitCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

With amend: true the return is filed again as a correction of the one already submitted or accepted for the period; only returns whose format has a correction mark accept it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.submit(request: .init(key: "key"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubmitCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">download</a>(request: Requests.DownloadCalendarRequest, requestOptions: RequestOptions?) -> DownloadCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the file of a deadline whose format Nordlet produces but whose administration takes it only through the company's own account or program. Nothing is sent and no filing is recorded.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.download(request: .init(key: "key"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DownloadCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">create</a>(request: Requests.CreateCalendarRequest, requestOptions: RequestOptions?) -> CreateCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a company event (kind `custom`) with a title, a due date, notes and a done flag.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.create(request: .init(
        title: "title",
        dueDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">update</a>(request: Requests.UpdateCalendarRequest, requestOptions: RequestOptions?) -> UpdateCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes a calendar row by `key`. A company event takes a new title, due date, notes or done flag; a filing deadline (`ruleKey:period`) takes only notes and done, keeps its own title and date, and gets a stored row the first time it is annotated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.update(request: .init(key: "key"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.calendar.<a href="/Sources/Resources/Calendar/CalendarClient.swift">delete</a>(request: Requests.DeleteCalendarRequest, requestOptions: RequestOptions?) -> DeleteCalendarResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a company event by its id, or the stored notes and done mark of a filing deadline by `ruleKey:period`; the deadline itself still comes from the rules.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.calendar.delete(request: .init(key: "key"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteCalendarRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## audit
<details><summary><code>client.audit.<a href="/Sources/Resources/Audit/AuditClient.swift">list</a>(request: Requests.ListAuditRequest, requestOptions: RequestOptions?) -> ListAuditResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the audit log of the company: who did what to which entity, with the recorded change in `diff`. Filterable by `action`, `entity`, `entityId`, `actorType` and `actorId`; sortable by `createdAt` and `id`, newest first by default.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.audit.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListAuditRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## webhooks
<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">subscriptionsCreate</a>(request: Requests.SubscriptionsCreateWebhooksRequest, requestOptions: RequestOptions?) -> SubscriptionsCreateWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a webhook endpoint for the given event types (`*` for every event). The URL must be an https address that resolves to a public network (422 otherwise). The signing secret is generated unless `secret` is given, and this call is the only one that returns it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.subscriptionsCreate(request: .init(
        url: "url",
        events: [
            .agreementInvoiceGenerated
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubscriptionsCreateWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">subscriptionsList</a>(request: Requests.SubscriptionsListWebhooksRequest, requestOptions: RequestOptions?) -> SubscriptionsListWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's webhook subscriptions with their last delivery state. Filterable by `url` and `isActive`; sortable by `createdAt` and `url`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.subscriptionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubscriptionsListWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">subscriptionsUpdate</a>(request: Requests.SubscriptionsUpdateWebhooksRequest, requestOptions: RequestOptions?) -> SubscriptionsUpdateWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the URL, event types or `isActive` flag of a subscription; at least one field is required (400) and a new URL must be an https address that resolves to a public network (422). Setting `isActive` to true also clears `pausedAt` and `consecutiveFailures`, which is how a subscription paused after 5 failed deliveries in a row is switched back on.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.subscriptionsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubscriptionsUpdateWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">subscriptionsDelete</a>(request: Requests.SubscriptionsDeleteWebhooksRequest, requestOptions: RequestOptions?) -> SubscriptionsDeleteWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a webhook subscription.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.subscriptionsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubscriptionsDeleteWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">deliveriesList</a>(request: Requests.DeliveriesListWebhooksRequest, requestOptions: RequestOptions?) -> DeliveriesListWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's webhook deliveries, newest first. Filterable by `status`, `eventType` and `subscriptionId`; sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.deliveriesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeliveriesListWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/Sources/Resources/Webhooks/WebhooksClient.swift">deliveriesRedeliver</a>(request: Requests.DeliveriesRedeliverWebhooksRequest, requestOptions: RequestOptions?) -> DeliveriesRedeliverWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a delivery again now: its status goes back to `pending` with the attempt count and last error cleared. Answers 409 when the subscription is inactive.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.webhooks.deliveriesRedeliver(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeliveriesRedeliverWebhooksRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## bank
<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">accountsCreate</a>(request: Requests.AccountsCreateBankRequest, requestOptions: RequestOptions?) -> AccountsCreateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a bank, Stripe or broker account. `currency` defaults to the company base currency and `accountCode` to the default bank account of the chart of accounts. A `documentRef` also creates a bank agreement with that document attached. A Stripe account with an `iban` is refused with 422; an account with the same IBAN already existing answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.accountsCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsCreateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">accountsList</a>(request: Requests.AccountsListBankRequest, requestOptions: RequestOptions?) -> AccountsListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the bank accounts of the company. Filterable by name, type, iban and isActive; sortable by name and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.accountsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">accountsUpdate</a>(request: Requests.AccountsUpdateBankRequest, requestOptions: RequestOptions?) -> AccountsUpdateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the name, type, IBAN, ledger account code or active flag of a bank account. Setting type to stripe clears the IBAN, and sending an `iban` together with it is refused with 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.accountsUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountsUpdateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsImport</a>(request: Requests.TransactionsImportBankRequest, requestOptions: RequestOptions?) -> TransactionsImportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Insert statement lines (up to 1000 per call) into a bank account as new transactions. A line without `currency` takes the account currency; a line in another currency is refused with 422. A line whose `externalId` is already on the account is skipped and counted in `skipped`. An incoming line that an active match rule (`bank/match-rules/create`) recognises is linked to its settlement batch.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsImport(request: .init(
        bankAccountId: "bankAccountId",
        transactions: [
            TransactionsImportBankRequestTransactionsItem(
                date: CalendarDate("2026-07-01")!,
                amount: "-121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsImportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">statementsImport</a>(request: Requests.StatementsImportBankRequest, requestOptions: RequestOptions?) -> StatementsImportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import a statement file into a bank account: camt.053 XML, MT940, a Stripe balance CSV or a Revolut Business CSV, chosen by `format` or by the type of `templateId` (an iso20022 template also takes MT940 content). Statements whose IBAN or currency differ from the account are left out; the call is refused with 422 when none remains, when a line is in another currency, when the file lacks the columns or elements the template requires or when it holds more than 50000 lines. Lines already on the account are skipped, and Stripe movements already posted through a settlement payout are skipped with a warning. With a template, the mapped fields are posted to their ledger accounts, partners are created, payments are matched to the invoices they reference, and invoices, credit notes or advance invoices are issued where the template asks for them (`invoiceMetaField`, `advanceInvoices`); `transfersCsv` posts the lender payouts and commissions of a Stripe template. Invoices issued this way are announced as `sale_invoice.issued`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.statementsImport(request: .init(
        bankAccountId: "bankAccountId",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementsImportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsList</a>(request: Requests.TransactionsListBankRequest, requestOptions: RequestOptions?) -> TransactionsListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the bank transactions of the company. Filterable by id, bankAccountId, status, matchedDocumentId, date, amount, counterpartyIban, counterpartyName and externalId; sortable by date, createdAt and amount.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsMatch</a>(request: Requests.TransactionsMatchBankRequest, requestOptions: RequestOptions?) -> TransactionsMatchBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Match one new bank transaction to a document: an issued sale invoice or advance for incoming money; an issued sale credit note, a registered purchase invoice or an approved payroll run (company currency only) for outgoing money. Posts the payment journal transaction between the bank account and the receivable, payable or net payable account, with any exchange difference on the gain or loss account, raises the paid amount of the document and sets the line to matched. `invoiceAmount` states the amount settled on an invoice in another currency; in the same currency it must equal the payment (422). Answers 409 when the line is already matched, when the amount exceeds the remaining balance of the document or when the accounting period of the line date is locked. A document that becomes fully paid is announced as `sale_invoice.paid` or `purchase_invoice.paid`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsMatch(request: .init(
        transactionId: "transactionId",
        documentType: .saleInvoice,
        documentId: "documentId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsMatchBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsMatchMany</a>(request: Requests.TransactionsMatchManyBankRequest, requestOptions: RequestOptions?) -> TransactionsMatchManyBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The documents are issued sale invoices or advances for incoming money; issued sale credit notes, registered purchase invoices or approved payroll runs for outgoing money. Each must be in the currency of the payment, each allocation must be above zero, a document may appear once and the allocations must add up to the payment (422 otherwise). One journal transaction carries the bank entry, one entry per document and any exchange difference; the line is matched as an `invoice_allocation`. Answers 409 when the line is already matched, when an allocation exceeds the remaining balance of its document or when the accounting period of the line date is locked. Each document that becomes fully paid is announced as `sale_invoice.paid` or `purchase_invoice.paid`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsMatchMany(request: .init(
        transactionId: "transactionId",
        allocations: [
            TransactionsMatchManyBankRequestAllocationsItem(
                documentType: .saleInvoice,
                documentId: "documentId",
                amount: "121.0000"
            )
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsMatchManyBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsUnmatch</a>(request: Requests.TransactionsUnmatchBankRequest, requestOptions: RequestOptions?) -> TransactionsUnmatchBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Undo a match. A payment matched to an invoice, or a line posted by an import template, gets a reversing journal transaction dated date (default: today) and the invoice paid amount and payment status are restored; a line linked to a payment-provider settlement is only unlinked. The line returns to status new.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsUnmatch(request: .init(transactionId: "transactionId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsUnmatchBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsRecord</a>(request: Requests.TransactionsRecordBankRequest, requestOptions: RequestOptions?) -> TransactionsRecordBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a payment that is on no imported statement: inserts a bank transaction on the account dated `date` (positive for a sale invoice, negative for a purchase invoice or payroll run, in the account currency) and matches it to the document with the checks, posting and `sale_invoice.paid` or `purchase_invoice.paid` event of `bank/transactions/match`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsRecord(request: .init(
        bankAccountId: "bankAccountId",
        date: CalendarDate("2026-07-01")!,
        amount: "121.0000",
        documentType: .saleInvoice,
        documentId: "documentId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsRecordBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">paymentsExport</a>(request: Requests.PaymentsExportBankRequest, requestOptions: RequestOptions?) -> PaymentsExportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build a SEPA credit transfer file (pain.001.001.03) that pays the remaining amount of each registered purchase invoice from the bank account on `executionDate` (default: today), to the partner's default bank account. The bank account needs an IBAN and every invoice must be in EUR and have a partner bank account on file (422 otherwise, see `partners/bank-accounts/create`); an invoice that is already paid answers 409. The file is returned as `xml`; nothing is posted or marked paid.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.paymentsExport(request: .init(
        bankAccountId: "bankAccountId",
        purchaseInvoiceIds: [
            "purchaseInvoiceIds"
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PaymentsExportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesCreate</a>(request: Requests.ImportTemplatesCreateBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesCreateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A template of type stripe, iso20022, revolut or bank_connection names the fields of the file or feed: a field with an `accountCode` is posted to that ledger account on import, a field with `createPartner` creates the customer, supplier or fee partner. `invoiceMetaField` is the Stripe metadata key (stripe) or the reference field (other types) by which payments are linked to invoices; with it `invoiceVatRatePercent`, `invoiceItemId` and, outside Stripe, `advanceInvoices` apply. `companyMetaField`, `lenderMetaField`, the operation types and the refund labels are for Stripe templates only. A template with the same name already existing answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesCreate(request: .init(
        name: "name",
        type: .stripe
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesCreateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesUpdate</a>(request: Requests.ImportTemplatesUpdateBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesUpdateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a company import template under the rules of `bank/import-templates/create`; a change of `type` re-checks the existing fields against the new type. Built-in templates cannot be changed. A name already used by another template answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesUpdateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesDelete</a>(request: Requests.ImportTemplatesDeleteBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesDeleteBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a company import template. Built-in templates cannot be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesDeleteBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesGet</a>(request: Requests.ImportTemplatesGetBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesGetBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one import template, a company one or a built-in one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesGetBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesListBuiltin</a>(request: Requests.ImportTemplatesListBuiltinBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesListBuiltinBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Today the Revolut Business template: the Revolut CSV fields, with fees, card payments and top-ups posted to the accounts of the posting rules, the sender and beneficiary names creating partners and the Reference column linking payments to invoices. The rows carry `builtin: true`, are readable with `bank/import-templates/get` and are not in `bank/import-templates/list`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesListBuiltin(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesListBuiltinBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">importTemplatesList</a>(request: Requests.ImportTemplatesListBankRequest, requestOptions: RequestOptions?) -> ImportTemplatesListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the import templates of the company (the built-in ones are under `bank/import-templates/list-builtin`). Filterable by name and type; sortable by name and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.importTemplatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ImportTemplatesListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">matchRulesCreate</a>(request: Requests.MatchRulesCreateBankRequest, requestOptions: RequestOptions?) -> MatchRulesCreateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a rule that links incoming bank lines to the settlement batches of a payment provider when lines are imported and when a batch is posted. A line whose description, counterparty name or external id contains `pattern` (case-insensitive) is linked to the open batch of `provider` whose payout id follows `payoutIdPrefix` in the line text or, without a prefix, to the single open batch on the same bank account with the same currency and net amount and a payout date within `dateWindowDays` of the line date. `bankAccountId` limits the rule to one account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.matchRulesCreate(request: .init(
        name: "name",
        pattern: "pattern"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MatchRulesCreateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">matchRulesUpdate</a>(request: Requests.MatchRulesUpdateBankRequest, requestOptions: RequestOptions?) -> MatchRulesUpdateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change a match rule; `payoutIdPrefix` and `bankAccountId` are cleared with null.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.matchRulesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MatchRulesUpdateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">matchRulesDelete</a>(request: Requests.MatchRulesDeleteBankRequest, requestOptions: RequestOptions?) -> MatchRulesDeleteBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a match rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.matchRulesDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MatchRulesDeleteBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">matchRulesList</a>(request: Requests.MatchRulesListBankRequest, requestOptions: RequestOptions?) -> MatchRulesListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the match rules of the company, ordered by name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.matchRulesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MatchRulesListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">mandatesCreate</a>(request: Requests.MandatesCreateBankRequest, requestOptions: RequestOptions?) -> MandatesCreateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a SEPA direct debit mandate a partner has signed: debtor IBAN and BIC, scheme (CORE or B2B), recurrent or one-off, and the signature date. `reference` is the mandate reference written into the collection files; without one `MNDT-` followed by a generated id is used. `debtorName` defaults to the partner name. A reference already in use answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.mandatesCreate(request: .init(
        partnerId: "partnerId",
        iban: "iban",
        signatureDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MandatesCreateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">mandatesUpdate</a>(request: Requests.MandatesUpdateBankRequest, requestOptions: RequestOptions?) -> MandatesUpdateBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the BIC, debtor name or notes of a mandate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.mandatesUpdate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MandatesUpdateBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">mandatesCancel</a>(request: Requests.MandatesCancelBankRequest, requestOptions: RequestOptions?) -> MandatesCancelBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel an active mandate. A mandate that is already cancelled or completed answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.mandatesCancel(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MandatesCancelBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">mandatesGet</a>(request: Requests.MandatesGetBankRequest, requestOptions: RequestOptions?) -> MandatesGetBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one mandate. `expiresOn` is 36 months after the last collection, or after the signature date when nothing has been collected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.mandatesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MandatesGetBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">mandatesList</a>(request: Requests.MandatesListBankRequest, requestOptions: RequestOptions?) -> MandatesListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the mandates of the company. Filterable by partnerId, status, scheme, reference and iban; sortable by createdAt and signatureDate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.mandatesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MandatesListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">directDebitsCandidates</a>(request: Requests.DirectDebitsCandidatesBankRequest, requestOptions: RequestOptions?) -> DirectDebitsCandidatesBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the issued EUR sale invoices that are unpaid or partly paid and whose partner holds an active mandate, each with the mandate `bank/direct-debits/export` would use (the most recently signed active one). Filterable by partnerId, fullNumber, issueDate and dueDate; sortable by issueDate, dueDate, fullNumber, grossTotal and createdAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.directDebitsCandidates(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DirectDebitsCandidatesBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">directDebitsExport</a>(request: Requests.DirectDebitsExportBankRequest, requestOptions: RequestOptions?) -> DirectDebitsExportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Build a SEPA direct debit file (pain.008.001.02) that collects the remaining amount of each issued EUR sale invoice into the bank account on `collectionDate` (default: today) under the partner's most recently signed active mandate. The bank account needs an IBAN and the company a valid `sepaCreditorId` (422, see `account/companies/update`); an invoice whose partner has no active mandate, or whose mandate expired (36 months without a collection), answers 422; an invoice already paid, or a one-off mandate asked to collect more than one invoice, answers 409. The sequence type is OOFF for a one-off mandate, FRST for the first collection under a recurrent one and RCUR after that. On success the collection count and last collection date of each mandate are advanced and a one-off mandate is completed; nothing is posted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.directDebitsExport(request: .init(
        bankAccountId: "bankAccountId",
        saleInvoiceIds: [
            "saleInvoiceIds"
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DirectDebitsExportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">transactionsSuggestMatches</a>(request: Requests.TransactionsSuggestMatchesBankRequest, requestOptions: RequestOptions?) -> TransactionsSuggestMatchesBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Suggest documents for a new bank transaction: issued sale invoices and advances for incoming money; registered purchase invoices, issued sale credit notes and approved payroll runs for outgoing money. Candidates are unpaid documents whose remaining balance covers the payment (any balance when in another currency), scored by an equal remaining balance, the document number or payroll period in the payment description and a counterparty IBAN or name matching the partner or an employee on the run; the best `limit` come back with their reasons. A transaction that is already matched answers 409.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.transactionsSuggestMatches(request: .init(transactionId: "transactionId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsSuggestMatchesBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsImport</a>(request: Requests.SettlementsImportBankRequest, requestOptions: RequestOptions?) -> SettlementsImportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import a Stripe payout report into settlement batches, one per payout: the itemized payout reconciliation CSV (`format` payout_reconciliation) or the unified payments export with its Transfer column (unified_payments); another CSV is refused with 422. Rows without a payout, the payout rows themselves and unsettled payments are skipped and counted. Each line is matched to an issued sale invoice through the references the report carries (the external reference of a sales order or an invoice number) or through a charge matched earlier. A payout already imported receives its new lines while the batch is in status imported and is skipped once posted; a payout mixing currencies answers 422. Emits `settlement.imported` for a new batch and `settlement.updated` for one that received lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsImport(request: .init(
        bankAccountId: "bankAccountId",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsImportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsList</a>(request: Requests.SettlementsListBankRequest, requestOptions: RequestOptions?) -> SettlementsListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the settlement batches with their line counts and the clearing figures against the bank lines. Filterable by provider, payoutId, status, currency and bankAccountId; sortable by payoutDate, createdAt and netTotal.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsGet</a>(request: Requests.SettlementsGetBankRequest, requestOptions: RequestOptions?) -> SettlementsGetBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one settlement batch with its lines, each with the invoice it is matched to and the bank line that cleared it (`clearingBooked`, `clearingDifference`, `clearingUnposted`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsGetBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsMatch</a>(request: Requests.SettlementsMatchBankRequest, requestOptions: RequestOptions?) -> SettlementsMatchBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Match a settlement line to an issued sale invoice or advance by hand (`matchStatus` manual), or clear the match with `invoiceId` null. Only lines of the categories charge, refund, dispute, dispute_reversal and partial_capture_reversal can be matched (422), and only while the batch is in status imported (409).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsMatch(request: .init(
        lineId: "lineId",
        invoiceId: .null
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsMatchBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsCommission</a>(request: Requests.SettlementsCommissionBankRequest, requestOptions: RequestOptions?) -> SettlementsCommissionBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A line with its own rate or amount is split with that value when the batch is posted. A line without one falls back to the commissionPercent given to the posting call, and without that the amount goes to the suspense account. Send both fields as null to clear the line back to the fallback.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsCommission(request: .init(lineId: "lineId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsCommissionBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsLink</a>(request: Requests.SettlementsLinkBankRequest, requestOptions: RequestOptions?) -> SettlementsLinkBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attach the incoming bank-statement line that carries this payout to the settlement batch.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsLink(request: .init(
        id: "id",
        bankTransactionId: "bankTransactionId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsLinkBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsUnlink</a>(request: Requests.SettlementsUnlinkBankRequest, requestOptions: RequestOptions?) -> SettlementsUnlinkBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detach the bank-statement line from the settlement batch and return the line to unmatched.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsUnlink(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsUnlinkBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">settlementsPost</a>(request: Requests.SettlementsPostBankRequest, requestOptions: RequestOptions?) -> SettlementsPostBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Post a settlement batch dated `date` (default: the payout date, else today): the bank account receives the net payout, the matched sale invoices are settled against the receivable (the receivable of each partner in a journal transaction of its own when invoices of several partners are settled), the provider fees, the marketplace commission and the seller payable are booked, and a payout in another currency is converted at the rate of that date with the exchange difference against each invoice's own rate on the gain or loss account. A line without a matched invoice is split by its own rate or amount, else by `commissionPercent`, else parked on the suspense account; a line already imported as a movement of a bank account is posted against that account instead. Answers 409 when the batch is already posted or the period is locked, 422 when it has no lines. The payout is linked to the bank line a match rule recognises. Emits `settlement.posted`, `sale_invoice.paid` for each invoice that becomes paid and `refund_liability.actual` for refunds of invoices carrying a refund liability.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.settlementsPost(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SettlementsPostBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">securitiesImport</a>(request: Requests.SecuritiesImportBankRequest, requestOptions: RequestOptions?) -> SecuritiesImportBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import an Interactive Brokers activity statement (CSV) into a bank account of type `broker`; refused with 422 for another account type, a file that is not an IBKR statement, a statement of a different IBKR account than the bank account already holds, or a trade older than the latest trade already imported (statements go in in date order). Rows already imported are skipped. Dividends, withholding tax, interest and fees are posted against the broker account; stock, option and futures trades are matched FIFO against the open lots and post the cost to `securities.investments` and the realised result to `securities.gain` or `securities.loss` (posting rules), one journal entry per date in the base currency at the rate of the day (422 without a rate, 409 when the date's period is locked). Deposits, corporate actions and currency conversions are stored as `not_posted` with a note.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.securitiesImport(request: .init(
        bankAccountId: "bankAccountId",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SecuritiesImportBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">securitiesList</a>(request: Requests.SecuritiesListBankRequest, requestOptions: RequestOptions?) -> SecuritiesListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the securities imports, newest first; filterable by `bankAccountId` and `brokerAccount`, sortable by `createdAt` and `realizedTotal`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.securitiesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SecuritiesListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">securitiesGet</a>(request: Requests.SecuritiesGetBankRequest, requestOptions: RequestOptions?) -> SecuritiesGetBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one securities import with its operations in date order, each with its posting status, its amounts in the base currency and the journal transaction it was posted in.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.securitiesGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SecuritiesGetBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">securitiesOperationsList</a>(request: Requests.SecuritiesOperationsListBankRequest, requestOptions: RequestOptions?) -> SecuritiesOperationsListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the imported securities operations, newest first; filterable by `bankAccountId`, `kind`, `status`, `symbol` and `date`, sortable by `date` and `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.securitiesOperationsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SecuritiesOperationsListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsBanksList</a>(request: Requests.FeedsBanksListBankRequest, requestOptions: RequestOptions?) -> FeedsBanksListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read from the bank-feed provider configured on the API server or in platform settings (Enable Banking or an HTTP bridge, named in `provider`), for one `country` or all. Without a provider the call answers 503.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsBanksList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsBanksListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsConnectionsStart</a>(request: Requests.FeedsConnectionsStartBankRequest, requestOptions: RequestOptions?) -> FeedsConnectionsStartBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a pending bank connection and asks the provider for the authorization page of the bank. `url` is where the user authorizes access for `validForDays` (default 90); `reference` is the state the bank sends back and what `bank/feeds/connections/complete` takes. `redirectUrl` falls back to the one in platform settings, and the call is refused with 422 when neither is set.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsConnectionsStart(request: .init(
        aspspName: "aspspName",
        aspspCountry: "aspspCountry"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsConnectionsStartBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsConnectionsComplete</a>(request: Requests.FeedsConnectionsCompleteBankRequest, requestOptions: RequestOptions?) -> FeedsConnectionsCompleteBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Exchanges `code` for a provider session, sets the connection to active with the consent expiry the bank reports, and records every account of the session as a bank-feed account, not yet linked to a ledger account (`bank/feeds/accounts/link`). A connection that is already active answers 409. When the provider refuses the code the connection goes to status error with the message in `error`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsConnectionsComplete(request: .init(
        reference: "reference",
        code: "code"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsConnectionsCompleteBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsConnectionsGet</a>(request: Requests.FeedsConnectionsGetBankRequest, requestOptions: RequestOptions?) -> FeedsConnectionsGetBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read one bank connection with its bank-feed accounts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsConnectionsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsConnectionsGetBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsConnectionsList</a>(request: Requests.FeedsConnectionsListBankRequest, requestOptions: RequestOptions?) -> FeedsConnectionsListBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the bank connections of the company, without their accounts. Filterable by status, provider and aspspCountry; sortable by createdAt and lastSyncedAt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsConnectionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsConnectionsListBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsConnectionsDelete</a>(request: Requests.FeedsConnectionsDeleteBankRequest, requestOptions: RequestOptions?) -> FeedsConnectionsDeleteBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Closes the provider session when the connection has one and a provider is configured (a failure at the bank does not stop the call), then deletes the connection and its bank-feed accounts. The ledger bank accounts and the transactions already imported stay.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsConnectionsDelete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsConnectionsDeleteBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsAccountsLink</a>(request: Requests.FeedsAccountsLinkBankRequest, requestOptions: RequestOptions?) -> FeedsAccountsLinkBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Give exactly one of `bankAccountId` (an existing ledger bank account) or `createBankAccount` (a new one with the IBAN and currency of the feed account; `accountCode` defaults to the default bank account of the chart of accounts). `syncFrom` is the date the first sync starts from; without it the first sync covers the last 90 days.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsAccountsLink(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsAccountsLinkBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsAccountsConfigure</a>(request: Requests.FeedsAccountsConfigureBankRequest, requestOptions: RequestOptions?) -> FeedsAccountsConfigureBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

`importTemplateId` must be a template of type bank_connection, or null to apply none. `syncSchedule` is manual, daily, weekly or monthly; every account whose schedule is not manual is synced by Nordlet when it is due. At least one of the two must be given.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsAccountsConfigure(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsAccountsConfigureBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bank.<a href="/Sources/Resources/Bank/BankClient.swift">feedsSync</a>(request: Requests.FeedsSyncBankRequest, requestOptions: RequestOptions?) -> FeedsSyncBankResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches the transactions of every linked bank-feed account of the connection, or of `feedAccountId` alone, from `dateFrom` (default: seven days before the last sync, else the `syncFrom` of the account, else 90 days back) to `dateTo`, and inserts the new ones into the linked ledger bank account; lines already there count as `skipped`. An import template set on the account is applied as in `bank/statements/import`. Answers 409 when the connection is not active or has no session, and when the bank returns more than 20 pages for the range (keep `dateFrom` and set an earlier `dateTo`). A provider failure is written to the `error` of the connection, and one that is not retryable sets its status to error. The outcome is announced as `bank_feed.synced`, and invoices the template issues as `sale_invoice.issued`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.bank.feedsSync(request: .init(connectionId: "connectionId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FeedsSyncBankRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## files
<details><summary><code>client.files.<a href="/Sources/Resources/Files/FilesClient.swift">upload</a>(request: Requests.UploadFilesRequest, requestOptions: RequestOptions?) -> UploadFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Store a base64-encoded file of up to 10 MB (413 above that) under an `entity` and optional `entityId`, and return its record with the SHA-256 of the content and its `storageKey`, which other calls take as `documentRef`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.files.upload(request: .init(
        entity: "entity",
        fileName: "fileName",
        mimeType: "mimeType",
        content: "content"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UploadFilesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/Sources/Resources/Files/FilesClient.swift">get</a>(request: Requests.GetFilesRequest, requestOptions: RequestOptions?) -> GetFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a file record with its content, base64-encoded.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.files.get(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GetFilesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/Sources/Resources/Files/FilesClient.swift">list</a>(request: Requests.ListFilesRequest, requestOptions: RequestOptions?) -> ListFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's files. Filterable by `entity`, `entityId` and `fileName`; sortable by `createdAt`, `fileName` and `sizeBytes`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.files.list(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ListFilesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/Sources/Resources/Files/FilesClient.swift">delete</a>(request: Requests.DeleteFilesRequest, requestOptions: RequestOptions?) -> DeleteFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a file record and its stored content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.files.delete(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteFilesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## reports
<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">trialBalance</a>(request: Requests.TrialBalanceReportsRequest, requestOptions: RequestOptions?) -> TrialBalanceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Trial balance of the posted ledger for a period: for every account with an opening balance or movement, the balance before `fromDate`, the debit and credit turnover between `fromDate` and `toDate`, and the closing balance, with debit and credit totals. Template account names follow the `Accept-Language` header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.trialBalance(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TrialBalanceReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">sizeCategory</a>(request: Requests.SizeCategoryReportsRequest, requestOptions: RequestOptions?) -> SizeCategoryReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Classify the company's size for a calendar year as micro, small, medium or large from total assets at the year end, the net turnover of the year and the average number of employees under employment contracts, against the limits returned in `thresholds`; a category applies when at least two of its three limits are met. This is the default category of `reports/financial-statements`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.sizeCategory(request: .init(year: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SizeCategoryReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">financialStatements</a>(request: Requests.FinancialStatementsReportsRequest, requestOptions: RequestOptions?) -> FinancialStatementsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Balance sheet at `toDate` and profit and loss for the period from the posted ledger, year-end closing entries excluded, laid out by size category: `category` when given, else the one `reports/size-category` derives for the period. Micro gets the short balance sheet and profit and loss; the other categories add the balance sheet and profit and loss detail; medium and large also get the changes in equity and a cash flow summary. Line groupings follow the company's chart template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.financialStatements(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FinancialStatementsReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">generalJournal</a>(request: Requests.GeneralJournalReportsRequest, requestOptions: RequestOptions?) -> GeneralJournalReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Posted journal transactions of a period in date order, each with its lines (account, debit, credit), paged with `page` and `pageSize` and the total count. Template account names follow the `Accept-Language` header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.generalJournal(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GeneralJournalReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">glDetail</a>(request: Requests.GlDetailReportsRequest, requestOptions: RequestOptions?) -> GlDetailReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ledger card of one account for a period: the opening balance before `fromDate`, every posted line in date order with a running balance, and the closing balance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.glDetail(request: .init(
        accountCode: "accountCode",
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GlDetailReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">partnerBalances</a>(request: Requests.PartnerBalancesReportsRequest, requestOptions: RequestOptions?) -> PartnerBalancesReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open balance per partner: receivables from issued sale invoices and payables from registered purchase invoices that are not fully paid, credit notes reducing the balance, converted to the base currency at the document rate, with totals.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.partnerBalances(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PartnerBalancesReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">debtAging</a>(request: Requests.DebtAgingReportsRequest, requestOptions: RequestOptions?) -> DebtAgingReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ageing of the open receivables or payables (`side`) at `asOf` (default the company's current date) per partner: not yet due, 1 to 30, 31 to 60, 61 to 90 and over 90 days past the due date. Counts documents dated on or before `asOf` and payments made up to that date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.debtAging(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DebtAgingReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">monthlySummary</a>(request: Requests.MonthlySummaryReportsRequest, requestOptions: RequestOptions?) -> MonthlySummaryReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

One row per calendar month for the last `months` months ending with the current one: the receivable and payable balances at the end of the month and the revenue, expenses and net result posted in it, year-end closing entries excluded.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.monthlySummary(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MonthlySummaryReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">stockBalance</a>(request: Requests.StockBalanceReportsRequest, requestOptions: RequestOptions?) -> StockBalanceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Quantity and value on hand per item and warehouse at `asOf`, summed from the stock movements dated on or before it; `warehouseId` limits the report to one warehouse. Rows with zero quantity and zero value are left out.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.stockBalance(request: .init(asOf: CalendarDate("2026-07-01")!))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockBalanceReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">stockMovement</a>(request: Requests.StockMovementReportsRequest, requestOptions: RequestOptions?) -> StockMovementReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stock movement per item for a period: opening quantity and value before `fromDate`, quantities and values received and issued between `fromDate` and `toDate`, and the closing figures; `warehouseId` and `itemId` narrow the report.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.stockMovement(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockMovementReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">vatSummary</a>(request: Requests.VatSummaryReportsRequest, requestOptions: RequestOptions?) -> VatSummaryReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

VAT of issued sale invoices (by issue date) or registered purchase invoices (by registration date) in a period, summed per VAT rate: net, VAT and gross in the base currency and the number of documents, credit notes counting negative. The rows of `reports/vat-detail` grouped by rate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.vatSummary(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatSummaryReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">cashFlow</a>(request: Requests.CashFlowReportsRequest, requestOptions: RequestOptions?) -> CashFlowReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cash flow statement of a period from the posted transactions that touch a cash account: the inflow and outflow of every counterpart account, grouped into operating, investing and financing by the account prefixes of the company's chart template, with opening and closing cash and `balanced` telling whether opening cash plus the net change equals closing cash. Template account names follow the `Accept-Language` header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.cashFlow(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CashFlowReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">stockAging</a>(request: Requests.StockAgingReportsRequest, requestOptions: RequestOptions?) -> StockAgingReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Age of the stock on hand at `asOf` per item and warehouse: the remaining quantity and value of each FIFO receipt layer, bucketed by days since the receipt (0 to 30, 31 to 60, 61 to 90, over 90), with totals; `warehouseId` limits the report to one warehouse. When movements after `asOf` exist, the layers are rebuilt by replaying the movements up to that date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.stockAging(request: .init(asOf: CalendarDate("2026-07-01")!))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockAgingReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">stockShortage</a>(request: Requests.StockShortageReportsRequest, requestOptions: RequestOptions?) -> StockShortageReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Items whose reserved quantity exceeds the quantity on hand, per warehouse: on hand, reserved and the shortage. Only items with a reservation are checked; `warehouseId` limits the report to one warehouse.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.stockShortage(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StockShortageReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">sie</a>(request: Requests.SieReportsRequest, requestOptions: RequestOptions?) -> SieReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export the ledger of one financial year as an SIE file (the Swedish standard accounting interchange format, specification 4B). The file carries the chart of accounts, the opening and closing balance of every balance sheet account and the turnover of every result account for the year and the year before it, and, when asked for, every posted voucher of the year with its lines. Cost centres travel as dimension 1 and projects as dimension 6. Services that build a Swedish annual report read this file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.sie(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SieReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">datev</a>(request: Requests.DatevReportsRequest, requestOptions: RequestOptions?) -> DatevReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export the posted ledger of a period as a DATEV Buchungsstapel file (DATEV format, category 21, version 700). Every transaction becomes one or more bookings of an amount between an account and a contra account; a transaction with more than two lines is split into pairs whose totals match it. The file is semicolon separated and written in the Windows-1252 character set DATEV expects.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.datev(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DatevReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">fec</a>(request: Requests.FecReportsRequest, requestOptions: RequestOptions?) -> FecReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export the posted ledger of a period as a French FEC file (fichier des écritures comptables, order of 29 July 2013). One line per journal entry line, with the eighteen fields the order names, in their order, after a header line. Tab separated, UTF-8, comma as the decimal separator.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.fec(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FecReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">euPurchases</a>(request: Requests.EuPurchasesReportsRequest, requestOptions: RequestOptions?) -> EuPurchasesReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registered purchase invoices of a period (by registration date) from partners in another EU country, summed per partner country and VAT rate: net and VAT in the base currency and the number of documents, credit notes counting negative. The partner's country is the country code of its address, else the first two characters of its VAT number.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.euPurchases(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EuPurchasesReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">vatDetail</a>(request: Requests.VatDetailReportsRequest, requestOptions: RequestOptions?) -> VatDetailReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

VAT of issued sale invoices (by issue date) or registered purchase invoices (by registration date) in a period, one row per document and VAT rate: net, VAT and gross in the base currency, with totals; credit notes count negative. `reports/vat-summary` groups these rows by rate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.vatDetail(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.VatDetailReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">posSales</a>(request: Requests.PosSalesReportsRequest, requestOptions: RequestOptions?) -> PosSalesReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

POS reports of a period (by report date): per report the net, VAT, gross, cash and card amounts and the cost of goods sold, the net and VAT per VAT rate across the reports, and totals.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.posSales(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PosSalesReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">onlineSales</a>(request: Requests.OnlineSalesReportsRequest, requestOptions: RequestOptions?) -> OnlineSalesReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sales orders created in a period, grouped by channel and currency: the number of orders, how many are fulfilled, cancelled or still open (new or reserved), and the net and gross of the orders that are not cancelled, computed from their lines.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.onlineSales(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OnlineSalesReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">oss</a>(request: Requests.OssReportsRequest, requestOptions: RequestOptions?) -> OssReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issued sale invoices and credit notes of a period (by issue date) to partners in another EU country, summed per partner country and VAT rate: net and VAT in the base currency and the number of documents. The partner's country is the country code of its address, else the first two characters of its VAT number.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.oss(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OssReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">advanceReconciliation</a>(request: Requests.AdvanceReconciliationReportsRequest, requestOptions: RequestOptions?) -> AdvanceReconciliationReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cash advances per employee for a period: the balance before `fromDate`, the advances paid out and returned through cash orders in the period, the amount settled by expense reports dated in the period, and the closing balance. A cash order counts as an advance when it names an employee and its counter account is the `cash.advances` posting rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.advanceReconciliation(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AdvanceReconciliationReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">writeOffActs</a>(request: Requests.WriteOffActsReportsRequest, requestOptions: RequestOptions?) -> WriteOffActsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stock issued by write-offs and stock takes in a period: one row per outgoing movement with item, warehouse, quantity, cost and notes, and the total cost; `warehouseId` limits the report to one warehouse.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.writeOffActs(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.WriteOffActsReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">costCenters</a>(request: Requests.CostCentersReportsRequest, requestOptions: RequestOptions?) -> CostCentersReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Income, expenses and result per cost centre for a period, from the posted journal lines assigned to a cost centre.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.costCenters(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCentersReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">costCenterActivity</a>(request: Requests.CostCenterActivityReportsRequest, requestOptions: RequestOptions?) -> CostCenterActivityReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Posted journal lines of one cost centre for a period, summed per account: debit, credit and net. Template account names follow the `Accept-Language` header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.costCenterActivity(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!,
        costCenterId: "costCenterId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterActivityReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">costCenterItems</a>(request: Requests.CostCenterItemsReportsRequest, requestOptions: RequestOptions?) -> CostCenterItemsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Net purchases per cost centre and item for a period, from the lines of registered purchase invoices (by registration date) that carry a cost centre, credit notes counting negative; `costCenterId` limits the report to one cost centre. A line without an item is reported under its description.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.costCenterItems(request: .init(
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CostCenterItemsReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">jobsCreate</a>(request: Requests.JobsCreateReportsRequest, requestOptions: RequestOptions?) -> JobsCreateReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Queue a report to be built in the background in one or more formats (`json`, `xlsx`, `pdf`) and stored as files; the job is returned at once with status `queued`. `reportType` is one of trial-balance, partner-balances, debt-aging, stock-balance, vat-summary, vat-detail, eu-purchases, oss, pos-sales, online-sales, advance-reconciliation, write-off-acts, cost-centers, cost-center-activity, cost-center-items and cash-flow, and `params` is the body of that report route; an unknown type or invalid params are refused with 422. Follow the job with `reports/jobs/get`, download its outputs with `files/get`, and listen for `report.completed` or `report.failed`; a report that does not finish within ten minutes fails.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.jobsCreate(request: .init(reportType: "reportType"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JobsCreateReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">jobsGet</a>(request: Requests.JobsGetReportsRequest, requestOptions: RequestOptions?) -> JobsGetReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one report job with its status (`queued`, `running`, `completed` or `failed`), the error of a failed job and the output files of a completed one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.jobsGet(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JobsGetReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/Sources/Resources/Reports/ReportsClient.swift">jobsList</a>(request: Requests.JobsListReportsRequest, requestOptions: RequestOptions?) -> JobsListReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the company's report jobs, newest first; filterable by `status` and `reportType`, sortable by `createdAt`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.reports.jobsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.JobsListReportsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## consolidation
<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">groupsCreate</a>(request: Requests.GroupsCreateConsolidationRequest, requestOptions: RequestOptions?) -> GroupsCreateConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a consolidation group owned by the calling company; `presentationCurrency` defaults to the company's base currency. Members are added with `consolidation/members/add`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.groupsCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsCreateConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">groupsList</a>(request: Requests.GroupsListConsolidationRequest, requestOptions: RequestOptions?) -> GroupsListConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the calling company's consolidation groups with their member counts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.groupsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsListConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">groupsGet</a>(request: Requests.GroupsGetConsolidationRequest, requestOptions: RequestOptions?) -> GroupsGetConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return one consolidation group with its members, each with its ownership percentage and consolidation method.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.groupsGet(request: .init(groupId: "groupId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsGetConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">groupsUpdate</a>(request: Requests.GroupsUpdateConsolidationRequest, requestOptions: RequestOptions?) -> GroupsUpdateConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Rename a consolidation group or change its presentation currency.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.groupsUpdate(request: .init(groupId: "groupId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsUpdateConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">groupsDelete</a>(request: Requests.GroupsDeleteConsolidationRequest, requestOptions: RequestOptions?) -> GroupsDeleteConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a consolidation group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.groupsDelete(request: .init(groupId: "groupId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GroupsDeleteConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">membersAdd</a>(request: Requests.MembersAddConsolidationRequest, requestOptions: RequestOptions?) -> MembersAddConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a company to a consolidation group with its ownership percentage and method (`full`, `proportional` or `equity`), or change those of an existing member. Another company can be added only by a signed-in user who is owner, admin or accountant of it; an API key is refused with 403.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.membersAdd(request: .init(
        groupId: "groupId",
        memberCompanyId: "memberCompanyId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersAddConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">membersRemove</a>(request: Requests.MembersRemoveConsolidationRequest, requestOptions: RequestOptions?) -> MembersRemoveConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a company from a consolidation group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.membersRemove(request: .init(
        groupId: "groupId",
        memberCompanyId: "memberCompanyId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersRemoveConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">intercompanyCandidates</a>(request: Requests.IntercompanyCandidatesConsolidationRequest, requestOptions: RequestOptions?) -> IntercompanyCandidatesConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Partners in member companies that look like other members of the same group (matched on company code or VAT code), with any existing intercompany link. Confirming a candidate via intercompany/links/set enables invoice mirroring.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.intercompanyCandidates(request: .init(groupId: "groupId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntercompanyCandidatesConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">intercompanyLinksSet</a>(request: Requests.IntercompanyLinksSetConsolidationRequest, requestOptions: RequestOptions?) -> IntercompanyLinksSetConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Confirm that a partner record in one member company represents another member company of the group. Once links exist in both directions, issuing an intercompany sale invoice automatically creates the matching draft purchase invoice in the counterparty.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.intercompanyLinksSet(request: .init(
        groupId: "groupId",
        partnerId: "partnerId",
        counterpartyCompanyId: "counterpartyCompanyId"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntercompanyLinksSetConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">intercompanyLinksList</a>(request: Requests.IntercompanyLinksListConsolidationRequest, requestOptions: RequestOptions?) -> IntercompanyLinksListConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the intercompany links of a group: which partner record of which member company stands for which other member company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.intercompanyLinksList(request: .init(groupId: "groupId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntercompanyLinksListConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">intercompanyLinksRemove</a>(request: Requests.IntercompanyLinksRemoveConsolidationRequest, requestOptions: RequestOptions?) -> IntercompanyLinksRemoveConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove an intercompany link from a group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.intercompanyLinksRemove(request: .init(
        groupId: "groupId",
        id: "id"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntercompanyLinksRemoveConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">intercompanyReport</a>(request: Requests.IntercompanyReportConsolidationRequest, requestOptions: RequestOptions?) -> IntercompanyReportConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Intercompany reconciliation for a period: every issued intercompany sale invoice with its mirrored or manually recorded counterpart, unmatched documents on both sides, and per-currency totals with differences. Confirmed pairs are the basis for consolidation eliminations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.intercompanyReport(request: .init(
        groupId: "groupId",
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntercompanyReportConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.consolidation.<a href="/Sources/Resources/Consolidation/ConsolidationClient.swift">report</a>(request: Requests.ReportConsolidationRequest, requestOptions: RequestOptions?) -> ReportConsolidationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Consolidated financial statements of a group for a period in its presentation currency, with the consolidated trial balance and cash flow, each member's contribution and the intercompany candidates. Each member's balances are translated at the group owner's exchange rates of `toDate` and taken in full, in proportion to the ownership (`proportional`) or as an equity-method investment (`equity`); a fully consolidated member held below 100 % yields the non-controlling interest, and `eliminations` are amounts added to account codes before the statements are assembled (`balanced` tells whether they net to zero). Refused with 422 when the group has no members.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.consolidation.report(request: .init(
        groupId: "groupId",
        fromDate: CalendarDate("2026-07-01")!,
        toDate: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReportConsolidationRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## public
<details><summary><code>client.public.<a href="/Sources/Resources/Public/PublicClient.swift">integrationRequests</a>(request: Requests.IntegrationRequestsPublicRequest, requestOptions: RequestOptions?) -> IntegrationRequestsPublicResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Store a request for an integration: the integration asked for and the sender's name, company, e-mail and details. When `website` is filled in, the call answers `received` without storing anything.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.public.integrationRequests(request: .init(
        integration: "integration",
        name: "name",
        email: "email"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.IntegrationRequestsPublicRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.public.<a href="/Sources/Resources/Public/PublicClient.swift">pay</a>(token: String, requestOptions: RequestOptions?) -> Void</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Redirect (302) to the company's payment page for the issued invoice that carries this payment token, rendered from the template set with `sales/invoices/payment-settings/update` with the invoice number, the amount still unpaid, the currency, the token, the invoice id and the customer name (see `sales/invoices/payment-link`). Answers 404 when the token matches no issued invoice, the invoice has `payLinkEnabled` false or the company has no template, and 409 when the invoice is already paid.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.public.pay(token: "token")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**token:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.public.<a href="/Sources/Resources/Public/PublicClient.swift">invoicesGet</a>(request: Requests.InvoicesGetPublicRequest, requestOptions: RequestOptions?) -> InvoicesGetPublicResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the issued sale document that carries this customer token (`token` of `sales/invoices/view`), in the shape of `sales/invoices/view` without the token. Answers 404 when the token matches no issued document.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.public.invoicesGet(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesGetPublicRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.public.<a href="/Sources/Resources/Public/PublicClient.swift">invoicesCheckout</a>(request: Requests.InvoicesCheckoutPublicRequest, requestOptions: RequestOptions?) -> InvoicesCheckoutPublicResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a Stripe Checkout page on the company's connected Stripe account for the amount still unpaid on the issued invoice that carries this customer token, and return its `url`. Stripe sends the customer back to the public invoice page. Answers 404 when the token matches no issued invoice, the invoice has `payLinkEnabled` false or the company has no Stripe account that can take charges, 409 when the invoice is already paid and 422 when Stripe cannot take the amount in the invoice currency.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.public.invoicesCheckout(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesCheckoutPublicRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.public.<a href="/Sources/Resources/Public/PublicClient.swift">invoicesPdf</a>(request: Requests.InvoicesPdfPublicRequest, requestOptions: RequestOptions?) -> InvoicesPdfPublicResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the PDF of the issued sale document that carries this customer token, base64-encoded, as `sales/invoices/pdf` renders it in the document's own language, English when it has none. Answers 404 when the token matches no issued document.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.public.invoicesPdf(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoicesPdfPublicRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## billing
<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">accountGet</a>(request: Requests.AccountGetBillingRequest, requestOptions: RequestOptions?) -> AccountGetBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the signed-in user's billing account: plan, account type, status, balance, trial and payment state, the month-to-date usage of the companies the user pays for with an estimate of today's charge, the plan catalogue, and the top-up, automatic top-up and overdraft settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.accountGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountGetBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">accountSetPlan</a>(request: Requests.AccountSetPlanBillingRequest, requestOptions: RequestOptions?) -> AccountSetPlanBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the plan of the user's flat-rate billing account; answers 409 when the account type is not `flat_rate`. With a Stripe subscription and payments configured, the subscription is moved to the new plan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.accountSetPlan(request: .init(plan: .starter))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountSetPlanBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">accountSetAccountType</a>(request: Requests.AccountSetAccountTypeBillingRequest, requestOptions: RequestOptions?) -> AccountSetAccountTypeBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Switch the user's billing account between `flat_rate` and `per_request`. With a Stripe subscription and payments configured, the subscription is moved to the plan's price for `flat_rate`; for `per_request` the plan is taken off the subscription, and a subscription that carried only the plan is cancelled, leaving the account without one. When Stripe refuses the change, the previous account type is restored.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.accountSetAccountType(request: .init(accountType: .flatRate))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountSetAccountTypeBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">accountSetAutoTopUp</a>(request: Requests.AccountSetAutoTopUpBillingRequest, requestOptions: RequestOptions?) -> AccountSetAutoTopUpBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Switch automatic top-ups on or off and set their amount. Switching them on needs a Stripe customer, which the first card top-up creates (400 otherwise); when switched on, a top-up is charged at once if the balance is at or below zero, no payment has failed and no top-up was requested in the last 24 hours.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.accountSetAutoTopUp(request: .init(
        enabled: true,
        amountCents: 1000000
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountSetAutoTopUpBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">accountSetOverdraftCap</a>(request: Requests.AccountSetOverdraftCapBillingRequest, requestOptions: RequestOptions?) -> AccountSetOverdraftCapBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the overdraft cap of the user's billing account: how far usage charges may take the balance below zero before the account is suspended. A suspended account whose balance is within the new cap is activated again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.accountSetOverdraftCap(request: .init(capCents: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AccountSetOverdraftCapBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">topupCreate</a>(request: Requests.TopupCreateBillingRequest, requestOptions: RequestOptions?) -> TopupCreateBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a Stripe Checkout session for a one-time credit top-up of `amountCents` and return its URL; a Stripe customer is created for the user when there is none. `returnTo` chooses whether Checkout returns to the credits page or to the onboarding plan page, in `locale`. Answers 503 when online payments are not configured.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.topupCreate(request: .init(amountCents: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TopupCreateBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">topupConfirm</a>(request: Requests.TopupConfirmBillingRequest, requestOptions: RequestOptions?) -> TopupConfirmBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Confirm a paid top-up Checkout session by `sessionId` and credit the account at once instead of waiting for the Stripe webhook; a session is credited only once. Answers 404 when the session is not the user's own or is not paid.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.topupConfirm(request: .init(sessionId: "sessionId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TopupConfirmBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">flatRateCreate</a>(request: Requests.FlatRateCreateBillingRequest, requestOptions: RequestOptions?) -> FlatRateCreateBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a Stripe Checkout session for a flat-rate subscription on `plan`, with the trial period of `trialDays` days, and return its URL; a Stripe customer is created for the user when there is none. The `invoicing` plan of the invoice tool takes its trial days from the server setting `INVOICE_PLAN_TRIAL_DAYS` and returns to the invoice app. Answers 409 when a flat-rate subscription is already active and 503 when online payments are not configured, the plan has no price, or the Invoicing trial is not set.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.flatRateCreate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FlatRateCreateBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">flatRateConfirm</a>(request: Requests.FlatRateConfirmBillingRequest, requestOptions: RequestOptions?) -> FlatRateConfirmBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Confirm a completed flat-rate Checkout session by `sessionId`: the account becomes `flat_rate` on the session's plan with status `active` and the subscription attached, unless the Stripe webhook already did this. Answers 404 when the session is not the user's own or not completed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.flatRateConfirm(request: .init(sessionId: "sessionId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FlatRateConfirmBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">subscriptionCancel</a>(request: Requests.SubscriptionCancelBillingRequest, requestOptions: RequestOptions?) -> SubscriptionCancelBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel the user's Stripe subscription at the end of the period already paid: the plan stays active until `subscriptionCancelAt`, and Stripe then ends the subscription, which its `customer.subscription.deleted` webhook records. Answers 503 when online payments are not configured and 409 when the account has no subscription.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.subscriptionCancel(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SubscriptionCancelBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">portalCreate</a>(request: Requests.PortalCreateBillingRequest, requestOptions: RequestOptions?) -> PortalCreateBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a Stripe customer portal session that returns to the credits page in `locale`, and return its URL. Answers 503 when online payments are not configured and 400 when the user has no Stripe customer yet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.portalCreate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PortalCreateBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">transactionsList</a>(request: Requests.TransactionsListBillingRequest, requestOptions: RequestOptions?) -> TransactionsListBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the newest credit transactions of the user's billing account, up to `limit`: trial grants, top-ups, usage charges, activations and adjustments, each with the balance after it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.transactionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TransactionsListBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.<a href="/Sources/Resources/Billing/BillingClient.swift">usageList</a>(request: Requests.UsageListBillingRequest, requestOptions: RequestOptions?) -> UsageListBillingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the daily usage records of the companies the user pays for, from `from` to `to`: one row per company, date and metric (API requests, OCR pages, file storage bytes, database bytes, sale invoices).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.billing.usageList(request: .init(
        from: CalendarDate("2026-07-01")!,
        to: CalendarDate("2026-07-01")!
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UsageListBillingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## account
<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">loginLinkRequest</a>(request: Requests.LoginLinkRequestAccountRequest, requestOptions: RequestOptions?) -> LoginLinkRequestAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a sign-in link for the e-mail address and send it; the link is valid for 15 minutes and is consumed with `account/login-link/consume`. When an unused link was requested for the same address within the last minute, the call answers `sent` without sending another. `locale` sets the language of the e-mail and of the link; `app` set to `invoice` makes the link open the invoice app instead of the Nordlet app; `acceptTerms`, `acceptDpa` and `referralCode` are stored with the link and used when the address has no account yet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.loginLinkRequest(request: .init(email: "email"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LoginLinkRequestAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">loginLinkConsume</a>(request: Requests.LoginLinkConsumeAccountRequest, requestOptions: RequestOptions?) -> LoginLinkConsumeAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Exchange a sign-in link token for a session; an unknown, used or expired token is refused with 401. When no account has the address, one is created (`isNewUser`), which is refused with 422 unless the link was requested with `acceptTerms` and `acceptDpa`; a `referralCode` on the link records who referred the new user. A link from `account/email/change-request` changes the signed-in user's address instead, refused with 409 when another account has it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.loginLinkConsume(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LoginLinkConsumeAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">logout</a>(request: Requests.LogoutAccountRequest, requestOptions: RequestOptions?) -> LogoutAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete the session the call was made with.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.logout(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LogoutAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">me</a>(request: Requests.MeAccountRequest, requestOptions: RequestOptions?) -> MeAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the signed-in user, their active company and role in it, the companies they belong to and their consent state. `billing` is the billing account that pays for the active company (its payer, or the user when there is none or no company), with `isPayer` saying whether that is the user; `referralPoints` is the user's current points balance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.me(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MeAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">membersList</a>(request: Requests.MembersListAccountRequest, requestOptions: RequestOptions?) -> MembersListAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the members of the active company with their role.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.membersList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersListAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">membersSetRole</a>(request: Requests.MembersSetRoleAccountRequest, requestOptions: RequestOptions?) -> MembersSetRoleAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the role of a member of the active company; owners and admins may call it. Refused with 422 for the caller's own role and with 403 for the owner's, which only `account/members/transfer-ownership` changes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.membersSetRole(request: .init(
        userId: "userId",
        role: .admin
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersSetRoleAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">membersTransferOwnership</a>(request: Requests.MembersTransferOwnershipAccountRequest, requestOptions: RequestOptions?) -> MembersTransferOwnershipAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Make another member the owner of the active company; the caller must be its owner and becomes an admin. Refused with 422 when `userId` is the caller. With `movePayer` the company's billing also moves to the new owner, which only the member currently paying for it may do (403).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.membersTransferOwnership(request: .init(userId: "userId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersTransferOwnershipAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">membersRemove</a>(request: Requests.MembersRemoveAccountRequest, requestOptions: RequestOptions?) -> MembersRemoveAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a member from the active company; owners and admins may call it. Their sessions lose this company as the active one and the API keys they created for it are revoked. Refused with 422 for the caller themself and with 403 for the owner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.membersRemove(request: .init(userId: "userId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.MembersRemoveAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">invitesCreate</a>(request: Requests.InvitesCreateAccountRequest, requestOptions: RequestOptions?) -> InvitesCreateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an invitation to the active company for an e-mail address with the given role and send it by e-mail in `locale`; owners and admins may call it. The invitation is valid for 7 days and replaces an earlier pending one for the same address. Refused with 409 when the address already belongs to a member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.invitesCreate(request: .init(
        email: "email",
        role: .admin
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvitesCreateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">invitesList</a>(request: Requests.InvitesListAccountRequest, requestOptions: RequestOptions?) -> InvitesListAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the pending invitations of the active company; `expired` marks those past their expiry.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.invitesList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvitesListAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">invitesRevoke</a>(request: Requests.InvitesRevokeAccountRequest, requestOptions: RequestOptions?) -> InvitesRevokeAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a pending invitation of the active company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.invitesRevoke(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvitesRevokeAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">invitesGet</a>(request: Requests.InvitesGetAccountRequest, requestOptions: RequestOptions?) -> InvitesGetAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read a pending invitation by its token: the invited address, role and company name, whether it has expired and whether an account with that address already exists (`userExists`), in which case `account/invites/accept` must be called signed in as that account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.invitesGet(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvitesGetAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">invitesAccept</a>(request: Requests.InvitesAcceptAccountRequest, requestOptions: RequestOptions?) -> InvitesAcceptAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Accept an invitation and return a session with the invited company active. When the address has no account, one is created with `name` and `locale`, which is refused with 422 unless `acceptTerms` and `acceptDpa` are true; when it has one, the call must be made signed in as that account (401 otherwise). An expired invitation is refused with 422.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.invitesAccept(request: .init(token: "token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvitesAcceptAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">localeSet</a>(request: Requests.LocaleSetAccountRequest, requestOptions: RequestOptions?) -> LocaleSetAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the user's language: with an active company it is stored on their membership of that company (`scope` = `membership`), otherwise on the user (`scope` = `user`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.localeSet(request: .init(locale: .en))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LocaleSetAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesCreate</a>(request: Requests.CompaniesCreateAccountRequest, requestOptions: RequestOptions?) -> CompaniesCreateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a company with the caller as its owner and payer, seed its chart of accounts from the template of `countryCode`, and make it the active company of the session. `timeZone` defaults to the country's, `isVatPayer` to true and `defaultInvoiceCurrency` to the base currency. Refused with 422 when `baseCurrency` is not a supported currency.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesCreateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesSelect</a>(request: Requests.CompaniesSelectAccountRequest, requestOptions: RequestOptions?) -> CompaniesSelectAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Make one of the caller's companies the active company of the session. Refused with 403 when the caller is not a member and with 422 when the company is archived or deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesSelect(request: .init(companyId: "companyId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesSelectAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesProfile</a>(request: Requests.CompaniesProfileAccountRequest, requestOptions: RequestOptions?) -> CompaniesProfileAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the profile of the active company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesProfile(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesProfileAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesUpdate</a>(request: Requests.CompaniesUpdateAccountRequest, requestOptions: RequestOptions?) -> CompaniesUpdateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Change the profile of the active company; owners and admins may call it. Only the fields sent are changed, and the nullable ones can be sent as null to clear them. `logo` stores a base64-encoded image as a file of the company and sets `logoFileId`. The country, base currency and sandbox flag are fixed at creation.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesUpdate(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesUpdateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesArchive</a>(request: Requests.CompaniesArchiveAccountRequest, requestOptions: RequestOptions?) -> CompaniesArchiveAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the company named by `companyId` to `archived`; the caller must be its owner. Every session that had it active loses it. Refused with 409 unless the company is active; `account/companies/activate` reverses it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesArchive(request: .init(companyId: "companyId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesArchiveAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesDelete</a>(request: Requests.CompaniesDeleteAccountRequest, requestOptions: RequestOptions?) -> CompaniesDeleteAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the company named by `companyId` to `deleted`; the caller must be its owner, and every session that had it active loses it. A sandbox company is purged at once; any other is purged by the scheduled purge after `purgeAfter` (10 days) and can be restored until then with `account/companies/activate`. Refused with 409 when it is already deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesDelete(request: .init(companyId: "companyId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesDeleteAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">companiesActivate</a>(request: Requests.CompaniesActivateAccountRequest, requestOptions: RequestOptions?) -> CompaniesActivateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set an archived or deleted company named by `companyId` back to `active`; the caller must be its owner. Refused with 409 when it is already active.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.companiesActivate(request: .init(companyId: "companyId"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CompaniesActivateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">apiKeysCreate</a>(request: Requests.ApiKeysCreateAccountRequest, requestOptions: RequestOptions?) -> ApiKeysCreateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an API key for the active company and return the key itself once; owners, admins and developers may call it. `scopes` defaults to the caller's own scopes and may not exceed them (403); without `expiresInDays` the key does not expire.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.apiKeysCreate(request: .init(name: "name"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ApiKeysCreateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">apiKeysList</a>(request: Requests.ApiKeysListAccountRequest, requestOptions: RequestOptions?) -> ApiKeysListAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the API keys of the active company, including expired and revoked ones.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.apiKeysList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ApiKeysListAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">apiKeysRotate</a>(request: Requests.ApiKeysRotateAccountRequest, requestOptions: RequestOptions?) -> ApiKeysRotateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new key with the name and scopes of the key `id` and return it once; the old key keeps working for `overlapHours` and then expires, and its `replacedByKeyId` points to the new one. `expiresInDays` applies to the new key. Refused with 409 when the old key is revoked.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.apiKeysRotate(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ApiKeysRotateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">apiKeysRevoke</a>(request: Requests.ApiKeysRevokeAccountRequest, requestOptions: RequestOptions?) -> ApiKeysRevokeAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Revoke an API key of the active company at once.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.apiKeysRevoke(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ApiKeysRevokeAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">consentAccept</a>(request: Requests.ConsentAcceptAccountRequest, requestOptions: RequestOptions?) -> ConsentAcceptAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record the signed-in user's acceptance of the current Terms of Service and Data Processing Agreement versions and return the consent state.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.consentAccept(request: .init(
        acceptTerms: true,
        acceptDpa: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ConsentAcceptAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">profileUpdate</a>(request: Requests.ProfileUpdateAccountRequest, requestOptions: RequestOptions?) -> ProfileUpdateAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the signed-in user's name; null or a blank string clears it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.profileUpdate(request: .init(name: .null))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ProfileUpdateAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">emailChangeRequest</a>(request: Requests.EmailChangeRequestAccountRequest, requestOptions: RequestOptions?) -> EmailChangeRequestAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a confirmation link to `newEmail`; the address changes when that link is consumed with `account/login-link/consume`. When an unused link was sent to the address within the last minute, the call answers `sent` without sending another. Refused with 422 when it is already the user's address and with 409 when another account has it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.emailChangeRequest(request: .init(newEmail: "newEmail"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.EmailChangeRequestAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">sessionsList</a>(request: Requests.SessionsListAccountRequest, requestOptions: RequestOptions?) -> SessionsListAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the signed-in user's sessions that have not expired; `current` marks the one the call was made with.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.sessionsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionsListAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">sessionsRevoke</a>(request: Requests.SessionsRevokeAccountRequest, requestOptions: RequestOptions?) -> SessionsRevokeAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete one of the signed-in user's sessions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.sessionsRevoke(request: .init(id: "id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionsRevokeAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">sessionsRevokeOthers</a>(request: Requests.SessionsRevokeOthersAccountRequest, requestOptions: RequestOptions?) -> SessionsRevokeOthersAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete every session of the signed-in user except the one the call was made with, and return how many were deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.sessionsRevokeOthers(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionsRevokeOthersAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">export</a>(request: Requests.ExportAccountRequest, requestOptions: RequestOptions?) -> ExportAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the user's profile, consent state, memberships, unexpired sessions, billing account, credit transactions and the audit entries they made in their companies (the most recent 5000 of each of the last two).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.export(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ExportAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">delete</a>(request: Requests.DeleteAccountRequest, requestOptions: RequestOptions?) -> DeleteAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the user: sessions, sign-in links, memberships and pending invitations are deleted at once; the email and name are replaced by an anonymous placeholder immediately and the remaining row is removed after 30 days. Refused while the user still owns or pays for a company that is not deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.delete(request: .init(confirmEmail: "confirmEmail"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeleteAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">referralGet</a>(request: Requests.ReferralGetAccountRequest, requestOptions: RequestOptions?) -> ReferralGetAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the user's referral code (allocated on first call) and sign-up link, their points balance, the number of accounts they referred and the last 50 points entries. `rates.perEur` is the points the referrer earns per euro a referred user tops up, `rates.pointCents` the credit one point converts to with `account/referral/convert`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.referralGet(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReferralGetAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">referralConvert</a>(request: Requests.ReferralConvertAccountRequest, requestOptions: RequestOptions?) -> ReferralConvertAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Convert `points` of the user's referral points into credit on their billing account at `rates.pointCents` per point, booked as an `adjustment` credit transaction; a billing account past its trial is set to active when the new balance allows. Refused with 422 when the user has fewer points than requested.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.referralConvert(request: .init(points: 1000000))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReferralConvertAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">tableSettingsGet</a>(request: Requests.TableSettingsGetAccountRequest, requestOptions: RequestOptions?) -> TableSettingsGetAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the signed-in user's saved column list and page size for the table `tableKey`; both are null when nothing is saved.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.tableSettingsGet(request: .init(tableKey: "tableKey"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TableSettingsGetAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">tableSettingsSet</a>(request: Requests.TableSettingsSetAccountRequest, requestOptions: RequestOptions?) -> TableSettingsSetAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Save the signed-in user's column list and page size for the table `tableKey`; only the fields sent are changed, and null clears one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.tableSettingsSet(request: .init(tableKey: "tableKey"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TableSettingsSetAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account.<a href="/Sources/Resources/Account/AccountClient.swift">tableSettingsList</a>(request: Requests.TableSettingsListAccountRequest, requestOptions: RequestOptions?) -> TableSettingsListAccountResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the signed-in user's saved table settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Api

private func main() async throws {
    let client = ApiClient(token: "<token>")

    _ = try await client.account.tableSettingsList(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TableSettingsListAccountRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

