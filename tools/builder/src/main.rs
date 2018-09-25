extern crate builder;

use std::env;
use std::process;

use builder::Config;

fn main() {

    let args: Vec<String> = env::args().collect();

    let config = Config::new(&args).unwrap_or_else(|err| {
        println!("Problem parsing arguments: {}", err);
        process::exit(1);
    });

    println!("Reading yml from {}", config.filename);
    println!("Push it? {}", config.push);

    if let Err(e) = builder::run(config) {
        println!("Application error: {}", e);

        process::exit(1);
    }
}
