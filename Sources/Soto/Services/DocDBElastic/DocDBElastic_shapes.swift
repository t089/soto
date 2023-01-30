//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

import Foundation
import SotoCore

extension DocDBElastic {
    // MARK: Enums

    public enum Auth: String, CustomStringConvertible, Codable, _SotoSendable {
        case plainText = "PLAIN_TEXT"
        case secretArn = "SECRET_ARN"
        public var description: String { return self.rawValue }
    }

    public enum Status: String, CustomStringConvertible, Codable, _SotoSendable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleting = "DELETING"
        case inaccessibleEncryptionCreds = "INACCESSIBLE_ENCRYPTION_CREDS"
        case invalidSecurityGroupId = "INVALID_SECURITY_GROUP_ID"
        case invalidSubnetId = "INVALID_SUBNET_ID"
        case ipAddressLimitExceeded = "IP_ADDRESS_LIMIT_EXCEEDED"
        case updating = "UPDATING"
        case vpcEndpointLimitExceeded = "VPC_ENDPOINT_LIMIT_EXCEEDED"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Cluster: AWSDecodableShape {
        /// The name of the Elastic DocumentDB cluster administrator.
        public let adminUserName: String
        /// The authentication type for the Elastic DocumentDB cluster.
        public let authType: Auth
        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String
        /// The URL used to connect to the Elastic DocumentDB cluster.
        public let clusterEndpoint: String
        /// The name of the Elastic DocumentDB cluster.
        public let clusterName: String
        /// The time when the Elastic DocumentDB cluster was created in Universal Coordinated Time (UTC).
        public let createTime: String
        /// The KMS key identifier to use to encrypt the Elastic DocumentDB cluster.
        public let kmsKeyId: String
        /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi
        public let preferredMaintenanceWindow: String
        /// The capacity of each shard in the Elastic DocumentDB cluster.
        public let shardCapacity: Int
        /// The number of shards in the  Elastic DocumentDB cluster.
        public let shardCount: Int
        /// The status of the Elastic DocumentDB cluster.
        public let status: Status
        /// The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
        public let subnetIds: [String]
        /// A list of EC2 VPC security groups associated with this cluster.
        public let vpcSecurityGroupIds: [String]

        public init(adminUserName: String, authType: Auth, clusterArn: String, clusterEndpoint: String, clusterName: String, createTime: String, kmsKeyId: String, preferredMaintenanceWindow: String, shardCapacity: Int, shardCount: Int, status: Status, subnetIds: [String], vpcSecurityGroupIds: [String]) {
            self.adminUserName = adminUserName
            self.authType = authType
            self.clusterArn = clusterArn
            self.clusterEndpoint = clusterEndpoint
            self.clusterName = clusterName
            self.createTime = createTime
            self.kmsKeyId = kmsKeyId
            self.preferredMaintenanceWindow = preferredMaintenanceWindow
            self.shardCapacity = shardCapacity
            self.shardCount = shardCount
            self.status = status
            self.subnetIds = subnetIds
            self.vpcSecurityGroupIds = vpcSecurityGroupIds
        }

        private enum CodingKeys: String, CodingKey {
            case adminUserName = "adminUserName"
            case authType = "authType"
            case clusterArn = "clusterArn"
            case clusterEndpoint = "clusterEndpoint"
            case clusterName = "clusterName"
            case createTime = "createTime"
            case kmsKeyId = "kmsKeyId"
            case preferredMaintenanceWindow = "preferredMaintenanceWindow"
            case shardCapacity = "shardCapacity"
            case shardCount = "shardCount"
            case status = "status"
            case subnetIds = "subnetIds"
            case vpcSecurityGroupIds = "vpcSecurityGroupIds"
        }
    }

    public struct ClusterInList: AWSDecodableShape {
        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String
        /// The name of the Elastic DocumentDB cluster.
        public let clusterName: String
        /// The status of the Elastic DocumentDB cluster.
        public let status: Status

        public init(clusterArn: String, clusterName: String, status: Status) {
            self.clusterArn = clusterArn
            self.clusterName = clusterName
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case clusterName = "clusterName"
            case status = "status"
        }
    }

