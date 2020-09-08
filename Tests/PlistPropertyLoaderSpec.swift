//
//  PlistPropertyLoaderSpec.swift
//  Swinject
//
//  Created by mike.owens on 12/6/15.
//  Copyright © 2015 Swinject Contributors. All rights reserved.
//

import Quick
import Nimble
import Swinject
import SwinjectPropertyLoader
import Foundation

class PlistPropertyLoaderSpec: QuickSpec {
    override func spec() {
        it("can handle missing resource") {
            let loader = PlistPropertyLoader(bundle: Bundle(for: type(of: self).self), name: "noexist")
            expect {
                try loader.load()
            }.to(throwError(errorType: PropertyLoaderError.self))
        }
        // No test for invalid since Xcode won't allow invalid plist files to be added to the bundle
    }
}
