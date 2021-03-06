//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension SSOAdmin {
    ///  Lists the status of the AWS account assignment creation requests for a specified SSO instance.
    public func listAccountAssignmentCreationStatusPaginator(
        _ input: ListAccountAssignmentCreationStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentCreationStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignmentCreationStatus,
            tokenKey: \ListAccountAssignmentCreationStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the status of the AWS account assignment deletion requests for a specified SSO instance.
    public func listAccountAssignmentDeletionStatusPaginator(
        _ input: ListAccountAssignmentDeletionStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentDeletionStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignmentDeletionStatus,
            tokenKey: \ListAccountAssignmentDeletionStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the assignee of the specified AWS account with the specified permission set.
    public func listAccountAssignmentsPaginator(
        _ input: ListAccountAssignmentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignments,
            tokenKey: \ListAccountAssignmentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the AWS accounts where the specified permission set is provisioned.
    public func listAccountsForProvisionedPermissionSetPaginator(
        _ input: ListAccountsForProvisionedPermissionSetRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountsForProvisionedPermissionSetResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountsForProvisionedPermissionSet,
            tokenKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the SSO instances that the caller has access to.
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstances,
            tokenKey: \ListInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the IAM managed policy that is attached to a specified permission set.
    public func listManagedPoliciesInPermissionSetPaginator(
        _ input: ListManagedPoliciesInPermissionSetRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListManagedPoliciesInPermissionSetResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listManagedPoliciesInPermissionSet,
            tokenKey: \ListManagedPoliciesInPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the status of the permission set provisioning requests for a specified SSO instance.
    public func listPermissionSetProvisioningStatusPaginator(
        _ input: ListPermissionSetProvisioningStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetProvisioningStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSetProvisioningStatus,
            tokenKey: \ListPermissionSetProvisioningStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the PermissionSets in an SSO instance.
    public func listPermissionSetsPaginator(
        _ input: ListPermissionSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSets,
            tokenKey: \ListPermissionSetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the permission sets that are provisioned to a specified AWS account.
    public func listPermissionSetsProvisionedToAccountPaginator(
        _ input: ListPermissionSetsProvisionedToAccountRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetsProvisionedToAccountResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSetsProvisionedToAccount,
            tokenKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the tags that are attached to a specified resource.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SSOAdmin.ListAccountAssignmentCreationStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentCreationStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListAccountAssignmentDeletionStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentDeletionStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListAccountAssignmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentsRequest {
        return .init(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )
    }
}

extension SSOAdmin.ListAccountsForProvisionedPermissionSetRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountsForProvisionedPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn,
            provisioningStatus: self.provisioningStatus
        )
    }
}

extension SSOAdmin.ListInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListInstancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListManagedPoliciesInPermissionSetRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListManagedPoliciesInPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )
    }
}

extension SSOAdmin.ListPermissionSetProvisioningStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetProvisioningStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListPermissionSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListPermissionSetsProvisionedToAccountRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsProvisionedToAccountRequest {
        return .init(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningStatus: self.provisioningStatus
        )
    }
}

extension SSOAdmin.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListTagsForResourceRequest {
        return .init(
            instanceArn: self.instanceArn,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}