    public struct ClusterSnapshot: AWSDecodableShape {
        /// The name of the Elastic DocumentDB cluster administrator.
        public let adminUserName: String
        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String
        /// The time when the Elastic DocumentDB cluster was created in Universal Coordinated Time (UTC).
        public let clusterCreationTime: String
        /// The KMS key identifier to use to encrypt the Elastic DocumentDB cluster.
        public let kmsKeyId: String
        /// The arn of the Elastic DocumentDB snapshot
        public let snapshotArn: String
        /// The time when the Elastic DocumentDB snapshot was created in Universal Coordinated Time (UTC).
        public let snapshotCreationTime: String
        /// The name of the Elastic DocumentDB snapshot.
        public let snapshotName: String
        /// The status of the Elastic DocumentDB snapshot.
        public let status: Status
        /// A list of the IDs of subnets associated with the DB cluster snapshot.
        public let subnetIds: [String]
        /// A list of the IDs of the VPC security groups associated with the cluster snapshot.
        public let vpcSecurityGroupIds: [String]

        public init(adminUserName: String, clusterArn: String, clusterCreationTime: String, kmsKeyId: String, snapshotArn: String, snapshotCreationTime: String, snapshotName: String, status: Status, subnetIds: [String], vpcSecurityGroupIds: [String]) {
            self.adminUserName = adminUserName
            self.clusterArn = clusterArn
            self.clusterCreationTime = clusterCreationTime
            self.kmsKeyId = kmsKeyId
            self.snapshotArn = snapshotArn
            self.snapshotCreationTime = snapshotCreationTime
            self.snapshotName = snapshotName
            self.status = status
            self.subnetIds = subnetIds
            self.vpcSecurityGroupIds = vpcSecurityGroupIds
        }

        private enum CodingKeys: String, CodingKey {
            case adminUserName = "adminUserName"
            case clusterArn = "clusterArn"
            case clusterCreationTime = "clusterCreationTime"
            case kmsKeyId = "kmsKeyId"
            case snapshotArn = "snapshotArn"
            case snapshotCreationTime = "snapshotCreationTime"
            case snapshotName = "snapshotName"
            case status = "status"
            case subnetIds = "subnetIds"
            case vpcSecurityGroupIds = "vpcSecurityGroupIds"
        }
    }

    public struct ClusterSnapshotInList: AWSDecodableShape {
        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String
        /// The arn of the Elastic DocumentDB snapshot
        public let snapshotArn: String
        /// The time when the Elastic DocumentDB snapshot was created in Universal Coordinated Time (UTC).
        public let snapshotCreationTime: String
        /// The name of the Elastic DocumentDB snapshot.
        public let snapshotName: String
        /// The status of the Elastic DocumentDB snapshot.
        public let status: Status

        public init(clusterArn: String, snapshotArn: String, snapshotCreationTime: String, snapshotName: String, status: Status) {
            self.clusterArn = clusterArn
            self.snapshotArn = snapshotArn
            self.snapshotCreationTime = snapshotCreationTime
            self.snapshotName = snapshotName
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case snapshotArn = "snapshotArn"
            case snapshotCreationTime = "snapshotCreationTime"
            case snapshotName = "snapshotName"
            case status = "status"
        }
    }

    public struct CreateClusterInput: AWSEncodableShape {
        /// The name of the Elastic DocumentDB cluster administrator.  Constraints:   Must be from 1 to 63 letters or numbers.   The first character must be a letter.   Cannot be a reserved word.
        public let adminUserName: String
        /// The password for the Elastic DocumentDB cluster administrator and can contain any printable ASCII characters.  Constraints:   Must contain from 8 to 100 characters.   Cannot contain a forward slash (/), double quote ("), or the "at" symbol (@).
        public let adminUserPassword: String
        /// The authentication type for the Elastic DocumentDB cluster.
        public let authType: Auth
        /// The client token for the Elastic DocumentDB cluster.
        public let clientToken: String?
        /// The name of the new Elastic DocumentDB cluster. This parameter is stored as a lowercase string.  Constraints:   Must contain from 1 to 63 letters, numbers, or hyphens.   The first character must be a letter.   Cannot end with a hyphen or contain two consecutive hyphens.    Example: my-cluster
        public let clusterName: String
        /// The KMS key identifier to use to encrypt the new Elastic DocumentDB cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a cluster using the same Amazon account that owns this KMS encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key. If an encryption key is not specified, Elastic DocumentDB uses the default encryption key that KMS creates for your account. Your account has a different default encryption key for each Amazon Region.
        public let kmsKeyId: String?
        /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi   Default: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.  Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun  Constraints: Minimum 30-minute window.
        public let preferredMaintenanceWindow: String?
        /// The capacity of each shard in the new Elastic DocumentDB cluster.
        public let shardCapacity: Int
        /// The number of shards to create in the new Elastic DocumentDB cluster.
        public let shardCount: Int
        /// The Amazon EC2 subnet IDs for the new Elastic DocumentDB cluster.
        public let subnetIds: [String]?
        /// The tags to be assigned to the new Elastic DocumentDB cluster.
        public let tags: [String: String]?
        /// A list of EC2 VPC security groups to associate with the new Elastic DocumentDB cluster.
        public let vpcSecurityGroupIds: [String]?

