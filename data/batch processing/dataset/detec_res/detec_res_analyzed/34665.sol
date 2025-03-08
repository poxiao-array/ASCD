'solc --version' running
'solc ./dataset/contracts/transaction_order/34665.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/34665.sol#20-24) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/34665.sol#10-13) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/34665.sol#4-8) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/34665.sol#15-18) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/34665.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter SmartToken.balanceOf(address)._owner (dataset/contracts/transaction_order/34665.sol#67) is not in mixedCase
Parameter SmartToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/34665.sol#71) is not in mixedCase
Parameter SmartToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/34665.sol#71) is not in mixedCase
Parameter SmartToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34665.sol#79) is not in mixedCase
Parameter SmartToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34665.sol#79) is not in mixedCase
Parameter SmartToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/34665.sol#79) is not in mixedCase
Parameter SmartToken.allowance(address,address)._owner (dataset/contracts/transaction_order/34665.sol#91) is not in mixedCase
Parameter SmartToken.allowance(address,address)._spender (dataset/contracts/transaction_order/34665.sol#91) is not in mixedCase
Parameter SmartToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/34665.sol#95) is not in mixedCase
Parameter SmartToken.approve(address,uint256)._value (dataset/contracts/transaction_order/34665.sol#95) is not in mixedCase
Parameter SmartToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/34665.sol#101) is not in mixedCase
Parameter SmartToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/34665.sol#101) is not in mixedCase
Parameter SmartToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/34665.sol#107) is not in mixedCase
Parameter SmartToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/34665.sol#107) is not in mixedCase
Parameter SmartToken.burn(uint256)._value (dataset/contracts/transaction_order/34665.sol#118) is not in mixedCase
Parameter SmartToken.mint(address,uint256)._to (dataset/contracts/transaction_order/34665.sol#127) is not in mixedCase
Parameter SmartToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/34665.sol#127) is not in mixedCase
Parameter Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/34665.sol#156) is not in mixedCase
Parameter Token.transfer(address,uint256)._value (dataset/contracts/transaction_order/34665.sol#156) is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34665.sol#160) is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34665.sol#160) is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/34665.sol#160) is not in mixedCase
Parameter Token.withdrawSome(uint256)._value (dataset/contracts/transaction_order/34665.sol#172) is not in mixedCase
Parameter Token.killContract(uint256)._value (dataset/contracts/transaction_order/34665.sol#177) is not in mixedCase
Variable Token.INITIAL_SUPPLY (dataset/contracts/transaction_order/34665.sol#149) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Token.Token() (dataset/contracts/transaction_order/34665.sol#151-154) uses literals with too many digits:
	- mint(msg.sender,INITIAL_SUPPLY * 1000000) (dataset/contracts/transaction_order/34665.sol#153)
Token.slitherConstructorVariables() (dataset/contracts/transaction_order/34665.sol#143-182) uses literals with too many digits:
	- INITIAL_SUPPLY = 10000000 (dataset/contracts/transaction_order/34665.sol#149)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Token.INITIAL_SUPPLY (dataset/contracts/transaction_order/34665.sol#149) should be constant 
Token.decimals (dataset/contracts/transaction_order/34665.sol#148) should be constant 
Token.name (dataset/contracts/transaction_order/34665.sol#146) should be constant 
Token.symbol (dataset/contracts/transaction_order/34665.sol#147) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/34665.sol analyzed (4 contracts with 100 detectors), 37 result(s) found
