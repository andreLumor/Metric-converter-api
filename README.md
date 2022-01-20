
## Building and testing a metric converter api.
metric converter api
===  


## Requirements
* rvm ~> 1.29
* ruby ~> 3.1.0
* bundler ~>2.3.3
* rspec ~> 3.10

## How to run
### 1. Clone this repository
```
git clone https://github.com/andreLumor/log-parser.git
```

### 2. Install requirements
#### RVM
Install rvm version 1.29 for your system using this guide: https://rvm.io/rvm/install

#### Ruby
With rvm installed run the command
```
rvm install ruby 3.1.0
```
#### Bundler
To install Bundler, please type as follows:
```
gem install bundler 2.3.3
```
#### Other dependencies
Other dependencies, like rspec, shoud be installed by Bundler. To do so, type as follows:
```
bundle install
```
### 4. How to test with Rspec
If you want to run the automatized tests with Rspec, please type as follows:
```
bin/rspec
```

### 5. How to run 
To start the service, please type as follows:
```
rakeup
```

To use the converter, please type
```
http://localhost:9292/converter/[value]]/[original unit]/[unit after conversion]
```
> E.g., `http://localhost:9292/converter/300/foot/m`
