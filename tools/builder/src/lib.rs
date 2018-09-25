extern crate yaml_rust;
use yaml_rust::{YamlLoader, YamlEmitter};
use std::fs::File;
use std::io::prelude::*;
use std::error::Error;

pub struct Config {
    pub filename: String,
    pub push: bool,
}

impl Config {
    pub fn new(args: &[String]) -> Result<Config, &'static str> {
        if args.len() < 3 {
            return Err("not enough arguments");
        }
        let filename = args[1].clone();
        let push = args[2].clone() != "false";

        Ok(Config { filename, push })
    }
}

pub fn run(config: Config) -> Result<(), Box<Error>> {
    let mut f = File::open(config.filename).expect("file not found");

    let mut contents = String::new();
    f.read_to_string(&mut contents)
        .expect("something went wrong reading the file");

    println!("With text:\n{}", contents);
    
    let docs = YamlLoader::load_from_str(&contents).unwrap();

    // Multi document support, doc is a yaml::Yaml
    let doc = &docs[0];

    // Debug support
    println!("document parsed");
    println!("{:?}", doc);

    // Dump the YAML object
    let mut out_str = String::new();
    {
        let mut emitter = YamlEmitter::new(&mut out_str);
        emitter.dump(doc).unwrap(); // dump the YAML object to a String
    }
    println!("document as string");
    println!("{}", out_str);

    Ok(())
}
