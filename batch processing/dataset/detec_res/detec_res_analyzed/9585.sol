'solc --version' running
'solc ./dataset/contracts/transaction_order/9585.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
forwardEth.setNewOwner(address) (dataset/contracts/transaction_order/9585.sol#18-20) should emit an event for: 
	- owner = _newOwner (dataset/contracts/transaction_order/9585.sol#19) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
forwardEth.setNewOwner(address)._newOwner (dataset/contracts/transaction_order/9585.sol#18) lacks a zero-check on :
		- owner = _newOwner (dataset/contracts/transaction_order/9585.sol#19)
forwardEth.setReceiver(address)._newReceiver (dataset/contracts/transaction_order/9585.sol#23) lacks a zero-check on :
		- destination = _newReceiver (dataset/contracts/transaction_order/9585.sol#24)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/9585.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract forwardEth (dataset/contracts/transaction_order/9585.sol#3-37) is not in CapWords
Parameter forwardEth.setNewOwner(address)._newOwner (dataset/contracts/transaction_order/9585.sol#18) is not in mixedCase
Parameter forwardEth.setReceiver(address)._newReceiver (dataset/contracts/transaction_order/9585.sol#23) is not in mixedCase
Function forwardEth._destroyContract() (dataset/contracts/transaction_order/9585.sol#33-35) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/9585.sol analyzed (1 contracts with 100 detectors), 9 result(s) found
