'solc --version' running
'solc ./dataset/contracts/transaction_order/11058.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BackMeApp (dataset/contracts/transaction_order/11058.sol#3-72) contract sets array length with a user-controlled value:
	- ownerToEtherBoxes[msg.sender].push(etherBoxAddress) (dataset/contracts/transaction_order/11058.sol#45)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
BackMeApp.isExpired(address) (dataset/contracts/transaction_order/11058.sol#29) uses timestamp for comparisons
	Dangerous comparisons:
	- etherBoxes[_etherBoxAddress].expiration <= now (dataset/contracts/transaction_order/11058.sol#29)
BackMeApp.esteem(bytes32,string,address) (dataset/contracts/transaction_order/11058.sol#31-39) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(etherBox.expiration > now) (dataset/contracts/transaction_order/11058.sol#34)
BackMeApp.deleteEtherBox(address) (dataset/contracts/transaction_order/11058.sol#51-66) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(etherBoxes[_etherBoxAddress].owner == msg.sender) (dataset/contracts/transaction_order/11058.sol#52)
	- require(bool)(etherBoxes[_etherBoxAddress].expiration <= now) (dataset/contracts/transaction_order/11058.sol#53)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
BackMeApp.toggleFactoryPower() (dataset/contracts/transaction_order/11058.sol#69) compares to a boolean constant:
	-isShutDown == false (dataset/contracts/transaction_order/11058.sol#69)
BackMeApp.onlyWhenRunning() (dataset/contracts/transaction_order/11058.sol#24) compares to a boolean constant:
	-require(bool)(isShutDown == false) (dataset/contracts/transaction_order/11058.sol#24)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.24 (dataset/contracts/transaction_order/11058.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BackMeApp.getEtherBoxes(address)._owner (dataset/contracts/transaction_order/11058.sol#28) is not in mixedCase
Parameter BackMeApp.isExpired(address)._etherBoxAddress (dataset/contracts/transaction_order/11058.sol#29) is not in mixedCase
Parameter BackMeApp.esteem(bytes32,string,address)._nickname (dataset/contracts/transaction_order/11058.sol#31) is not in mixedCase
Parameter BackMeApp.esteem(bytes32,string,address)._message (dataset/contracts/transaction_order/11058.sol#31) is not in mixedCase
Parameter BackMeApp.esteem(bytes32,string,address)._to (dataset/contracts/transaction_order/11058.sol#31) is not in mixedCase
Parameter BackMeApp.publishEtherBox(bytes32,string,uint256)._label (dataset/contracts/transaction_order/11058.sol#41) is not in mixedCase
Parameter BackMeApp.publishEtherBox(bytes32,string,uint256)._ownerUrl (dataset/contracts/transaction_order/11058.sol#41) is not in mixedCase
Parameter BackMeApp.publishEtherBox(bytes32,string,uint256)._lifespan (dataset/contracts/transaction_order/11058.sol#41) is not in mixedCase
Parameter BackMeApp.deleteEtherBox(address)._etherBoxAddress (dataset/contracts/transaction_order/11058.sol#51) is not in mixedCase
Parameter BackMeApp.setMinEsteemAmount(uint256)._amount (dataset/contracts/transaction_order/11058.sol#68) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/11058.sol analyzed (1 contracts with 100 detectors), 18 result(s) found
