extern crate yaml_rust;

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn one_build() {
        let push = false;
        let contents = "\
builds:
  -
    directory: 10/jdk/slim
    tags:
      - 10-jdk";

        assert_eq!(
            vec!["docker build 10/jdk/slim openjdk:10-jdk"],
            create_command(contents, push)
        );
    }
}