        public init(adminUserName: String, adminUserPassword: String, authType: Auth, clientToken: String? = CreateClusterInput.idempotencyToken(), clusterName: String, kmsKeyId: String? = nil, preferredMaintenanceWindow: String? = nil, shardCapacity: Int, shardCount: Int, subnetIds: [String]? = nil, tags: [String: String]? = nil, vpcSecurityGroupIds: [String]? = nil) {
            self.adminUserName = adminUserName
            self.adminUserPassword = adminUserPassword
            self.authType = authType
            self.clientToken = clientToken
            self.clusterName = clusterName
            self.kmsKeyId = kmsKeyId
            self.preferredMaintenanceWindow = preferredMaintenanceWindow
            self.shardCapacity = shardCapacity
            self.shardCount = shardCount
            self.subnetIds = subnetIds
            self.tags = tags
            self.vpcSecurityGroupIds = vpcSecurityGroupIds
        }

        public func validate(name: String) throws {
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case adminUserName = "adminUserName"
            case adminUserPassword = "adminUserPassword"
            case authType = "authType"
            case clientToken = "clientToken"
            case clusterName = "clusterName"
            case kmsKeyId = "kmsKeyId"
            case preferredMaintenanceWindow = "preferredMaintenanceWindow"
            case shardCapacity = "shardCapacity"
            case shardCount = "shardCount"
            case subnetIds = "subnetIds"
            case tags = "tags"
            case vpcSecurityGroupIds = "vpcSecurityGroupIds"
        }
    }

    public struct CreateClusterOutput: AWSDecodableShape {
        /// The new Elastic DocumentDB cluster that has been created.
        public let cluster: Cluster

        public init(cluster: Cluster) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct CreateClusterSnapshotInput: AWSEncodableShape {
        /// The arn of the Elastic DocumentDB cluster that the snapshot will be taken from.
        public let clusterArn: String
        /// The name of the Elastic DocumentDB snapshot.
        public let snapshotName: String
        /// The tags to be assigned to the new Elastic DocumentDB snapshot.
        public let tags: [String: String]?

        public init(clusterArn: String, snapshotName: String, tags: [String: String]? = nil) {
            self.clusterArn = clusterArn
            self.snapshotName = snapshotName
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case snapshotName = "snapshotName"
            case tags = "tags"
        }
    }

    public struct CreateClusterSnapshotOutput: AWSDecodableShape {
        /// Returns information about the new Elastic DocumentDB snapshot.
        public let snapshot: ClusterSnapshot

        public init(snapshot: ClusterSnapshot) {
            self.snapshot = snapshot
        }

        private enum CodingKeys: String, CodingKey {
            case snapshot = "snapshot"
        }
    }

    public struct DeleteClusterInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clusterArn", location: .uri("clusterArn"))
        ]

        /// The arn of the Elastic DocumentDB cluster that is to be deleted.
        public let clusterArn: String

        public init(clusterArn: String) {
            self.clusterArn = clusterArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteClusterOutput: AWSDecodableShape {
        /// Returns information about the newly deleted Elastic DocumentDB cluster.
        public let cluster: Cluster

        public init(cluster: Cluster) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct DeleteClusterSnapshotInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "snapshotArn", location: .uri("snapshotArn"))
        ]

        /// The arn of the Elastic DocumentDB snapshot that is to be deleted.
        public let snapshotArn: String

