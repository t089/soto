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
@_spi(SotoInternal) import SotoCore

extension MarketplaceDeployment {
    // MARK: Enums

    // MARK: Shapes

    public struct DeploymentParameterInput: AWSEncodableShape {
        /// The desired name of the deployment parameter. This is the identifier on which deployment parameters are keyed for a given buyer and product. If this name matches an existing deployment parameter, this request will update the existing resource.
        public let name: String
        /// The text to encrypt and store in the secret.
        public let secretString: String

        @inlinable
        public init(name: String, secretString: String) {
            self.name = name
            self.secretString = secretString
        }

        public func validate(name: String) throws {
            try self.validate(self.name, name: "name", parent: name, max: 400)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9/_+=.@-]+$")
            try self.validate(self.secretString, name: "secretString", parent: name, max: 15000)
            try self.validate(self.secretString, name: "secretString", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case secretString = "secretString"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) associated with the deployment parameter resource you want to list tags on.
        public let resourceArn: String

        @inlinable
        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "resourceArn")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// A map of key-value pairs, where each pair represents a tag present on the resource.
        public let tags: [String: String]?

        @inlinable
        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct PutDeploymentParameterRequest: AWSEncodableShape {
        /// The unique identifier of the agreement.
        public let agreementId: String
        /// The catalog related to the request. Fixed value: AWS Marketplace
        public let catalog: String
        /// The idempotency token for deployment parameters. A unique identifier for the new version.
        public let clientToken: String?
        /// The deployment parameter targeted to the acceptor of an agreement for which to create the AWS Secret Manager resource.
        public let deploymentParameter: DeploymentParameterInput
        /// The date when deployment parameters expire and are scheduled for deletion.
        public let expirationDate: Date?
        /// The product for which AWS Marketplace will save secrets for the buyer’s account.
        public let productId: String
        /// A map of key-value pairs, where each pair represents a tag saved to the resource. Tags will only be applied for create operations, and they'll be ignored if the resource already exists.
        public let tags: [String: String]?

        @inlinable
        public init(agreementId: String, catalog: String, clientToken: String? = PutDeploymentParameterRequest.idempotencyToken(), deploymentParameter: DeploymentParameterInput, expirationDate: Date? = nil, productId: String, tags: [String: String]? = nil) {
            self.agreementId = agreementId
            self.catalog = catalog
            self.clientToken = clientToken
            self.deploymentParameter = deploymentParameter
            self.expirationDate = expirationDate
            self.productId = productId
            self.tags = tags
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.agreementId, forKey: .agreementId)
            request.encodePath(self.catalog, key: "catalog")
            try container.encodeIfPresent(self.clientToken, forKey: .clientToken)
            try container.encode(self.deploymentParameter, forKey: .deploymentParameter)
            try container.encodeIfPresent(self.expirationDate, forKey: .expirationDate)
            request.encodePath(self.productId, key: "productId")
            try container.encodeIfPresent(self.tags, forKey: .tags)
        }

        public func validate(name: String) throws {
            try self.validate(self.agreementId, name: "agreementId", parent: name, max: 64)
            try self.validate(self.agreementId, name: "agreementId", parent: name, min: 1)
            try self.validate(self.agreementId, name: "agreementId", parent: name, pattern: "^[A-Za-z0-9_/-]+$")
            try self.validate(self.catalog, name: "catalog", parent: name, max: 64)
            try self.validate(self.catalog, name: "catalog", parent: name, min: 1)
            try self.validate(self.catalog, name: "catalog", parent: name, pattern: "^[a-zA-Z_-]+$")
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 32)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[a-zA-Z0-9/_+=.:@-]+$")
            try self.deploymentParameter.validate(name: "\(name).deploymentParameter")
            try self.validate(self.productId, name: "productId", parent: name, max: 64)
            try self.validate(self.productId, name: "productId", parent: name, min: 1)
            try self.validate(self.productId, name: "productId", parent: name, pattern: "^[A-Za-z0-9_/-]+$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^[a-zA-Z0-9/_+=.:@-]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[a-zA-Z0-9/_+=.:@-]+$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
        }

        private enum CodingKeys: String, CodingKey {
            case agreementId = "agreementId"
            case clientToken = "clientToken"
            case deploymentParameter = "deploymentParameter"
            case expirationDate = "expirationDate"
            case tags = "tags"
        }
    }

    public struct PutDeploymentParameterResponse: AWSDecodableShape {
        /// The unique identifier of the agreement.
        public let agreementId: String
        /// The unique identifier of the deployment parameter.
        public let deploymentParameterId: String
        /// The Amazon Resource Name (ARN) associated with the deployment parameter resource you want to create or update.
        public let resourceArn: String
        /// A map of key-value pairs, where each pair represents a tag saved to the resource. Tags will only be applied for create operations, and they'll be ignored if the resource already exists.
        public let tags: [String: String]?

        @inlinable
        public init(agreementId: String, deploymentParameterId: String, resourceArn: String, tags: [String: String]? = nil) {
            self.agreementId = agreementId
            self.deploymentParameterId = deploymentParameterId
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case agreementId = "agreementId"
            case deploymentParameterId = "deploymentParameterId"
            case resourceArn = "resourceArn"
            case tags = "tags"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) associated with the resource you want to tag.
        public let resourceArn: String
        /// A map of key-value pairs, where each pair represents a tag present on the resource.
        public let tags: [String: String]?

        @inlinable
        public init(resourceArn: String, tags: [String: String]? = nil) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "resourceArn")
            try container.encodeIfPresent(self.tags, forKey: .tags)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.
        public let resourceArn: String
        /// A list of key names of tags to be removed.
        public let tagKeys: [String]

        @inlinable
        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "resourceArn")
            request.encodeQuery(self.tagKeys, key: "tagKeys")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for MarketplaceDeployment
public struct MarketplaceDeploymentErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceDeployment
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request configuration has conflicts. For details, see the accompanying error message.
    public static var conflictException: Self { .init(.conflictException) }
    /// There was an internal service exception.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource wasn't found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The maximum number of requests per account has been exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Too many requests.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// An error occurred during validation.
    public static var validationException: Self { .init(.validationException) }
}

extension MarketplaceDeploymentErrorType: Equatable {
    public static func == (lhs: MarketplaceDeploymentErrorType, rhs: MarketplaceDeploymentErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceDeploymentErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}