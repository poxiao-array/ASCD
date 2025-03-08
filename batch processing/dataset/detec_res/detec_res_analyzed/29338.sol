'solc --version' running
'solc ./dataset/contracts/transaction_order/29338.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/29338.sol:
./dataset/contracts/transaction_order/29338.sol:50:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:219:3: Warning: No visibility specified. Defaulting to "public".
  function increaseApproval (address _spender, uint _addedValue)
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:226:3: Warning: No visibility specified. Defaulting to "public".
  function decreaseApproval (address _spender, uint _subtractedValue)
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:8:3: Warning: Function state mutability can be restricted to pure
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:14:3: Warning: Function state mutability can be restricted to pure
  function div(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:21:3: Warning: Function state mutability can be restricted to pure
  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29338.sol:26:3: Warning: Function state mutability can be restricted to pure
  function add(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.

INFO:Detectors:
LOCIairdropper.transfer(address[],uint256[]) (dataset/contracts/transaction_order/29338.sol#258-266) ignores return value by token.transfer(_address[i],_values[i]) (dataset/contracts/transaction_order/29338.sol#262)
LOCIairdropper.ownerRecoverTokens(address) (dataset/contracts/transaction_order/29338.sol#280-288) ignores return value by token.transfer(_beneficiary,_tokensRemaining) (dataset/contracts/transaction_order/29338.sol#286)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
LOCIairdropper.transfer(address[],uint256[]) (dataset/contracts/transaction_order/29338.sol#258-266) has external calls inside a loop: token.transfer(_address[i],_values[i]) (dataset/contracts/transaction_order/29338.sol#262)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Reentrancy in LOCIairdropper.transfer(address[],uint256[]) (dataset/contracts/transaction_order/29338.sol#258-266):
	External calls:
	- token.transfer(_address[i],_values[i]) (dataset/contracts/transaction_order/29338.sol#262)
	Event emitted after the call(s):
	- AirDroppedTokens(_address.length) (dataset/contracts/transaction_order/29338.sol#265)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
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
	- ^0.4.18 (dataset/contracts/transaction_order/29338.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/29338.sol#133) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/29338.sol#133) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/29338.sol#148) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/29338.sol#172) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/29338.sol#172) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/29338.sol#172) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/29338.sol#197) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/29338.sol#197) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/29338.sol#209) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/29338.sol#209) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/29338.sol#219) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/29338.sol#219) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/29338.sol#226) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/29338.sol#226) is not in mixedCase
Parameter LOCIairdropper.transfer(address[],uint256[])._address (dataset/contracts/transaction_order/29338.sol#258) is not in mixedCase
Parameter LOCIairdropper.transfer(address[],uint256[])._values (dataset/contracts/transaction_order/29338.sol#258) is not in mixedCase
Parameter LOCIairdropper.ownerTransferWei(address,uint256)._beneficiary (dataset/contracts/transaction_order/29338.sol#269) is not in mixedCase
Parameter LOCIairdropper.ownerTransferWei(address,uint256)._value (dataset/contracts/transaction_order/29338.sol#269) is not in mixedCase
Parameter LOCIairdropper.ownerRecoverTokens(address)._beneficiary (dataset/contracts/transaction_order/29338.sol#280) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ERC20Basic.totalSupply (dataset/contracts/transaction_order/29338.sol#102) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/29338.sol#90-92)
transfer(address[],uint256[]) should be declared external:
	- LOCIairdropper.transfer(address[],uint256[]) (dataset/contracts/transaction_order/29338.sol#258-266)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/29338.sol analyzed (8 contracts with 100 detectors), 28 result(s) found