        public init(snapshotArn: String) {
            self.snapshotArn = snapshotArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteClusterSnapshotOutput: AWSDecodableShape {
        /// Returns information about the newly deleted Elastic DocumentDB snapshot.
        public let snapshot: ClusterSnapshot

        public init(snapshot: ClusterSnapshot) {
            self.snapshot = snapshot
        }

        private enum CodingKeys: String, CodingKey {
            case snapshot = "snapshot"
        }
    }

    public struct GetClusterInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clusterArn", location: .uri("clusterArn"))
        ]

        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String

        public init(clusterArn: String) {
            self.clusterArn = clusterArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetClusterOutput: AWSDecodableShape {
        /// Returns information about a specific Elastic DocumentDB cluster.
        public let cluster: Cluster

        public init(cluster: Cluster) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct GetClusterSnapshotInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "snapshotArn", location: .uri("snapshotArn"))
        ]

        /// The arn of the Elastic DocumentDB snapshot.
        public let snapshotArn: String

        public init(snapshotArn: String) {
            self.snapshotArn = snapshotArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetClusterSnapshotOutput: AWSDecodableShape {
        /// Returns information about a specific Elastic DocumentDB snapshot.
        public let snapshot: ClusterSnapshot

        public init(snapshot: ClusterSnapshot) {
            self.snapshot = snapshot
        }

        private enum CodingKeys: String, CodingKey {
            case snapshot = "snapshot"
        }
    }

    public struct ListClusterSnapshotsInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clusterArn", location: .querystring("clusterArn")),
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String?
        /// The maximum number of entries to recieve in the response.
        public let maxResults: Int?
        /// The nextToken which is used the get the next page of data.
        public let nextToken: String?

        public init(clusterArn: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.clusterArn = clusterArn
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListClusterSnapshotsOutput: AWSDecodableShape {
        /// The response will provide a nextToken if there is more data beyond the maxResults. If there is no more data in the responce, the nextToken will not be returned.
        public let nextToken: String?
        /// A list of Elastic DocumentDB snapshots for a specified cluster.
        public let snapshots: [ClusterSnapshotInList]?

        public init(nextToken: String? = nil, snapshots: [ClusterSnapshotInList]? = nil) {
            self.nextToken = nextToken
            self.snapshots = snapshots
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case snapshots = "snapshots"
        }
    }

    public struct ListClustersInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of entries to recieve in the response.
        public let maxResults: Int?
        /// The nextToken which is used the get the next page of data.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListClustersOutput: AWSDecodableShape {
        /// A list of Elastic DocumentDB cluster.
        public let clusters: [ClusterInList]?
        /// The response will provide a nextToken if there is more data beyond the maxResults. If there is no more data in the responce, the nextToken will not be returned.
        public let nextToken: String?

        public init(clusters: [ClusterInList]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "clusters"
            case nextToken = "nextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The arn of the Elastic DocumentDB resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The list of tags for the specified Elastic DocumentDB resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct RestoreClusterFromSnapshotInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "snapshotArn", location: .uri("snapshotArn"))
        ]

        /// The name of the Elastic DocumentDB cluster.
        public let clusterName: String
        /// The KMS key identifier to use to encrypt the new Elastic DocumentDB cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a cluster using the same Amazon account that owns this KMS encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key. If an encryption key is not specified here, Elastic DocumentDB uses the default encryption key that KMS creates for your account. Your account has a different default encryption key for each Amazon Region.
        public let kmsKeyId: String?
        /// The arn of the Elastic DocumentDB snapshot.
        public let snapshotArn: String
        /// The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
        public let subnetIds: [String]?
        /// A list of the tag names to be assigned to the restored DB cluster, in the form of an array of key-value pairs in which the key is the tag name and the value is the key value.
        public let tags: [String: String]?
        /// A list of EC2 VPC security groups to associate with the Elastic DocumentDB cluster.
        public let vpcSecurityGroupIds: [String]?

        public init(clusterName: String, kmsKeyId: String? = nil, snapshotArn: String, subnetIds: [String]? = nil, tags: [String: String]? = nil, vpcSecurityGroupIds: [String]? = nil) {
            self.clusterName = clusterName
            self.kmsKeyId = kmsKeyId
            self.snapshotArn = snapshotArn
            self.subnetIds = subnetIds
            self.tags = tags
            self.vpcSecurityGroupIds = vpcSecurityGroupIds
        }

        public func validate(name: String) throws {
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case clusterName = "clusterName"
            case kmsKeyId = "kmsKeyId"
            case subnetIds = "subnetIds"
            case tags = "tags"
            case vpcSecurityGroupIds = "vpcSecurityGroupIds"
        }
    }

    public struct RestoreClusterFromSnapshotOutput: AWSDecodableShape {
        /// Returns information about a the restored Elastic DocumentDB cluster.
        public let cluster: Cluster

        public init(cluster: Cluster) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The arn of the Elastic DocumentDB resource.
        public let resourceArn: String
        /// The tags to be assigned to the Elastic DocumentDB resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring("tagKeys"))
        ]

        /// The arn of the Elastic DocumentDB resource.
        public let resourceArn: String
        /// The tag keys to be removed from the Elastic DocumentDB resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^(?!aws:)[a-zA-Z+-=._:/]+$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateClusterInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clusterArn", location: .uri("clusterArn"))
        ]

