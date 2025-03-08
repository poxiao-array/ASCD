'solc --version' running
'solc ./dataset/contracts/transaction_order/11695.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.21 (dataset/contracts/transaction_order/11695.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/11695.sol#144) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/11695.sol#144) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/11695.sol#159) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/11695.sol#200) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/11695.sol#200) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/11695.sol#200) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/11695.sol#222) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/11695.sol#222) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/11695.sol#234) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/11695.sol#234) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/11695.sol#248) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/11695.sol#248) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/11695.sol#264) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/11695.sol#264) is not in mixedCase
Parameter Free.safeWithdrawal(uint256)._value (dataset/contracts/transaction_order/11695.sol#316) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Free.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/11695.sol#277-326) uses literals with too many digits:
	- INITIAL_SUPPLY = 500000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/11695.sol#282)
Free.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/11695.sol#277-326) uses literals with too many digits:
	- FREE_SUPPLY = 350000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/11695.sol#283)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Free.user (dataset/contracts/transaction_order/11695.sol#284) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/11695.sol analyzed (7 contracts with 100 detectors), 20 result(s) found
