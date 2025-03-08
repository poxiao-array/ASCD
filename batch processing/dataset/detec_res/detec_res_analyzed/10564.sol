'solc --version' running
'solc ./dataset/contracts/transaction_order/10564.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MagicBox.transfer(address,uint256) (dataset/contracts/transaction_order/10564.sol#29-33) sends eth to arbitrary user
	Dangerous calls:
	- _to.transfer(_amount) (dataset/contracts/transaction_order/10564.sol#32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
MagicBox (dataset/contracts/transaction_order/10564.sol#22-46) has incorrect ERC20 function interface:MagicBox.transfer(address,uint256) (dataset/contracts/transaction_order/10564.sol#29-33)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
MagicBox.setCancelFee(uint256) (dataset/contracts/transaction_order/10564.sol#25-27) should emit an event for: 
	- cancelFee = _fee (dataset/contracts/transaction_order/10564.sol#26) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/10564.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter MagicBox.setCancelFee(uint256)._fee (dataset/contracts/transaction_order/10564.sol#25) is not in mixedCase
Parameter MagicBox.transfer(address,uint256)._to (dataset/contracts/transaction_order/10564.sol#29) is not in mixedCase
Parameter MagicBox.transfer(address,uint256)._amount (dataset/contracts/transaction_order/10564.sol#29) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/10564.sol analyzed (2 contracts with 100 detectors), 8 result(s) found
