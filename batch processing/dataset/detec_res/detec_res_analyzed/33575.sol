'solc --version' running
'solc ./dataset/contracts/transaction_order/33575.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33575.sol:
./dataset/contracts/transaction_order/33575.sol:40:9: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        throw;
        ^---^

INFO:Detectors:
RaiseFundsForACause.donate() (dataset/contracts/transaction_order/33575.sol#43-60) should emit an event for: 
	- totalAmountRaised += msg.value (dataset/contracts/transaction_order/33575.sol#58) 
RaiseFundsForACause.receiverSetAmountRequired(uint256) (dataset/contracts/transaction_order/33575.sol#63-71) should emit an event for: 
	- minimumAmountRequired = minimum (dataset/contracts/transaction_order/33575.sol#70) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
RaiseFundsForACause.donate() (dataset/contracts/transaction_order/33575.sol#43-60) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(block.timestamp < (timeStarted + expirationInSeconds)) (dataset/contracts/transaction_order/33575.sol#48)
RaiseFundsForACause.receiverWithdraw() (dataset/contracts/transaction_order/33575.sol#73-86) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(block.timestamp < (timeStarted + expirationInSeconds)) (dataset/contracts/transaction_order/33575.sol#79)
RaiseFundsForACause.withdraw() (dataset/contracts/transaction_order/33575.sol#88-100) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(block.timestamp > (timeStarted + expirationInSeconds)) (dataset/contracts/transaction_order/33575.sol#92)
RaiseFundsForACause.expirationTimestamp() (dataset/contracts/transaction_order/33575.sol#114-120) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)((timeStarted + expirationInSeconds) >= timeStarted) (dataset/contracts/transaction_order/33575.sol#118)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
RaiseFundsForACause.donate() (dataset/contracts/transaction_order/33575.sol#43-60) compares to a boolean constant:
	-require(bool)(hasBeenClaimed == false) (dataset/contracts/transaction_order/33575.sol#51)
RaiseFundsForACause.receiverWithdraw() (dataset/contracts/transaction_order/33575.sol#73-86) compares to a boolean constant:
	-require(bool)(hasBeenClaimed == false) (dataset/contracts/transaction_order/33575.sol#80)
RaiseFundsForACause.withdraw() (dataset/contracts/transaction_order/33575.sol#88-100) compares to a boolean constant:
	-require(bool)(hasBeenClaimed == false) (dataset/contracts/transaction_order/33575.sol#93)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/33575.sol#40):
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
	- ^0.4.17 (dataset/contracts/transaction_order/33575.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/33575.sol analyzed (1 contracts with 100 detectors), 12 result(s) found
