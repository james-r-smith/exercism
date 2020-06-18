pub struct CodonsInfo<'a> {
    pairs: Vec<(&'a str, &'a str)>,
}

impl<'a> CodonsInfo<'a> {
    pub fn name_for(&self, codon: &str) -> Option<&'a str> {
        self.pairs
            .clone()
            .into_iter()
            .filter_map(|(key, val)| if key == codon { Some(val) } else { None })
            .next()
    }

    pub fn of_rna(&self, rna: &str) -> Option<Vec<&'a str>> {
        let v: Vec<&'a str> = rna
            .as_bytes()
            .chunks(3)
            .filter_map(|utf8_codon| std::str::from_utf8(utf8_codon).ok())
            .filter_map(|codon| self.name_for(codon))
            .take_while(|&codon| codon != "stop codon")
            .collect();
        if !v.is_empty() {
            Some(v)
        } else {
            None
        }
    }
}

pub fn parse<'a>(pairs: Vec<(&'a str, &'a str)>) -> CodonsInfo<'a> {
    CodonsInfo { pairs }
}
