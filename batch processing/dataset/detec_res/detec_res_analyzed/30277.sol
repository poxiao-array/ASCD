'solc --version' running
'solc ./dataset/contracts/transaction_order/30277.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
UnlimitedAllowanceToken.transferFrom(address,address,uint256).allowance (dataset/contracts/transaction_order/30277.sol#237) shadows:
	- StandardToken.allowance(address,address) (dataset/contracts/transaction_order/30277.sol#146-148) (function)
	- ERC20.allowance(address,address) (dataset/contracts/transaction_order/30277.sol#51) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/30277.sol#195-199) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.18 (dataset/contracts/transaction_order/30277.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/30277.sol#72) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/30277.sol#72) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/30277.sol#88) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/30277.sol#112) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/30277.sol#112) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/30277.sol#112) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/30277.sol#134) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/30277.sol#134) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/30277.sol#146) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/30277.sol#146) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/30277.sol#156) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/30277.sol#156) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/30277.sol#162) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/30277.sol#162) is not in mixedCase
Parameter UnlimitedAllowanceToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/30277.sol#236) is not in mixedCase
Parameter UnlimitedAllowanceToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/30277.sol#236) is not in mixedCase
Parameter UnlimitedAllowanceToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/30277.sol#236) is not in mixedCase
Parameter EtherToken.blockTx(bool)._disableTx (dataset/contracts/transaction_order/30277.sol#291) is not in mixedCase
Parameter EtherToken.withdraw(uint256)._amount (dataset/contracts/transaction_order/30277.sol#346) is not in mixedCase
Parameter EtherToken.withdrawTo(address,uint256)._to (dataset/contracts/transaction_order/30277.sol#356) is not in mixedCase
Parameter EtherToken.withdrawTo(address,uint256)._amount (dataset/contracts/transaction_order/30277.sol#356) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/30277.sol analyzed (8 contracts with 100 detectors), 25 result(s) found
