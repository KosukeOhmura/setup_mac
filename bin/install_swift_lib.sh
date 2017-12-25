#!/bin/bash
cd ~/Downloads
git clone https://github.com/apple/swift-protobuf.git
cd swift-protobuf
swift build -c release -Xswiftc -static-stdlib
mv .build/release/protoc-gen-swift ~/.swift/bin/
cd ..
rm -r swift-protobuf
