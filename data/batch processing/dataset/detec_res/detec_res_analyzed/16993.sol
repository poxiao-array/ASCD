'solc --version' running
'solc ./dataset/contracts/transaction_order/16993.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
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
	- ^0.4.21 (dataset/contracts/transaction_order/16993.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter SBCE.transfer(address,uint256)._to (dataset/contracts/transaction_order/16993.sol#51) is not in mixedCase
Parameter SBCE.transfer(address,uint256)._value (dataset/contracts/transaction_order/16993.sol#51) is not in mixedCase
Parameter SBCE.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/16993.sol#65) is not in mixedCase
Parameter SBCE.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/16993.sol#65) is not in mixedCase
Parameter SBCE.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/16993.sol#65) is not in mixedCase
Parameter SBCE.balanceOf(address)._owner (dataset/contracts/transaction_order/16993.sol#81) is not in mixedCase
Parameter SBCE.approve(address,uint256)._spender (dataset/contracts/transaction_order/16993.sol#87) is not in mixedCase
Parameter SBCE.approve(address,uint256)._value (dataset/contracts/transaction_order/16993.sol#87) is not in mixedCase
Parameter SBCE.allowance(address,address)._owner (dataset/contracts/transaction_order/16993.sol#94) is not in mixedCase
Parameter SBCE.allowance(address,address)._spender (dataset/contracts/transaction_order/16993.sol#94) is not in mixedCase
Parameter SBCE.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/16993.sol#99) is not in mixedCase
Parameter SBCE.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/16993.sol#99) is not in mixedCase
Parameter SBCE.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/16993.sol#107) is not in mixedCase
Parameter SBCE.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/16993.sol#107) is not in mixedCase
Parameter SBCE.burn(uint256)._value (dataset/contracts/transaction_order/16993.sol#119) is not in mixedCase
Parameter SBCE.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/16993.sol#127) is not in mixedCase
Parameter SBCE.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/16993.sol#127) is not in mixedCase
Parameter SBCE.setAirdropReceiver(address)._airdrop (dataset/contracts/transaction_order/16993.sol#142) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SBCE.SBCE(uint256,uint256) (dataset/contracts/transaction_order/16993.sol#38-43) uses literals with too many digits:
	- balances[owner] = initialSupply * 100000000 (dataset/contracts/transaction_order/16993.sol#40)
SBCE.SBCE(uint256,uint256) (dataset/contracts/transaction_order/16993.sol#38-43) uses literals with too many digits:
	- totalSupply_ = initialSupply * 100000000 (dataset/contracts/transaction_order/16993.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
SBCE.airdropConjured (dataset/contracts/transaction_order/16993.sol#20) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/16993.sol analyzed (1 contracts with 100 detectors), 23 result(s) found
