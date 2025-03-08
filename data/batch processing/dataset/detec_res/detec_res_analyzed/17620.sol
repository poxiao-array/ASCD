'solc --version' running
'solc ./dataset/contracts/transaction_order/17620.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/17620.sol:
./dataset/contracts/transaction_order/17620.sol:27:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/17620.sol:28:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/17620.sol:29:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    ^---------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/17620.sol:30:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success);
    ^------------------------------------------------------------------------^
./dataset/contracts/transaction_order/17620.sol:31:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining);
    ^----------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/17620.sol:40:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:51:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:63:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:67:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:74:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:109:5: Warning: No visibility specified. Defaulting to "public".
    function KWHToken(
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:126:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (isFinalized) throw;
                       ^---^
./dataset/contracts/transaction_order/17620.sol:127:27: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.value == 0) throw;
                          ^---^
./dataset/contracts/transaction_order/17620.sol:139:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (tokenCreationCap < checkedSupply) throw;  // odd fractions won't be found
                                            ^---^
./dataset/contracts/transaction_order/17620.sol:148:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:151:46: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
                                             ^---^
./dataset/contracts/transaction_order/17620.sol:156:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:159:46: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
                                             ^---^
./dataset/contracts/transaction_order/17620.sol:164:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:166:46: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!ethFundDeposit.send(this.balance)) throw;  // send the eth to kwh International
                                             ^---^
./dataset/contracts/transaction_order/17620.sol:171:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:173:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!kwhDeployer.send(5*10**decimals)) throw;  // send the eth to kwh International
                                            ^---^
./dataset/contracts/transaction_order/17620.sol:178:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:185:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                     ^---^
./dataset/contracts/transaction_order/17620.sol:192:42: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                         ^---^
./dataset/contracts/transaction_order/17620.sol:199:42: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                         ^---^
./dataset/contracts/transaction_order/17620.sol:206:42: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                         ^---^
./dataset/contracts/transaction_order/17620.sol:213:42: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
          if (msg.sender != kwhDeployer) throw; // locks finalize to the ultimate ETH owner
                                         ^---^
./dataset/contracts/transaction_order/17620.sol:5:4: Warning: Function state mutability can be restricted to pure
   function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
   ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:11:5: Warning: Function state mutability can be restricted to pure
    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17620.sol:17:5: Warning: Function state mutability can be restricted to pure
    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    ^
Spanning multiple lines.

INFO:Detectors:
KWHToken.setPreSaleTokenExchangeRate(uint256) (dataset/contracts/transaction_order/17620.sol#205-209) should emit an event for: 
	- preSaleTokenExchangeRate = _preSaleTokenExchangeRate (dataset/contracts/transaction_order/17620.sol#207) 
KWHToken.setIcoTokenExchangeRate(uint256) (dataset/contracts/transaction_order/17620.sol#212-216) should emit an event for: 
	- icoTokenExchangeRate = _icoTokenExchangeRate (dataset/contracts/transaction_order/17620.sol#214) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
KWHToken.KWHToken(address,address,address)._ethFundDeposit (dataset/contracts/transaction_order/17620.sol#110) lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit (dataset/contracts/transaction_order/17620.sol#116)
KWHToken.KWHToken(address,address,address)._kwhFundDeposit (dataset/contracts/transaction_order/17620.sol#111) lacks a zero-check on :
		- kwhFundDeposit = _kwhFundDeposit (dataset/contracts/transaction_order/17620.sol#117)
KWHToken.KWHToken(address,address,address)._kwhDeployer (dataset/contracts/transaction_order/17620.sol#112) lacks a zero-check on :
		- kwhDeployer = _kwhDeployer (dataset/contracts/transaction_order/17620.sol#118)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SafeMath.safeSubtract(uint256,uint256) (dataset/contracts/transaction_order/17620.sol#11-15) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#126):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#127):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#139):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#148):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#151):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#156):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#159):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#164):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#166):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#171):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#173):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#178):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#185):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#192):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#199):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#206):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/17620.sol#213):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/17620.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/17620.sol#40) is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/17620.sol#40) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/17620.sol#51) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/17620.sol#51) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/17620.sol#51) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/17620.sol#63) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/17620.sol#67) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/17620.sol#67) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/17620.sol#74) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/17620.sol#74) is not in mixedCase
Parameter KWHToken.setPreSaleTokenExchangeRate(uint256)._preSaleTokenExchangeRate (dataset/contracts/transaction_order/17620.sol#205) is not in mixedCase
Parameter KWHToken.setIcoTokenExchangeRate(uint256)._icoTokenExchangeRate (dataset/contracts/transaction_order/17620.sol#212) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
KWHToken.version (dataset/contracts/transaction_order/17620.sol#88) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/17620.sol analyzed (4 contracts with 100 detectors), 38 result(s) found
