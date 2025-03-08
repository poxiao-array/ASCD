'solc --version' running
'solc ./dataset/contracts/transaction_order/29235.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Creditcoin.Creditcoin(address).icoSalesAccount (dataset/contracts/transaction_order/29235.sol#77) lacks a zero-check on :
		- pool = icoSalesAccount (dataset/contracts/transaction_order/29235.sol#79)
Creditcoin.setMinter(address).newMinter (dataset/contracts/transaction_order/29235.sol#169) lacks a zero-check on :
		- minter = newMinter (dataset/contracts/transaction_order/29235.sol#170)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.18 (dataset/contracts/transaction_order/29235.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Creditcoin.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/29235.sol#61-174) uses literals with too many digits:
	- creditcoinLimitInFrac = 2000000000 * FRAC_IN1UNIT (dataset/contracts/transaction_order/29235.sol#56)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- TokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/29235.sol#4)
approveAndCall(address,uint256,bytes) should be declared external:
	- Creditcoin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/29235.sol#128-134)
	- Erc20Plus.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/29235.sol#20)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/29235.sol analyzed (6 contracts with 100 detectors), 7 result(s) found
