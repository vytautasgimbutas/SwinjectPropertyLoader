//
//  JsonPropertyLoaderSpec.swift
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

class JsonPropertyLoaderSpec: QuickSpec {
    override func spec() {
        it("can handle missing resource") {
            let loader = JsonPropertyLoader(bundle: Bundle(for: type(of: self).self), name: "noexist")
            expect {
                try loader.load()
            }.to(throwError(errorType: PropertyLoaderError.self))
        }
        it("can handle invalid resource") {
            let loader = JsonPropertyLoader(bundle: Bundle(for: type(of: self).self), name: "invalid")
            expect {
                try loader.load()
            }.to(throwError(errorType: PropertyLoaderError.self))
        }
    }
}
