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

/// Service object for interacting with AWS RUM service.
///
/// With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about  your web application performance from actual user sessions in real time. The data collected includes page load  times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and  also see breakdowns by the browsers and devices that your customers use.  You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch  RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error  messages, stack traces, and user sessions. You can also use RUM to  understand the range of end-user impact including the number of users, geolocations, and browsers used.
public struct RUM: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RUM client
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
            service: "rum",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: RUMErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that data to RUM. The data includes performance and reliability information such as page load time, client-side errors,  and user behavior. You use this operation only to create a new app monitor. To update an existing app monitor, use UpdateAppMonitor instead. After you create an app monitor, sign in to the CloudWatch RUM console to get  the JavaScript code snippet to add to your web application. For more information, see How do I find a code snippet that I've already generated?
    /// API Reference: https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html
    public func createAppMonitor(_ input: CreateAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppMonitorResponse> {
        return self.client.execute(operation: "CreateAppMonitor", path: "/appmonitor", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing app monitor. This immediately stops the collection of data.
    public func deleteAppMonitor(_ input: DeleteAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppMonitorResponse> {
        return self.client.execute(operation: "DeleteAppMonitor", path: "/appmonitor/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the complete configuration information for one app monitor.
    public func getAppMonitor(_ input: GetAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppMonitorResponse> {
        return self.client.execute(operation: "GetAppMonitor", path: "/appmonitor/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    public func getAppMonitorData(_ input: GetAppMonitorDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppMonitorDataResponse> {
        return self.client.execute(operation: "GetAppMonitorData", path: "/appmonitor/{Name}/data", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    public func listAppMonitors(_ input: ListAppMonitorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppMonitorsResponse> {
        return self.client.execute(operation: "ListAppMonitors", path: "/appmonitors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with a CloudWatch RUM resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code  snippet that RUM generates for you to add to your application includes PutRumEvents operations to  send this data to RUM. Each PutRumEvents operation can send a batch of events from one user session.
    public func putRumEvents(_ input: PutRumEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRumEventsResponse> {
        return self.client.execute(operation: "PutRumEvents", path: "/appmonitors/{Id}/", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "dataplane.", logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently,  the only resources that  can be tagged app monitors. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags.  If you specify a new tag key for the resource,  this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see Tagging Amazon Web Services resources.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor configuration that you specify in this operation are changed. For any parameters that you omit, the existing values are kept. You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use TagResource. To create a new app monitor, use CreateAppMonitor. After you update an app monitor, sign in to the CloudWatch RUM console to get  the updated JavaScript code snippet to add to your web application. For more information, see How do I find a code snippet that I've already generated?
    public func updateAppMonitor(_ input: UpdateAppMonitorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppMonitorResponse> {
        return self.client.execute(operation: "UpdateAppMonitor", path: "/appmonitor/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension RUM {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RUM, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}