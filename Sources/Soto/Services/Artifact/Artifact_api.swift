//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2024 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_exported import SotoCore

/// Service object for interacting with AWS Artifact service.
///
/// This reference provides descriptions of the low-level AWS Artifact Service API.
public struct Artifact: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Artifact client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "Artifact",
            serviceIdentifier: "artifact",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: ArtifactErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Get the account settings for Artifact.
    @Sendable
    @inlinable
    public func getAccountSettings(_ input: GetAccountSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccountSettingsResponse {
        try await self.client.execute(
            operation: "GetAccountSettings", 
            path: "/v1/account-settings/get", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Get the account settings for Artifact.
    ///
    /// Parameters:
    ///   - logger: Logger use during operation
    @inlinable
    public func getAccountSettings(
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetAccountSettingsResponse {
        let input = GetAccountSettingsRequest(
        )
        return try await self.getAccountSettings(input, logger: logger)
    }

    /// Get the content for a single report.
    @Sendable
    @inlinable
    public func getReport(_ input: GetReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetReportResponse {
        try await self.client.execute(
            operation: "GetReport", 
            path: "/v1/report/get", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Get the content for a single report.
    ///
    /// Parameters:
    ///   - reportId: Unique resource ID for the report resource.
    ///   - reportVersion: Version for the report resource.
    ///   - termToken: Unique download token provided by GetTermForReport API.
    ///   - logger: Logger use during operation
    @inlinable
    public func getReport(
        reportId: String,
        reportVersion: Int64? = nil,
        termToken: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetReportResponse {
        let input = GetReportRequest(
            reportId: reportId, 
            reportVersion: reportVersion, 
            termToken: termToken
        )
        return try await self.getReport(input, logger: logger)
    }

    /// Get the metadata for a single report.
    @Sendable
    @inlinable
    public func getReportMetadata(_ input: GetReportMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetReportMetadataResponse {
        try await self.client.execute(
            operation: "GetReportMetadata", 
            path: "/v1/report/getMetadata", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Get the metadata for a single report.
    ///
    /// Parameters:
    ///   - reportId: Unique resource ID for the report resource.
    ///   - reportVersion: Version for the report resource.
    ///   - logger: Logger use during operation
    @inlinable
    public func getReportMetadata(
        reportId: String,
        reportVersion: Int64? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetReportMetadataResponse {
        let input = GetReportMetadataRequest(
            reportId: reportId, 
            reportVersion: reportVersion
        )
        return try await self.getReportMetadata(input, logger: logger)
    }

    /// Get the Term content associated with a single report.
    @Sendable
    @inlinable
    public func getTermForReport(_ input: GetTermForReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTermForReportResponse {
        try await self.client.execute(
            operation: "GetTermForReport", 
            path: "/v1/report/getTermForReport", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Get the Term content associated with a single report.
    ///
    /// Parameters:
    ///   - reportId: Unique resource ID for the report resource.
    ///   - reportVersion: Version for the report resource.
    ///   - logger: Logger use during operation
    @inlinable
    public func getTermForReport(
        reportId: String,
        reportVersion: Int64? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetTermForReportResponse {
        let input = GetTermForReportRequest(
            reportId: reportId, 
            reportVersion: reportVersion
        )
        return try await self.getTermForReport(input, logger: logger)
    }

    /// List available reports.
    @Sendable
    @inlinable
    public func listReports(_ input: ListReportsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListReportsResponse {
        try await self.client.execute(
            operation: "ListReports", 
            path: "/v1/report/list", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// List available reports.
    ///
    /// Parameters:
    ///   - maxResults: Maximum number of resources to return in the paginated response.
    ///   - nextToken: Pagination token to request the next page of resources.
    ///   - logger: Logger use during operation
    @inlinable
    public func listReports(
        maxResults: Int? = nil,
        nextToken: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListReportsResponse {
        let input = ListReportsRequest(
            maxResults: maxResults, 
            nextToken: nextToken
        )
        return try await self.listReports(input, logger: logger)
    }

    /// Put the account settings for Artifact.
    @Sendable
    @inlinable
    public func putAccountSettings(_ input: PutAccountSettingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutAccountSettingsResponse {
        try await self.client.execute(
            operation: "PutAccountSettings", 
            path: "/v1/account-settings/put", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Put the account settings for Artifact.
    ///
    /// Parameters:
    ///   - notificationSubscriptionStatus: Desired notification subscription status.
    ///   - logger: Logger use during operation
    @inlinable
    public func putAccountSettings(
        notificationSubscriptionStatus: NotificationSubscriptionStatus? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> PutAccountSettingsResponse {
        let input = PutAccountSettingsRequest(
            notificationSubscriptionStatus: notificationSubscriptionStatus
        )
        return try await self.putAccountSettings(input, logger: logger)
    }
}

extension Artifact {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Artifact, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Artifact {
    /// Return PaginatorSequence for operation ``listReports(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listReportsPaginator(
        _ input: ListReportsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListReportsRequest, ListReportsResponse> {
        return .init(
            input: input,
            command: self.listReports,
            inputKey: \ListReportsRequest.nextToken,
            outputKey: \ListReportsResponse.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listReports(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: Maximum number of resources to return in the paginated response.
    ///   - logger: Logger used for logging
    @inlinable
    public func listReportsPaginator(
        maxResults: Int? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListReportsRequest, ListReportsResponse> {
        let input = ListReportsRequest(
            maxResults: maxResults
        )
        return self.listReportsPaginator(input, logger: logger)
    }
}

extension Artifact.ListReportsRequest: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> Artifact.ListReportsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}