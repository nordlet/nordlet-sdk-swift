import Foundation

public final class DeclarationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1DeclarationsLtIntrastatCompute(request: Requests.PostV1DeclarationsLtIntrastatComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIntrastatComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIntrastatComputeResponse.self
        )
    }

    public func postV1DeclarationsLtIvazGenerate(request: Requests.PostV1DeclarationsLtIvazGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIvazGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIvazGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtIntrastatObligation(request: Requests.PostV1DeclarationsLtIntrastatObligationRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIntrastatObligationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/obligation",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIntrastatObligationResponse.self
        )
    }

    public func postV1DeclarationsLtIsafGenerate(request: Requests.PostV1DeclarationsLtIsafGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIsafGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/isaf/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIsafGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtFr0600Compute(request: Requests.PostV1DeclarationsLtFr0600ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtFr0600ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/fr0600/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtFr0600ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtGpm313Compute(request: Requests.PostV1DeclarationsLtGpm313ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtGpm313ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/gpm313/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtGpm313ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtSamCompute(request: Requests.PostV1DeclarationsLtSamComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSamComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sam/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSamComputeResponse.self
        )
    }

    public func postV1DeclarationsLtSdGenerate(request: Requests.PostV1DeclarationsLtSdGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSdGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sd/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSdGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtSaftGenerate(request: Requests.PostV1DeclarationsLtSaftGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSaftGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/saft/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSaftGenerateResponse.self
        )
    }

    public func postV1DeclarationsEuOssCompute(request: Requests.PostV1DeclarationsEuOssComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuOssComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/oss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuOssComputeResponse.self
        )
    }

    public func postV1DeclarationsEuIossCompute(request: Requests.PostV1DeclarationsEuIossComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuIossComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/ioss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuIossComputeResponse.self
        )
    }

    public func postV1DeclarationsConfigsList(request: Requests.PostV1DeclarationsConfigsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsConfigsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsConfigsListResponse.self
        )
    }

    public func postV1DeclarationsConfigsUpdate(request: Requests.PostV1DeclarationsConfigsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsConfigsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsConfigsUpdateResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsCreate(request: Requests.PostV1DeclarationsSubmissionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsCreateResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsMark(request: Requests.PostV1DeclarationsSubmissionsMarkRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsMarkResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/mark",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsMarkResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsList(request: Requests.PostV1DeclarationsSubmissionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsListResponse.self
        )
    }
}