'solc --version' running
'solc ./dataset/contracts/transaction_order/34751.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/34751.sol:
./dataset/contracts/transaction_order/34751.sol:17:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/34751.sol:19:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success);
    ^--------------------------------------------------------------------^
./dataset/contracts/transaction_order/34751.sol:21:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
    ^---------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/34751.sol:23:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success);
    ^------------------------------------------------------------------------^
./dataset/contracts/transaction_order/34751.sol:25:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining);
    ^----------------------------------------------------------------------------------------^
./dataset/contracts/transaction_order/34751.sol:37:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:45:5: Warning: No visibility specified. Defaulting to "public".
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:57:5: Warning: No visibility specified. Defaulting to "public".
    function balanceOf(address _owner) constant returns (uint256 balance) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:61:5: Warning: No visibility specified. Defaulting to "public".
    function approve(address _spender, uint256 _value) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:67:5: Warning: No visibility specified. Defaulting to "public".
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:83:5: Warning: No visibility specified. Defaulting to "public".
    function HumanStandardToken(
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:96:5: Warning: No visibility specified. Defaulting to "public".
    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:111:5: Warning: No visibility specified. Defaulting to "public".
    function Owned() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:120:5: Warning: No visibility specified. Defaulting to "public".
    function transferOwnership(address newOwner) onlyOwner {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/34751.sol:127:5: Warning: No visibility specified. Defaulting to "public".
    function Duplicator() HumanStandardToken(0, "Duplicator", 0, "DUP") {}
    ^--------------------------------------------------------------------^

INFO:Detectors:
Duplicator.sellAll() (dataset/contracts/transaction_order/34751.sol#144-156) uses a dangerous strict equality:
	- require(bool)(this.balance == totalSupply) (dataset/contracts/transaction_order/34751.sol#155)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
StandardToken.transferFrom(address,address,uint256).allowance (dataset/contracts/transaction_order/34751.sol#46) shadows:
	- StandardToken.allowance(address,address) (dataset/contracts/transaction_order/34751.sol#67-69) (function)
	- Token.allowance(address,address) (dataset/contracts/transaction_order/34751.sol#25) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Owned.transferOwnership(address) (dataset/contracts/transaction_order/34751.sol#120-122) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/34751.sol#121) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/34751.sol#120) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/34751.sol#121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/34751.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in HumanStandardToken.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/34751.sol#96-102):
	- require(bool)(_spender.call(bytes4(bytes32(keccak256()(receiveApproval(address,uint256,address,bytes)))),msg.sender,_value,this,_extraData)) (dataset/contracts/transaction_order/34751.sol#100)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/34751.sol#37) is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/34751.sol#37) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34751.sol#45) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34751.sol#45) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/34751.sol#45) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/34751.sol#57) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/34751.sol#61) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/34751.sol#61) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/34751.sol#67) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/34751.sol#67) is not in mixedCase
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/34751.sol#96) is not in mixedCase
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/34751.sol#96) is not in mixedCase
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/34751.sol#96) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
approveAndCall(address,uint256,bytes) should be declared external:
	- HumanStandardToken.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/34751.sol#96-102)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/34751.sol analyzed (5 contracts with 100 detectors), 21 result(s) found
