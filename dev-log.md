## Flutter 雛型作成
```
cd <<root>>
flutter create --template=plugin --platforms=windows,linux,macos,android,ios 
```

```
cargo install flutter_rust_bridge_codegen
flutter_rust_bridge_codegen integrate -t plugin --rust-crate-name ubct --rust-crate-dir ./rust/ubct
flutter_rust_bridge_codegen generate
cargo build --manifest-path .\rust\ubct\Cargo.toml --release
```

```
git submodule add https://github.com/opencv/opencv.git rust/thirdparty/opencv
git submodule update --init --recursive
```

## Rust x Flutter Bridge
```
New-Item -ItemType File -Path .\rust\bridge\Cargo.toml -Force | Out-Null
New-Item -ItemType File -Path .\rust\bridge\src\lib.rs -Force | Out-Null
New-Item -ItemType File -Path .\rust\bridge\src\api.rs -Force | Out-Null
New-Item -ItemType File -Path .\rust\bridge\flutter_rust_bridge.yaml -Force | Out-Null
New-Item -ItemType File -Path .\rust\bridge\src\bridge_generated.rs -Force | Out-Null
```
### 自動生成
```
cd rust\bridge
# UNC 形式の絶対パス（\\?\D:\...）で rust_output を指定
flutter_rust_bridge_codegen generate `
  --rust-root . `
  --rust-input crate::api `
  --dart-output ../../lib/src/ffi `
  --rust-output '\\?\D:\Work\FRICK-ELDY\osc_upper_body_tracking\rust\bridge\src\bridge_generated.rs' `
  --no-web
```
```
cargo build --manifest-path rust\bridge\Cargo.toml --release
```
### ローダー
```
New-Item -ItemType File -Path .\lib\src\ffi\dylib_loader.dart -Force | Out-Null
New-Item -ItemType File -Path .\lib\src\osc_upper_body_tracking.dart -Force | Out-Null
```


