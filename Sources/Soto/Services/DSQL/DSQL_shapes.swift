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
#elseif canImport(FoundationEssentials)
import FoundationEssentials
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension DSQL {
    // MARK: Enums

    public enum ClusterStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleted = "DELETED"
        case deleting = "DELETING"
        case failed = "FAILED"
        case updating = "UPDATING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct ClusterSummary: AWSDecodableShape {
        /// The ARN of the cluster.
        public let arn: String
        /// The ID of the cluster.
        public let identifier: String

        @inlinable
        public init(arn: String, identifier: String) {
            self.arn = arn
            self.identifier = identifier
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case identifier = "identifier"
        }
    }

    public struct CreateClusterInput: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the  idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes  successfully, the subsequent retries with the same client token return the  result from the original successful request and they  have no additional effect. If you don't specify a client token, the Amazon Web Services SDK  automatically generates one.
        public let clientToken: String?
        /// If enabled, you can't delete your cluster. You must first disable this property before you can delete your cluster.
        public let deletionProtectionEnabled: Bool?
        /// A map of key and value pairs to use to tag your cluster.
        public let tags: [String: String]?

        @inlinable
        public init(clientToken: String? = CreateClusterInput.idempotencyToken(), deletionProtectionEnabled: Bool? = nil, tags: [String: String]? = nil) {
            self.clientToken = clientToken
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "clientToken"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case tags = "tags"
        }
    }

    public struct CreateClusterOutput: AWSDecodableShape {
        /// The ARN of the created cluster.
        public let arn: String
        /// The time of when  created the cluster.
        public let creationTime: Date
        /// Whether deletion protection is enabled on this cluster.
        public let deletionProtectionEnabled: Bool
        /// The ID of the created cluster.
        public let identifier: String
        /// The status of the created cluster.
        public let status: ClusterStatus

        @inlinable
        public init(arn: String, creationTime: Date, deletionProtectionEnabled: Bool, identifier: String, status: ClusterStatus) {
            self.arn = arn
            self.creationTime = creationTime
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.identifier = identifier
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case creationTime = "creationTime"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case identifier = "identifier"
            case status = "status"
        }
    }

    public struct CreateMultiRegionClustersInput: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the  idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes  successfully. The subsequent retries with the same client token return the  result from the original successful request and they  have no additional effect. If you don't specify a client token, the Amazon Web Services SDK  automatically generates one.
        public let clientToken: String?
        /// A mapping of properties to use when creating linked clusters.
        public let clusterProperties: [String: LinkedClusterProperties]?
        /// An array of the Regions in which you want to create additional clusters.
        public let linkedRegionList: [String]
        /// The witness Region of multi-Region clusters.
        public let witnessRegion: String

        @inlinable
        public init(clientToken: String? = CreateMultiRegionClustersInput.idempotencyToken(), clusterProperties: [String: LinkedClusterProperties]? = nil, linkedRegionList: [String], witnessRegion: String) {
            self.clientToken = clientToken
            self.clusterProperties = clusterProperties
            self.linkedRegionList = linkedRegionList
            self.witnessRegion = witnessRegion
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
            try self.clusterProperties?.forEach {
                try validate($0.key, name: "clusterProperties.key", parent: name, max: 20)
                try $0.value.validate(name: "\(name).clusterProperties[\"\($0.key)\"]")
            }
            try self.linkedRegionList.forEach {
                try validate($0, name: "linkedRegionList[]", parent: name, max: 20)
            }
            try self.validate(self.witnessRegion, name: "witnessRegion", parent: name, max: 20)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "clientToken"
            case clusterProperties = "clusterProperties"
            case linkedRegionList = "linkedRegionList"
            case witnessRegion = "witnessRegion"
        }
    }

    public struct CreateMultiRegionClustersOutput: AWSDecodableShape {
        /// An array that contains the ARNs of all linked clusters.
        public let linkedClusterArns: [String]

        @inlinable
        public init(linkedClusterArns: [String]) {
            self.linkedClusterArns = linkedClusterArns
        }

        private enum CodingKeys: String, CodingKey {
            case linkedClusterArns = "linkedClusterArns"
        }
    }

    public struct DeleteClusterInput: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the  idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes  successfully. The subsequent retries with the same client token return the  result from the original successful request and they  have no additional effect. If you don't specify a client token, the Amazon Web Services SDK  automatically generates one.
        public let clientToken: String?
        /// The ID of the cluster to delete.
        public let identifier: String

        @inlinable
        public init(clientToken: String? = DeleteClusterInput.idempotencyToken(), identifier: String) {
            self.clientToken = clientToken
            self.identifier = identifier
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.clientToken, key: "client-token")
            request.encodePath(self.identifier, key: "identifier")
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteClusterOutput: AWSDecodableShape {
        /// The ARN of the deleted cluster.
        public let arn: String
        /// The time of when the cluster was created.
        public let creationTime: Date
        /// Specifies whether deletion protection was enabled on the cluster.
        public let deletionProtectionEnabled: Bool
        /// The ID of the deleted cluster.
        public let identifier: String
        /// The status of the cluster.
        public let status: ClusterStatus

        @inlinable
        public init(arn: String, creationTime: Date, deletionProtectionEnabled: Bool, identifier: String, status: ClusterStatus) {
            self.arn = arn
            self.creationTime = creationTime
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.identifier = identifier
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case creationTime = "creationTime"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case identifier = "identifier"
            case status = "status"
        }
    }

    public struct DeleteMultiRegionClustersInput: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the  idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes  successfully. The subsequent retries with the same client token return the  result from the original successful request and they  have no additional effect. If you don't specify a client token, the Amazon Web Services SDK  automatically generates one.
        public let clientToken: String?
        /// The ARNs of the clusters linked to the cluster you want to delete.  also deletes these clusters as part of the operation.
        public let linkedClusterArns: [String]

        @inlinable
        public init(clientToken: String? = DeleteMultiRegionClustersInput.idempotencyToken(), linkedClusterArns: [String]) {
            self.clientToken = clientToken
            self.linkedClusterArns = linkedClusterArns
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.clientToken, key: "client-token")
            request.encodeQuery(self.linkedClusterArns, key: "linked-cluster-arns")
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetClusterInput: AWSEncodableShape {
        /// The ID of the cluster to retrieve.
        public let identifier: String

        @inlinable
        public init(identifier: String) {
            self.identifier = identifier
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.identifier, key: "identifier")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetClusterOutput: AWSDecodableShape {
        /// The ARN of the retrieved cluster.
        public let arn: String
        /// The time of when the cluster was created.
        public let creationTime: Date
        /// Whether deletion protection is enabled in this cluster.
        public let deletionProtectionEnabled: Bool
        /// The ID of the retrieved cluster.
        public let identifier: String
        /// The ARNs of the clusters linked to the retrieved cluster.
        public let linkedClusterArns: [String]?
        /// The status of the retrieved cluster.
        public let status: ClusterStatus
        /// The witness Region of the cluster. Applicable only for  multi-Region clusters.
        public let witnessRegion: String?

        @inlinable
        public init(arn: String, creationTime: Date, deletionProtectionEnabled: Bool, identifier: String, linkedClusterArns: [String]? = nil, status: ClusterStatus, witnessRegion: String? = nil) {
            self.arn = arn
            self.creationTime = creationTime
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.identifier = identifier
            self.linkedClusterArns = linkedClusterArns
            self.status = status
            self.witnessRegion = witnessRegion
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case creationTime = "creationTime"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case identifier = "identifier"
            case linkedClusterArns = "linkedClusterArns"
            case status = "status"
            case witnessRegion = "witnessRegion"
        }
    }

    public struct LinkedClusterProperties: AWSEncodableShape {
        /// Whether deletion protection is enabled.
        public let deletionProtectionEnabled: Bool?
        /// A map of key and value pairs the linked cluster is tagged with.
        public let tags: [String: String]?

        @inlinable
        public init(deletionProtectionEnabled: Bool? = nil, tags: [String: String]? = nil) {
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case tags = "tags"
        }
    }

    public struct ListClustersInput: AWSEncodableShape {
        /// An optional parameter that specifies the maximum number of results to return.  You can use nextToken to display the next page of results.
        public let maxResults: Int?
        /// If your initial ListClusters operation returns a nextToken, you can include the returned nextToken in following ListClusters operations,  which returns results in the next page.
        public let nextToken: String?

        @inlinable
        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self.maxResults, key: "max-results")
            request.encodeQuery(self.nextToken, key: "next-token")
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListClustersOutput: AWSDecodableShape {
        /// An array of the returned clusters.
        public let clusters: [ClusterSummary]
        /// If nextToken is returned, there are more results available. The value of  nextToken is a unique pagination token for each page. To retrieve the  next page, make the call again using the returned token.
        public let nextToken: String?

        @inlinable
        public init(clusters: [ClusterSummary], nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "clusters"
            case nextToken = "nextToken"
        }
    }

    public struct ListTagsForResourceInput: AWSEncodableShape {
        /// The ARN of the resource for which you want to list the tags.
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

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:.+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceOutput: AWSDecodableShape {
        /// A map of key and value pairs that you used to tag your resource.
        public let tags: [String: String]?

        @inlinable
        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceInput: AWSEncodableShape {
        /// The ARN of the resource that you want to tag.
        public let resourceArn: String
        /// A map of key and value pairs to use to tag your resource.
        public let tags: [String: String]

        @inlinable
        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.resourceArn, key: "resourceArn")
            try container.encode(self.tags, forKey: .tags)
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:.+$")
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct UntagResourceInput: AWSEncodableShape {
        /// The ARN of the resource from which to remove tags.
        public let resourceArn: String
        /// The array of keys of the tags that you want to remove.
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

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:.+$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^[a-zA-Z0-9_.:/=+\\-@ ]*$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateClusterInput: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the  idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes  successfully. The subsequent retries with the same client token return the  result from the original successful request and they  have no additional effect. If you don't specify a client token, the Amazon Web Services SDK  automatically generates one.
        public let clientToken: String?
        /// Specifies whether to enable deletion protection in your cluster.
        public let deletionProtectionEnabled: Bool?
        /// The ID of the cluster you want to update.
        public let identifier: String

        @inlinable
        public init(clientToken: String? = UpdateClusterInput.idempotencyToken(), deletionProtectionEnabled: Bool? = nil, identifier: String) {
            self.clientToken = clientToken
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.identifier = identifier
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(self.clientToken, forKey: .clientToken)
            try container.encodeIfPresent(self.deletionProtectionEnabled, forKey: .deletionProtectionEnabled)
            request.encodePath(self.identifier, key: "identifier")
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 128)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[!-~]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "clientToken"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
        }
    }

    public struct UpdateClusterOutput: AWSDecodableShape {
        /// The ARN of the updated cluster.
        public let arn: String
        /// The time of when the cluster was created.
        public let creationTime: Date
        /// Whether deletion protection is enabled for the updated cluster.
        public let deletionProtectionEnabled: Bool
        /// The ID of the cluster to update.
        public let identifier: String
        /// The ARNs of the clusters linked to the updated cluster. Applicable only for multi-Region clusters.
        public let linkedClusterArns: [String]?
        /// The status of the updated cluster.
        public let status: ClusterStatus
        /// The Region that receives all data you write to linked clusters.
        public let witnessRegion: String?

        @inlinable
        public init(arn: String, creationTime: Date, deletionProtectionEnabled: Bool, identifier: String, linkedClusterArns: [String]? = nil, status: ClusterStatus, witnessRegion: String? = nil) {
            self.arn = arn
            self.creationTime = creationTime
            self.deletionProtectionEnabled = deletionProtectionEnabled
            self.identifier = identifier
            self.linkedClusterArns = linkedClusterArns
            self.status = status
            self.witnessRegion = witnessRegion
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case creationTime = "creationTime"
            case deletionProtectionEnabled = "deletionProtectionEnabled"
            case identifier = "identifier"
            case linkedClusterArns = "linkedClusterArns"
            case status = "status"
            case witnessRegion = "witnessRegion"
        }
    }
}

// MARK: - Errors

/// Error enum for DSQL
public struct DSQLErrorType: AWSErrorType {
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

    /// initialize DSQL
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
    /// The submitted action has conflicts.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request processing has failed because of an unknown error,  exception or failure.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service limit was exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input failed to satisfy the constraints specified by an Amazon Web Services service.
    public static var validationException: Self { .init(.validationException) }
}

extension DSQLErrorType: Equatable {
    public static func == (lhs: DSQLErrorType, rhs: DSQLErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DSQLErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}