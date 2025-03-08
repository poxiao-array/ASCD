'solc --version' running
'solc ./dataset/contracts/transaction_order/30136.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
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
	- ^0.4.18 (dataset/contracts/transaction_order/30136.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/30136.sol#132) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/30136.sol#179) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/30136.sol#179) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/30136.sol#198) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/30136.sol#225) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/30136.sol#225) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/30136.sol#225) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/30136.sol#248) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/30136.sol#248) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/30136.sol#260) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/30136.sol#260) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/30136.sol#270) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/30136.sol#270) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/30136.sol#276) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/30136.sol#276) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SalPay.SalPay() (dataset/contracts/transaction_order/30136.sol#295-301) uses literals with too many digits:
	- totalSupply = 100000000 * (10 ** decimals) (dataset/contracts/transaction_order/30136.sol#296)
SalPay.SalPay() (dataset/contracts/transaction_order/30136.sol#295-301) uses literals with too many digits:
	- balances[msg.sender] = 80000000 * (10 ** decimals) (dataset/contracts/transaction_order/30136.sol#299)
SalPay.SalPay() (dataset/contracts/transaction_order/30136.sol#295-301) uses literals with too many digits:
	- balances[companyReserve] = 20000000 * (10 ** decimals) (dataset/contracts/transaction_order/30136.sol#300)
SalPay.slitherConstructorVariables() (dataset/contracts/transaction_order/30136.sol#290-310) uses literals with too many digits:
	- isUserAbleToTransferTime = 1546284400000 (dataset/contracts/transaction_order/30136.sol#139)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
UserTokensControl.isUserAbleToTransferTime (dataset/contracts/transaction_order/30136.sol#139) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/30136.sol analyzed (10 contracts with 100 detectors), 22 result(s) found
