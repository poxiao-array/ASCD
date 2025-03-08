'solc --version' running
'solc ./dataset/contracts/transaction_order/20706.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/20706.sol:
./dataset/contracts/transaction_order/20706.sol:23:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20706.sol:57:3: Warning: No visibility specified. Defaulting to "public".
  function AirDrop(address _tokenAddress){
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20706.sol:86:3: Warning: No visibility specified. Defaulting to "public".
  function() payable {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/20706.sol:94:3: Warning: No visibility specified. Defaulting to "public".
  function kill() onlyOwner {
  ^
Spanning multiple lines.

INFO:Detectors:
AirDrop.doAirDrop(address[],uint256,uint256) (dataset/contracts/transaction_order/20706.sol#65-76) ignores return value by tokenInstance.transfer(_address[i],_amount) (dataset/contracts/transaction_order/20706.sol#70)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
AirDrop.doAirDrop(address[],uint256,uint256) (dataset/contracts/transaction_order/20706.sol#65-76) uses a dangerous strict equality:
	- (_address[i].balance == 0) && (this.balance >= _ethAmount) (dataset/contracts/transaction_order/20706.sol#71)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
AirDrop.doAirDrop(address[],uint256,uint256) (dataset/contracts/transaction_order/20706.sol#65-76) has external calls inside a loop: tokenInstance.transfer(_address[i],_amount) (dataset/contracts/transaction_order/20706.sol#70)
AirDrop.doAirDrop(address[],uint256,uint256) (dataset/contracts/transaction_order/20706.sol#65-76) has external calls inside a loop: require(bool)(_address[i].send(_ethAmount)) (dataset/contracts/transaction_order/20706.sol#73)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.19 (dataset/contracts/transaction_order/20706.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AirDrop.doAirDrop(address[],uint256,uint256)._address (dataset/contracts/transaction_order/20706.sol#65) is not in mixedCase
Parameter AirDrop.doAirDrop(address[],uint256,uint256)._amount (dataset/contracts/transaction_order/20706.sol#65) is not in mixedCase
Parameter AirDrop.doAirDrop(address[],uint256,uint256)._ethAmount (dataset/contracts/transaction_order/20706.sol#65) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
doAirDrop(address[],uint256,uint256) should be declared external:
	- AirDrop.doAirDrop(address[],uint256,uint256) (dataset/contracts/transaction_order/20706.sol#65-76)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/20706.sol analyzed (3 contracts with 100 detectors), 10 result(s) found
