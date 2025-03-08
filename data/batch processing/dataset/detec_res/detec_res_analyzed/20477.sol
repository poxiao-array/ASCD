'solc --version' running
'solc ./dataset/contracts/transaction_order/20477.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
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
	- ^0.4.18 (dataset/contracts/transaction_order/20477.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/20477.sol#85) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/20477.sol#85) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/20477.sol#101) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20477.sol#177) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20477.sol#177) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/20477.sol#177) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/20477.sol#199) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/20477.sol#199) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/20477.sol#211) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/20477.sol#211) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/20477.sol#225) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/20477.sol#225) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/20477.sol#241) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/20477.sol#241) is not in mixedCase
Parameter BurnableToken.burn(uint256)._value (dataset/contracts/transaction_order/20477.sol#266) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/20477.sol#304) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/20477.sol#304) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/20477.sol#339) is not in mixedCase
Variable MiamiToken.INITIAL_SUPPLY (dataset/contracts/transaction_order/20477.sol#349) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MiamiToken.INITIAL_SUPPLY (dataset/contracts/transaction_order/20477.sol#349) should be constant 
MiamiToken.decimals (dataset/contracts/transaction_order/20477.sol#348) should be constant 
MiamiToken.name (dataset/contracts/transaction_order/20477.sol#346) should be constant 
MiamiToken.symbol (dataset/contracts/transaction_order/20477.sol#347) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/20477.sol analyzed (10 contracts with 100 detectors), 25 result(s) found
