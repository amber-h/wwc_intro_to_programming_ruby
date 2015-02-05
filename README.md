# Intro to programming with Ruby

## Getting started

Make sure you have ruby installed. Check which version you have
installed by typing:

```bash
  $ ruby --version
```

Install the bundler gem

```bash
 $ gem install bundler
```

## Running the Tests

Bundle exec will run the command in the context of your gemset, avoiding version conflicts between the gems specified in your Gemfile and your global gemset 

```bash
 $ bundle exec rake
```

