'solc --version' running
'solc ./dataset/contracts/transaction_order/33068.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33068.sol:
./dataset/contracts/transaction_order/33068.sol:28:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/33068.sol:29:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/33068.sol:30:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    ^---------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/33068.sol:31:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success);
    ^------------------------------------------------------------------------^
./dataset/contracts/transaction_order/33068.sol:32:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining);
    ^----------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/33068.sol:41:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:52:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:64:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:68:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:74:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:100:5: Warning: No visibility specified. Defaulting to "public".
    function tokenRate() constant returns(uint) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:111:5: Warning: No visibility specified. Defaulting to "public".
    function HolyCoin(
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:132:5: Warning: No visibility specified. Defaulting to "public".
    function makeTokens() payable  {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:133:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (isFinalized) throw;
                       ^---^
./dataset/contracts/transaction_order/33068.sol:134:56: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (block.timestamp < fundingStartUnixTimestamp) throw;
                                                       ^---^
./dataset/contracts/transaction_order/33068.sol:135:54: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (block.timestamp > fundingEndUnixTimestamp) throw;
                                                     ^---^
./dataset/contracts/transaction_order/33068.sol:136:60: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.value < 100 finney || msg.value > 100 ether) throw; // 100 finney = 0.1 ether
                                                           ^---^
./dataset/contracts/transaction_order/33068.sol:142:45: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (tokenCreationCap < checkedSupply) throw;
                                            ^---^
./dataset/contracts/transaction_order/33068.sol:149:5: Warning: No visibility specified. Defaulting to "public".
    function() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:154:24: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (isFinalized) throw;
                       ^---^
./dataset/contracts/transaction_order/33068.sol:155:41: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if (msg.sender != ethFundDeposit) throw;
                                        ^---^
./dataset/contracts/transaction_order/33068.sol:157:89: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(block.timestamp <= fundingEndUnixTimestamp && totalSupply != tokenCreationCap) throw;
                                                                                        ^---^
./dataset/contracts/transaction_order/33068.sol:160:46: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
      if(!ethFundDeposit.send(this.balance)) throw;
                                             ^---^
./dataset/contracts/transaction_order/33068.sol:6:5: Warning: Function state mutability can be restricted to pure
    function safeAdd(uint256 x, uint256 y) internal returns(uint256) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:12:5: Warning: Function state mutability can be restricted to pure
    function safeSubtract(uint256 x, uint256 y) internal returns(uint256) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:18:5: Warning: Function state mutability can be restricted to pure
    function safeMult(uint256 x, uint256 y) internal returns(uint256) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33068.sol:100:5: Warning: Function state mutability can be restricted to pure
    function tokenRate() constant returns(uint) {
    ^
Spanning multiple lines.

INFO:Detectors:
HolyCoin.HolyCoin(address,address,address,uint256,uint256)._ethFundDeposit (dataset/contracts/transaction_order/33068.sol#112) lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit (dataset/contracts/transaction_order/33068.sol#119)
HolyCoin.HolyCoin(address,address,address,uint256,uint256)._holyFoundersFundDeposit (dataset/contracts/transaction_order/33068.sol#113) lacks a zero-check on :
		- holyFoundersFundDeposit = _holyFoundersFundDeposit (dataset/contracts/transaction_order/33068.sol#120)
HolyCoin.HolyCoin(address,address,address,uint256,uint256)._holyBountyFundDeposit (dataset/contracts/transaction_order/33068.sol#114) lacks a zero-check on :
		- holyBountyFundDeposit = _holyBountyFundDeposit (dataset/contracts/transaction_order/33068.sol#121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
HolyCoin.makeTokens() (dataset/contracts/transaction_order/33068.sol#132-147) uses timestamp for comparisons
	Dangerous comparisons:
	- block.timestamp < fundingStartUnixTimestamp (dataset/contracts/transaction_order/33068.sol#134)
	- block.timestamp > fundingEndUnixTimestamp (dataset/contracts/transaction_order/33068.sol#135)
HolyCoin.finalize() (dataset/contracts/transaction_order/33068.sol#153-161) uses timestamp for comparisons
	Dangerous comparisons:
	- block.timestamp <= fundingEndUnixTimestamp && totalSupply != tokenCreationCap (dataset/contracts/transaction_order/33068.sol#157)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
SafeMath.safeSubtract(uint256,uint256) (dataset/contracts/transaction_order/33068.sol#12-16) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#133):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#134):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#135):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#136):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#142):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#154):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#155):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#157):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/33068.sol#160):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/33068.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/33068.sol#41) is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/33068.sol#41) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/33068.sol#52) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/33068.sol#52) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/33068.sol#52) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/33068.sol#64) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/33068.sol#68) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/33068.sol#68) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/33068.sol#74) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/33068.sol#74) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
HolyCoin.version (dataset/contracts/transaction_order/33068.sol#87) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/33068.sol analyzed (4 contracts with 100 detectors), 28 result(s) found
