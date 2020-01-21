const Propose = artifacts.require("Propose");

module.exports = function(deployer) {
  deployer.deploy(Propose);
};
