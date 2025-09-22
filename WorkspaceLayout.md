# Workspace Layout

- Generated: 2025-09-22 09:42:57
- Root: `D:\Work\FRICK-ELDY\osc_upper_body_tracking`
- Max Depth: none
- Excludes: `.dart_tool, .git, .github, .gitignore, .gitmodules, .metadata, .vscode, CHANGELOG.md, LICENSE, README.md, WorkspaceLayout.md, analysis_options.yaml, android, bin, build, dev-log.md, dist, frb_generated.dart, frb_generated.io.dart, frb_generated.rs, frb_generated.web.dart, ios, linux, macos, pubspec.lock, pubspec.yaml, target, test, thirdparty, windows`

### Legend
- 0–4: ⚪ (無評価)
- 5–50: 🟢 (OK, 保持)
- 51–100: 🟡 (様子見, 早めに分割候補)
- 101–200: 🟠 (分割推奨)
- 200–: 🔴 (最優先で分割)

## Summaries

### 🛠 Flutter
| Path | Lines | Status | Summary |
|------|------:|:------:|---------|
| [example/lib/main.dart](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/example/lib/main.dart) | 60 | 🟡 | (no summary) |

---

### 🛠 Ubct
| Path | Lines | Status | Summary |
|------|------:|:------:|---------|
| [rust/ubct/src/api/mod.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/rust/ubct/src/api/mod.rs) | 1 | ⚪ | (no summary) |
| [rust/ubct/src/api/simple.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/rust/ubct/src/api/simple.rs) | 10 | 🟢 | (no summary) |
| [rust/ubct/src/lib.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/rust/ubct/src/lib.rs) | 2 | ⚪ | (no summary) |

---

### 🛠 xtask
| Path | Lines | Status | Summary |
|------|------:|:------:|---------|
| [xtask/src/cli.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/cli.rs) | 33 | 🟢 | clap で CLI 定義 |
| [xtask/src/config.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/config.rs) | 69 | 🟡 | 設定と既定の除外セット |
| [xtask/src/main.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/main.rs) | 27 | 🟢 | CLIエントリーポイント |
| [xtask/src/render/header.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/header.rs) | 28 | 🟢 | 先頭メタ情報とLegend出力 |
| [xtask/src/render/mod.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/mod.rs) | 26 | 🟢 | WorkspaceLayout.md の Markdown 出力 (facade) |
| [xtask/src/render/summaries/classify.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/summaries/classify.rs) | 17 | 🟢 | パスから Section を分類するユーティリティ |
| [xtask/src/render/summaries/collector.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/summaries/collector.rs) | 65 | 🟡 | Nodeツリーを走査してファイル行数・summaryを収集する処理 |
| [xtask/src/render/summaries/mod.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/summaries/mod.rs) | 28 | 🟢 | Summaries表の生成のエントリポイント（セクション収集＋Markdown出力） |
| [xtask/src/render/summaries/model.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/summaries/model.rs) | 36 | 🟢 | Summaries表で使うデータ型（Section, Row）の定義 |
| [xtask/src/render/summaries/writer.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/summaries/writer.rs) | 49 | 🟢 | SectionごとのテーブルMarkdownを組み立てて出力する処理 |
| [xtask/src/render/tree.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/tree.rs) | 51 | 🟡 | Tree 表示（コードブロック） |
| [xtask/src/render/utils.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/render/utils.rs) | 24 | 🟢 | 文字列ユーティリティ |
| [xtask/src/run.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/run.rs) | 37 | 🟢 | layout サブコマンドの実装 |
| [xtask/src/summary.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/summary.rs) | 37 | 🟢 | .rs/.wgsl の1行目から summary を抽出 |
| [xtask/src/tree/build.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/tree/build.rs) | 97 | 🟡 | 走査結果からツリー構築 |
| [xtask/src/tree/mod.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/tree/mod.rs) | 10 | 🟢 | ファイルツリー関連の公開インターフェース |
| [xtask/src/tree/model.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/tree/model.rs) | 12 | 🟢 | ツリーノードのデータ構造 |
| [xtask/src/tree/scan.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/tree/scan.rs) | 46 | 🟢 | ファイルシステム走査（ignoreを尊重） |
| [xtask/src/tree/util.rs](https://github.com/Shiftall/mc4ca_pnp_lib_poc/blob/main/xtask/src/tree/util.rs) | 25 | 🟢 | ツリー構築で使う小物ユーティリティ |

## Directory / File Tree

```
root/
├─ example/
│  ├─ integration_test/
│  │  ├─ plugin_integration_test.dart
│  │  └─ simple_test.dart
│  └─ lib/
│     └─ main.dart
├─ flutter_rust_bridge.yaml
├─ lib/
│  ├─ osc_upper_body_tracking.dart
│  ├─ osc_upper_body_tracking_method_channel.dart
│  ├─ osc_upper_body_tracking_platform_interface.dart
│  └─ src/
│     └─ rust/
│        └─ api/
│           └─ simple.dart
├─ rust/
│  └─ ubct/
│     ├─ Cargo.lock
│     ├─ Cargo.toml
│     └─ src/
│        ├─ api/
│        │  ├─ mod.rs
│        │  └─ simple.rs
│        └─ lib.rs
├─ test_driver/
│  └─ integration_test.dart
└─ xtask/
   ├─ Cargo.lock
   ├─ Cargo.toml
   └─ src/
      ├─ cli.rs — clap で CLI 定義
      ├─ config.rs — 設定と既定の除外セット
      ├─ main.rs — CLIエントリーポイント
      ├─ render/
      │  ├─ header.rs — 先頭メタ情報とLegend出力
      │  ├─ mod.rs — WorkspaceLayout.md の Markdown 出力 (facade)
      │  ├─ summaries/
      │  │  ├─ classify.rs — パスから Section を分類するユーティリティ
      │  │  ├─ collector.rs — Nodeツリーを走査してファイル行数・summaryを収集する処理
      │  │  ├─ mod.rs — Summaries表の生成のエントリポイント（セクション収集＋Markdown出力）
      │  │  ├─ model.rs — Summaries表で使うデータ型（Section, Row）の定義
      │  │  └─ writer.rs — SectionごとのテーブルMarkdownを組み立てて出力する処理
      │  ├─ tree.rs — Tree 表示（コードブロック）
      │  └─ utils.rs — 文字列ユーティリティ
      ├─ run.rs — layout サブコマンドの実装
      ├─ summary.rs — .rs/.wgsl の1行目から summary を抽出
      └─ tree/
         ├─ build.rs — 走査結果からツリー構築
         ├─ mod.rs — ファイルツリー関連の公開インターフェース
         ├─ model.rs — ツリーノードのデータ構造
         ├─ scan.rs — ファイルシステム走査（ignoreを尊重）
         └─ util.rs — ツリー構築で使う小物ユーティリティ
```

