'solc --version' running
'solc ./dataset/contracts/transaction_order/35211.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
GTA.owner (dataset/contracts/transaction_order/35211.sol#243) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/35211.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/35211.sol#25-29) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/35211.sol#28) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
GTA.onlyUnlocked() (dataset/contracts/transaction_order/35211.sol#246-252) compares to a boolean constant:
	-require(bool)(false == locked) (dataset/contracts/transaction_order/35211.sol#249)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/35211.sol#144-148) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/35211.sol#132-137) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/35211.sol#126-130) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/35211.sol#139-142) is never used and should be removed
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
	- ^0.4.11 (dataset/contracts/transaction_order/35211.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/35211.sol#62) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/35211.sol#158) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/35211.sol#163) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/35211.sol#163) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/35211.sol#176) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/35211.sol#176) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/35211.sol#199) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/35211.sol#199) is not in mixedCase
Parameter GTA.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35211.sol#276) is not in mixedCase
Parameter GTA.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35211.sol#276) is not in mixedCase
Parameter GTA.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35211.sol#276) is not in mixedCase
Parameter GTA.transfer(address,uint256)._to (dataset/contracts/transaction_order/35211.sol#289) is not in mixedCase
Parameter GTA.transfer(address,uint256)._value (dataset/contracts/transaction_order/35211.sol#289) is not in mixedCase
Parameter GTA.burn(uint256)._value (dataset/contracts/transaction_order/35211.sol#343) is not in mixedCase
Variable GTA.OWNER_SUPPLY (dataset/contracts/transaction_order/35211.sol#242) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GTA.slitherConstructorVariables() (dataset/contracts/transaction_order/35211.sol#219-355) uses literals with too many digits:
	- OWNER_SUPPLY = 200000000000000000000000000 (dataset/contracts/transaction_order/35211.sol#242)
GTA.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/35211.sol#219-355) uses literals with too many digits:
	- MAXSUPPLY = 200000000000000000000000000 (dataset/contracts/transaction_order/35211.sol#237)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
GTA.OWNER_SUPPLY (dataset/contracts/transaction_order/35211.sol#242) should be constant 
GTA.decimals (dataset/contracts/transaction_order/35211.sol#241) should be constant 
GTA.name (dataset/contracts/transaction_order/35211.sol#239) should be constant 
GTA.symbol (dataset/contracts/transaction_order/35211.sol#240) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/35211.sol#41-44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/35211.sol analyzed (9 contracts with 100 detectors), 31 result(s) found
