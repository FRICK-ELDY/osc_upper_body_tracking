//! summary: Summaries表で使うデータ型（Section, Row）の定義
//! path: xtask/src/render/summaries/model.rs

#[derive(Debug, Clone, Eq, PartialEq, Ord, PartialOrd)]
pub enum Section {
    Flutter,
    Ubct,
    Xtask,
}

impl Section {
    pub fn title(&self) -> &'static str {
        match self {
            Section::Flutter => "### 🛠 Flutter",
            Section::Ubct => "### 🛠 Ubct",
            Section::Xtask => "### 🛠 xtask",
        }
    }

    /// 出力順を固定
    pub fn order() -> &'static [Section] {
        &[
            Section::Flutter,
            Section::Ubct,
            Section::Xtask,
        ]
    }
}

#[derive(Debug)]
pub struct Row {
    pub rel_path: String,
    pub lines: usize,
    pub status: &'static str,
    pub summary: Option<String>,
}