        /// The password for the Elastic DocumentDB cluster administrator. This password can contain any printable ASCII character except forward slash (/), double quote ("), or the "at" symbol (@).  Constraints: Must contain from 8 to 100 characters.
        public let adminUserPassword: String?
        /// The authentication type for the Elastic DocumentDB cluster.
        public let authType: Auth?
        /// The client token for the Elastic DocumentDB cluster.
        public let clientToken: String?
        /// The arn of the Elastic DocumentDB cluster.
        public let clusterArn: String
        /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi   Default: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.  Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun  Constraints: Minimum 30-minute window.
        public let preferredMaintenanceWindow: String?
        /// The capacity of each shard in the Elastic DocumentDB cluster.
        public let shardCapacity: Int?
        /// The number of shards to create in the Elastic DocumentDB cluster.
        public let shardCount: Int?
        /// The number of shards to create in the Elastic DocumentDB cluster.
        public let subnetIds: [String]?
        /// A list of EC2 VPC security groups to associate with the new Elastic DocumentDB cluster.
        public let vpcSecurityGroupIds: [String]?

        public init(adminUserPassword: String? = nil, authType: Auth? = nil, clientToken: String? = UpdateClusterInput.idempotencyToken(), clusterArn: String, preferredMaintenanceWindow: String? = nil, shardCapacity: Int? = nil, shardCount: Int? = nil, subnetIds: [String]? = nil, vpcSecurityGroupIds: [String]? = nil) {
            self.adminUserPassword = adminUserPassword
            self.authType = authType
            self.clientToken = clientToken
            self.clusterArn = clusterArn
            self.preferredMaintenanceWindow = preferredMaintenanceWindow
            self.shardCapacity = shardCapacity
            self.shardCount = shardCount
            self.subnetIds = subnetIds
            self.vpcSecurityGroupIds = vpcSecurityGroupIds
        }

        private enum CodingKeys: String, CodingKey {
            case adminUserPassword = "adminUserPassword"
            case authType = "authType"
            case clientToken = "clientToken"
            case preferredMaintenanceWindow = "preferredMaintenanceWindow"
            case shardCapacity = "shardCapacity"
            case shardCount = "shardCount"
            case subnetIds = "subnetIds"
            case vpcSecurityGroupIds = "vpcSecurityGroupIds"
        }
    }

    public struct UpdateClusterOutput: AWSDecodableShape {
        /// Returns information about the updated Elastic DocumentDB cluster.
        public let cluster: Cluster

        public init(cluster: Cluster) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }
}

// MARK: - Errors

/// Error enum for DocDBElastic
public struct DocDBElasticErrorType: AWSErrorType {
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

    /// initialize DocDBElastic
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

    /// An exception that occurs when there are not sufficient permissions to perform an action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// There was an access conflict.
    public static var conflictException: Self { .init(.conflictException) }
    /// There was an internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource could not be located.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service quota for the action was exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// ThrottlingException will be thrown when request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// A structure defining a validation exception.
    public static var validationException: Self { .init(.validationException) }
}

extension DocDBElasticErrorType: Equatable {
    public static func == (lhs: DocDBElasticErrorType, rhs: DocDBElasticErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DocDBElasticErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}