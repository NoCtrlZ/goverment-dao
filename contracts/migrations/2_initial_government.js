const Government = artifacts.require("Government");

module.exports = function(deployer) {
  deployer.deploy(Government);
};
