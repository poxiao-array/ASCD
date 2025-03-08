'solc --version' running
'solc ./dataset/contracts/transaction_order/35779.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
Indicoin.createTokens() () uses timestamp for comparisons
	Dangerous comparisons:
	- now < fundingStartTime ()
	- now > fundingEndTime ()
Indicoin.finalize() () uses timestamp for comparisons
	Dangerous comparisons:
	- now <= fundingEndTime && totalSupply != tokenCreationCap ()
Indicoin.refund() () uses timestamp for comparisons
	Dangerous comparisons:
	- now <= fundingEndTime ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Indicoin.indiFundAndSocialVault () is set pre-construction with a non-constant function or state variable:
	- 350 * (10 ** 6) * 10 ** decimals
Indicoin.bounty () is set pre-construction with a non-constant function or state variable:
	- 50 * (10 ** 6) * 10 ** decimals
Indicoin.sale () is set pre-construction with a non-constant function or state variable:
	- 200 * (10 ** 6) * 10 ** decimals
Indicoin.tokenCreationCap () is set pre-construction with a non-constant function or state variable:
	- 1000 * (10 ** 6) * 10 ** decimals
Indicoin.tokenCreationMin () is set pre-construction with a non-constant function or state variable:
	- 600 * (10 ** 6) * 10 ** decimals
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint ^0.4.10 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- SkipEmptyStringLiteral
	- ConstantOptimizerSubtraction.
It is used by:
	- ^0.4.10 ()
solc-0.4.10 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter StandardToken.transfer(address,uint256)._to () is not in mixedCase
Parameter StandardToken.transfer(address,uint256)._value () is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from () is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to () is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value () is not in mixedCase
Parameter StandardToken.balanceOf(address)._owner () is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender () is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value () is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner () is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Indicoin.name () is never used in Indicoin ()
Indicoin.symbol () is never used in Indicoin ()
Indicoin.version () is never used in Indicoin ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
Indicoin.decimals () should be constant 
Indicoin.name () should be constant 
Indicoin.symbol () should be constant 
Indicoin.tokenExchangeRate () should be constant 
Indicoin.version () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/35779.sol analyzed (4 contracts with 100 detectors), 28 result(s) found
