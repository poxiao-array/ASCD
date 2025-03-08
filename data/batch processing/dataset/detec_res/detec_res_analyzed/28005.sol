'solc --version' running
'solc ./dataset/contracts/transaction_order/28005.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SafeERC20.safeTransferFrom(ERC20,address,address,uint256) (dataset/contracts/transaction_order/28005.sol#62-64) uses arbitrary from in transferFrom: assert(bool)(token.transferFrom(from,to,value)) (dataset/contracts/transaction_order/28005.sol#63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
MEXCToken.canTransfer() (dataset/contracts/transaction_order/28005.sol#313-322) compares to a boolean constant:
	-require(bool)(gratuity[msg.sender] == false) (dataset/contracts/transaction_order/28005.sol#319)
MEXCToken.canTransfer() (dataset/contracts/transaction_order/28005.sol#313-322) compares to a boolean constant:
	-require(bool)(quarantined[msg.sender] == false) (dataset/contracts/transaction_order/28005.sol#318)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/28005.sol#26)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/28005.sol#118) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/28005.sol#147) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/28005.sol#147) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/28005.sol#163) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/28005.sol#179) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/28005.sol#179) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/28005.sol#179) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/28005.sol#201) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/28005.sol#201) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/28005.sol#213) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/28005.sol#213) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/28005.sol#227) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/28005.sol#227) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/28005.sol#243) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/28005.sol#243) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/28005.sol#273) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/28005.sol#273) is not in mixedCase
Parameter MEXCToken.quarantineAddress(address)._addr (dataset/contracts/transaction_order/28005.sol#337) is not in mixedCase
Parameter MEXCToken.unQuarantineAddress(address)._addr (dataset/contracts/transaction_order/28005.sol#342) is not in mixedCase
Parameter MEXCToken.lockAddress(address)._addr (dataset/contracts/transaction_order/28005.sol#347) is not in mixedCase
Parameter MEXCToken.unlockAddress(address)._addr (dataset/contracts/transaction_order/28005.sol#352) is not in mixedCase
Parameter MEXCToken.confiscate(address)._offender (dataset/contracts/transaction_order/28005.sol#363) is not in mixedCase
Parameter MEXCToken.mint(address,uint256)._to (dataset/contracts/transaction_order/28005.sol#379) is not in mixedCase
Parameter MEXCToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/28005.sol#379) is not in mixedCase
Parameter MEXCToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/28005.sol#389) is not in mixedCase
Parameter MEXCToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/28005.sol#389) is not in mixedCase
Parameter MEXCToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/28005.sol#399) is not in mixedCase
Parameter MEXCToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/28005.sol#399) is not in mixedCase
Parameter MEXCToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/28005.sol#399) is not in mixedCase
Parameter MEXCToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/28005.sol#413) is not in mixedCase
Parameter MEXCToken.approve(address,uint256)._value (dataset/contracts/transaction_order/28005.sol#413) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MEXCToken.decimals (dataset/contracts/transaction_order/28005.sol#296) should be constant 
MEXCToken.maxSupply (dataset/contracts/transaction_order/28005.sol#297) should be constant 
MEXCToken.name (dataset/contracts/transaction_order/28005.sol#294) should be constant 
MEXCToken.symbol (dataset/contracts/transaction_order/28005.sol#295) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/28005.sol analyzed (10 contracts with 100 detectors), 40 result(s) found
