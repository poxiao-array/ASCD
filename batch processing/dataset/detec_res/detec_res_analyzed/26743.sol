'solc --version' running
'solc ./dataset/contracts/transaction_order/26743.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SmzTradingContract.setManager(address)._newManager (dataset/contracts/transaction_order/26743.sol#24) lacks a zero-check on :
		- manager = _newManager (dataset/contracts/transaction_order/26743.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SmzTradingContract.fallback() (dataset/contracts/transaction_order/26743.sol#30-63) compares to a boolean constant:
	-require(bool)(addressesDeposited[msg.sender] == false) (dataset/contracts/transaction_order/26743.sol#50)
SmzTradingContract.fallback() (dataset/contracts/transaction_order/26743.sol#30-63) compares to a boolean constant:
	-require(bool)(addressesAllowed[msg.sender] == true) (dataset/contracts/transaction_order/26743.sol#47)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.19 (dataset/contracts/transaction_order/26743.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter SmzTradingContract.setManager(address)._newManager (dataset/contracts/transaction_order/26743.sol#24) is not in mixedCase
Parameter SmzTradingContract.addAllowedAddress(address)._allowedAddress (dataset/contracts/transaction_order/26743.sol#66) is not in mixedCase
Parameter SmzTradingContract.removeAllowedAddress(address)._disallowedAddress (dataset/contracts/transaction_order/26743.sol#71) is not in mixedCase
Parameter SmzTradingContract.addMultipleAllowedAddresses(address[])._allowedAddresses (dataset/contracts/transaction_order/26743.sol#77) is not in mixedCase
Parameter SmzTradingContract.removeMultipleAllowedAddresses(address[])._disallowedAddresses (dataset/contracts/transaction_order/26743.sol#85) is not in mixedCase
Variable SmzTradingContract.RECEIVER_PAYOUT_THRESHOLD (dataset/contracts/transaction_order/26743.sol#7) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SmzTradingContract.RECEIVER_PAYOUT_THRESHOLD (dataset/contracts/transaction_order/26743.sol#7) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/26743.sol analyzed (1 contracts with 100 detectors), 12 result(s) found
