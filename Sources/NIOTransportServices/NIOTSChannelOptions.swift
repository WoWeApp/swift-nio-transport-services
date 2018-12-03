//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
// swift-tools-version:4.0
//
// swift-tools-version:4.0
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
import NIO


/// `NIOTSWaitForActivityOption` controls whether the `Channel` should wait for connection changes
/// during the connection process if the connection attempt fails. If Network.framework believes that
/// a connection may succeed in future, it may transition into the `.waiting` state. By default, this option
/// is set to `true` and NIO allows this state transition, though it does count time in that state against
/// the timeout. If this option is set to `false`, transitioning into this state will be treated the same as
/// transitioning into the `failed` state, causing immediate connection failure.
///
/// This option is only valid with `NIOTSConnectionBootstrap`.
public enum NIOTSWaitForActivityOption: ChannelOption {
    public typealias AssociatedValueType = ()
    public typealias OptionType = Bool

    case const(())
}


/// Options that can be set explicitly and only on bootstraps provided by `NIOTransportServices`.
public struct NIOTSChannelOptions {
    /// - seealso: `NIOTSWaitForActivityOption`.
    public static let waitForActivity = NIOTSWaitForActivityOption.const(())
}