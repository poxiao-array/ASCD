'solc --version' running
'solc ./dataset/contracts/transaction_order/36319.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BurnCoin.owner (dataset/contracts/transaction_order/36319.sol#198) shadows:
	- Ownable.owner (dataset/contracts/transaction_order/36319.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/36319.sol#15-19) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/36319.sol#18) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
BurnCoin.onlyUnlocked() (dataset/contracts/transaction_order/36319.sol#201-207) compares to a boolean constant:
	-require(bool)(false == locked) (dataset/contracts/transaction_order/36319.sol#204)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/36319.sol#112-116) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/36319.sol#102-105) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/36319.sol#96-100) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/36319.sol#107-110) is never used and should be removed
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
	- ^0.4.11 (dataset/contracts/transaction_order/36319.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/36319.sol#45) is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner (dataset/contracts/transaction_order/36319.sol#126) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/36319.sol#131) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/36319.sol#131) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/36319.sol#140) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/36319.sol#140) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._to (dataset/contracts/transaction_order/36319.sol#158) is not in mixedCase
Parameter MintableToken.mint(address,uint256)._amount (dataset/contracts/transaction_order/36319.sol#158) is not in mixedCase
Parameter BurnCoin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/36319.sol#231) is not in mixedCase
Parameter BurnCoin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/36319.sol#231) is not in mixedCase
Parameter BurnCoin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/36319.sol#231) is not in mixedCase
Parameter BurnCoin.transfer(address,uint256)._to (dataset/contracts/transaction_order/36319.sol#241) is not in mixedCase
Parameter BurnCoin.transfer(address,uint256)._value (dataset/contracts/transaction_order/36319.sol#241) is not in mixedCase
Parameter BurnCoin.burn(uint256)._value (dataset/contracts/transaction_order/36319.sol#287) is not in mixedCase
Constant BurnCoin.maxavailable (dataset/contracts/transaction_order/36319.sol#191) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BurnCoin.BurnCoin() (dataset/contracts/transaction_order/36319.sol#209-222) uses literals with too many digits:
	- endBlock = startBlock + 10000000 (dataset/contracts/transaction_order/36319.sol#211)
BurnCoin.slitherConstructorVariables() (dataset/contracts/transaction_order/36319.sol#178-299) uses literals with too many digits:
	- ownerstake = 5001000000000000000000 (dataset/contracts/transaction_order/36319.sol#197)
BurnCoin.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/36319.sol#178-299) uses literals with too many digits:
	- maxavailable = 10000000000000000000000 (dataset/contracts/transaction_order/36319.sol#191)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
BurnCoin.decimals (dataset/contracts/transaction_order/36319.sol#196) should be constant 
BurnCoin.name (dataset/contracts/transaction_order/36319.sol#193) should be constant 
BurnCoin.ownerstake (dataset/contracts/transaction_order/36319.sol#197) should be constant 
BurnCoin.symbol (dataset/contracts/transaction_order/36319.sol#195) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/36319.sol#27-30)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/36319.sol analyzed (9 contracts with 100 detectors), 32 result(s) found
