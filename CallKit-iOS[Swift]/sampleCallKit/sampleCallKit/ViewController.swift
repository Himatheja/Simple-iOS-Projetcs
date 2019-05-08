//
//  ViewController.swift
//  sampleCallKit
//
//  Created by Divum on 02/05/19.
//  Copyright © 2019 Divum. All rights reserved.
//

import UIKit
import  CallKit

class ViewController: UIViewController, CXProviderDelegate {

    @IBOutlet weak var callView: UIView!
    // RECIEVE A CALL
    override func viewDidLoad() {
        let provider = CXProvider(configuration: CXProviderConfiguration(localizedName: "My App"))
        provider.setDelegate(self, queue: nil)
        let update = CXCallUpdate()
        update.remoteHandle = CXHandle(type: .generic, value: "Pete Za")
        provider.reportNewIncomingCall(with: UUID(), update: update, completion: { error in })
    }

    func providerDidReset(_ provider: CXProvider) {
    }

    func provider(_ provider: CXProvider, perform action: CXAnswerCallAction) {
        callView.backgroundColor = UIColor.green
        action.fulfill()
    }

    func provider(_ provider: CXProvider, perform action: CXEndCallAction) {
        callView.backgroundColor = UIColor.red
        action.fulfill()
    }

    // SEND A CALL
//    override func viewDidLoad() {
//        let provider = CXProvider(configuration: CXProviderConfiguration(localizedName: "My App"))
//        provider.setDelegate(self, queue: nil)
//        let controller = CXCallController()
//        let transaction = CXTransaction(action: CXStartCallAction(call: UUID(), handle: CXHandle(type: .generic, value: "Himatej")))
//        controller.request(transaction, completion: { error in })
//    }

//    func providerDidReset(_ provider: CXProvider) {
//    }

    // CONNECT A CALL
//    override func viewDidLoad() {
//        let provider = CXProvider(configuration: CXProviderConfiguration(localizedName: "My App"))
//        provider.setDelegate(self, queue: nil)
//        let controller = CXCallController()
//        let transaction = CXTransaction(action: CXStartCallAction(call: UUID(), handle: CXHandle(type: .generic, value: "Pete Za")))
//        controller.request(transaction, completion: { error in })
//
//        DispatchQueue.main.asyncAfter(wallDeadline: DispatchWallTime.now() + 5) {
//            provider.reportOutgoingCall(with: controller.callObserver.calls[0].uuid, connectedAt: nil)
//        }
//    }
//
//    func providerDidReset(_ provider: CXProvider) {
//    }

}

