//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

@_exported import SotoCore

/// Service object for interacting with AWS MigrationHubOrchestrator service.
///
/// This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Migration Hub Orchestrator. he topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using.
public struct MigrationHubOrchestrator: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MigrationHubOrchestrator client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "migrationhub-orchestrator",
            serviceProtocol: .restjson,
            apiVersion: "2021-08-28",
            endpoint: endpoint,
            errorType: MigrationHubOrchestratorErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Create a workflow to orchestrate your migrations.
    public func createWorkflow(_ input: CreateMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrationWorkflowResponse> {
        return self.client.execute(operation: "CreateWorkflow", path: "/migrationworkflow/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a step in the migration workflow.
    public func createWorkflowStep(_ input: CreateWorkflowStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkflowStepResponse> {
        return self.client.execute(operation: "CreateWorkflowStep", path: "/workflowstep", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a step group in a migration workflow.
    public func createWorkflowStepGroup(_ input: CreateWorkflowStepGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkflowStepGroupResponse> {
        return self.client.execute(operation: "CreateWorkflowStepGroup", path: "/workflowstepgroups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a migration workflow. You must pause a running workflow in Migration Hub Orchestrator console to delete it.
    public func deleteWorkflow(_ input: DeleteMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMigrationWorkflowResponse> {
        return self.client.execute(operation: "DeleteWorkflow", path: "/migrationworkflow/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a step in a migration workflow. Pause the workflow to delete a running step.
    public func deleteWorkflowStep(_ input: DeleteWorkflowStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkflowStepResponse> {
        return self.client.execute(operation: "DeleteWorkflowStep", path: "/workflowstep/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a step group in a migration workflow.
    public func deleteWorkflowStepGroup(_ input: DeleteWorkflowStepGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkflowStepGroupResponse> {
        return self.client.execute(operation: "DeleteWorkflowStepGroup", path: "/workflowstepgroup/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the template you want to use for creating a migration workflow.
    public func getTemplate(_ input: GetMigrationWorkflowTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMigrationWorkflowTemplateResponse> {
        return self.client.execute(operation: "GetTemplate", path: "/migrationworkflowtemplate/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a specific step in a template.
    public func getTemplateStep(_ input: GetTemplateStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTemplateStepResponse> {
        return self.client.execute(operation: "GetTemplateStep", path: "/templatestep/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a step group in a template.
    public func getTemplateStepGroup(_ input: GetTemplateStepGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTemplateStepGroupResponse> {
        return self.client.execute(operation: "GetTemplateStepGroup", path: "/templates/{templateId}/stepgroups/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get migration workflow.
    public func getWorkflow(_ input: GetMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMigrationWorkflowResponse> {
        return self.client.execute(operation: "GetWorkflow", path: "/migrationworkflow/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a step in the migration workflow.
    public func getWorkflowStep(_ input: GetWorkflowStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkflowStepResponse> {
        return self.client.execute(operation: "GetWorkflowStep", path: "/workflowstep/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the step group of a migration workflow.
    public func getWorkflowStepGroup(_ input: GetWorkflowStepGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkflowStepGroupResponse> {
        return self.client.execute(operation: "GetWorkflowStepGroup", path: "/workflowstepgroup/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List AWS Migration Hub Orchestrator plugins.
    public func listPlugins(_ input: ListPluginsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPluginsResponse> {
        return self.client.execute(operation: "ListPlugins", path: "/plugins", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags added to a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the step groups in a template.
    public func listTemplateStepGroups(_ input: ListTemplateStepGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTemplateStepGroupsResponse> {
        return self.client.execute(operation: "ListTemplateStepGroups", path: "/templatestepgroups/{templateId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the steps in a template.
    public func listTemplateSteps(_ input: ListTemplateStepsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTemplateStepsResponse> {
        return self.client.execute(operation: "ListTemplateSteps", path: "/templatesteps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the templates available in Migration Hub Orchestrator to create a migration workflow.
    public func listTemplates(_ input: ListMigrationWorkflowTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationWorkflowTemplatesResponse> {
        return self.client.execute(operation: "ListTemplates", path: "/migrationworkflowtemplates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the step groups in a migration workflow.
    public func listWorkflowStepGroups(_ input: ListWorkflowStepGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkflowStepGroupsResponse> {
        return self.client.execute(operation: "ListWorkflowStepGroups", path: "/workflowstepgroups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the steps in a workflow.
    public func listWorkflowSteps(_ input: ListWorkflowStepsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkflowStepsResponse> {
        return self.client.execute(operation: "ListWorkflowSteps", path: "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the migration workflows.
    public func listWorkflows(_ input: ListMigrationWorkflowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMigrationWorkflowsResponse> {
        return self.client.execute(operation: "ListWorkflows", path: "/migrationworkflows", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retry a failed step in a migration workflow.
    public func retryWorkflowStep(_ input: RetryWorkflowStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryWorkflowStepResponse> {
        return self.client.execute(operation: "RetryWorkflowStep", path: "/retryworkflowstep/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start a migration workflow.
    public func startWorkflow(_ input: StartMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMigrationWorkflowResponse> {
        return self.client.execute(operation: "StartWorkflow", path: "/migrationworkflow/{id}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stop an ongoing migration workflow.
    public func stopWorkflow(_ input: StopMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMigrationWorkflowResponse> {
        return self.client.execute(operation: "StopWorkflow", path: "/migrationworkflow/{id}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tag a resource by specifying its Amazon Resource Name (ARN).
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the tags for a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a migration workflow.
    public func updateWorkflow(_ input: UpdateMigrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMigrationWorkflowResponse> {
        return self.client.execute(operation: "UpdateWorkflow", path: "/migrationworkflow/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a step in a migration workflow.
    public func updateWorkflowStep(_ input: UpdateWorkflowStepRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkflowStepResponse> {
        return self.client.execute(operation: "UpdateWorkflowStep", path: "/workflowstep/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the step group in a migration workflow.
    public func updateWorkflowStepGroup(_ input: UpdateWorkflowStepGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkflowStepGroupResponse> {
        return self.client.execute(operation: "UpdateWorkflowStepGroup", path: "/workflowstepgroup/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension MigrationHubOrchestrator {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MigrationHubOrchestrator, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}