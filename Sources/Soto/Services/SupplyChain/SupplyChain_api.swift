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

/// Service object for interacting with AWS SupplyChain service.
///
///  AWS Supply Chain is a cloud-based application that works with your enterprise resource planning (ERP) and supply chain management systems. Using AWS Supply Chain, you can connect and extract your inventory, supply, and demand related data from existing ERP or supply chain systems into a single data model.  The AWS Supply Chain API supports configuration data import for Supply Planning.  All AWS Supply chain API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies.
public struct SupplyChain: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SupplyChain client
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
            serviceName: "SupplyChain",
            serviceIdentifier: "scn",
            serviceProtocol: .restjson,
            apiVersion: "2024-01-01",
            endpoint: endpoint,
            errorType: SupplyChainErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of Materials (BOM) entity. For information on the product_bom entity, see the AWS Supply Chain User Guide. The CSV file must be located in an Amazon S3 location accessible to AWS Supply Chain. It is recommended to use the same Amazon S3 bucket created during your AWS Supply Chain instance creation.
    @Sendable
    @inlinable
    public func createBillOfMaterialsImportJob(_ input: CreateBillOfMaterialsImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBillOfMaterialsImportJobResponse {
        try await self.client.execute(
            operation: "CreateBillOfMaterialsImportJob", 
            path: "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of Materials (BOM) entity. For information on the product_bom entity, see the AWS Supply Chain User Guide. The CSV file must be located in an Amazon S3 location accessible to AWS Supply Chain. It is recommended to use the same Amazon S3 bucket created during your AWS Supply Chain instance creation.
    ///
    /// Parameters:
    ///   - clientToken: An idempotency token.
    ///   - instanceId: The AWS Supply Chain instance identifier.
    ///   - s3uri: The S3 URI of the CSV file to be imported. The bucket must grant permissions for AWS Supply Chain to read the file.
    ///   - logger: Logger use during operation
    @inlinable
    public func createBillOfMaterialsImportJob(
        clientToken: String? = CreateBillOfMaterialsImportJobRequest.idempotencyToken(),
        instanceId: String,
        s3uri: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> CreateBillOfMaterialsImportJobResponse {
        let input = CreateBillOfMaterialsImportJobRequest(
            clientToken: clientToken, 
            instanceId: instanceId, 
            s3uri: s3uri
        )
        return try await self.createBillOfMaterialsImportJob(input, logger: logger)
    }

    /// Get status and details of a BillOfMaterialsImportJob.
    @Sendable
    @inlinable
    public func getBillOfMaterialsImportJob(_ input: GetBillOfMaterialsImportJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetBillOfMaterialsImportJobResponse {
        try await self.client.execute(
            operation: "GetBillOfMaterialsImportJob", 
            path: "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Get status and details of a BillOfMaterialsImportJob.
    ///
    /// Parameters:
    ///   - instanceId: The AWS Supply Chain instance identifier.
    ///   - jobId: The BillOfMaterialsImportJob identifier.
    ///   - logger: Logger use during operation
    @inlinable
    public func getBillOfMaterialsImportJob(
        instanceId: String,
        jobId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetBillOfMaterialsImportJobResponse {
        let input = GetBillOfMaterialsImportJobRequest(
            instanceId: instanceId, 
            jobId: jobId
        )
        return try await self.getBillOfMaterialsImportJob(input, logger: logger)
    }

    /// Send the transactional data payload for the event with real-time data for analysis or monitoring. The real-time data events are stored in an Amazon Web Services service before being processed and stored in data lake.  New data events are synced with data lake at 5 PM GMT everyday. The updated transactional data is available in data lake after ingestion.
    @Sendable
    @inlinable
    public func sendDataIntegrationEvent(_ input: SendDataIntegrationEventRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendDataIntegrationEventResponse {
        try await self.client.execute(
            operation: "SendDataIntegrationEvent", 
            path: "/api-data/data-integration/instance/{instanceId}/data-integration-events", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Send the transactional data payload for the event with real-time data for analysis or monitoring. The real-time data events are stored in an Amazon Web Services service before being processed and stored in data lake.  New data events are synced with data lake at 5 PM GMT everyday. The updated transactional data is available in data lake after ingestion.
    ///
    /// Parameters:
    ///   - clientToken: The idempotent client token.
    ///   - data: The data payload of the event. For more information on the data schema to use, see Data entities supported in AWS Supply Chain .
    ///   - eventGroupId: Event identifier (for example, orderId for InboundOrder) used for data sharing or partitioning.
    ///   - eventTimestamp: The event timestamp (in epoch seconds).
    ///   - eventType: The data event type.
    ///   - instanceId: The AWS Supply Chain instance identifier.
    ///   - logger: Logger use during operation
    @inlinable
    public func sendDataIntegrationEvent(
        clientToken: String? = SendDataIntegrationEventRequest.idempotencyToken(),
        data: String,
        eventGroupId: String,
        eventTimestamp: Date? = nil,
        eventType: DataIntegrationEventType,
        instanceId: String,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> SendDataIntegrationEventResponse {
        let input = SendDataIntegrationEventRequest(
            clientToken: clientToken, 
            data: data, 
            eventGroupId: eventGroupId, 
            eventTimestamp: eventTimestamp, 
            eventType: eventType, 
            instanceId: instanceId
        )
        return try await self.sendDataIntegrationEvent(input, logger: logger)
    }
}

extension SupplyChain {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SupplyChain, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}