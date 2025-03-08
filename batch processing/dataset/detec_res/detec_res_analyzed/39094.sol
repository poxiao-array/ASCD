'solc --version' running
'solc ./dataset/contracts/transaction_order/39094.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
BatLimitAsk.changeRate(uint256) () should emit an event for: 
	- BATsPerEth = _BATsPerEth () 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
BAToken.BAToken(address,address,uint256,uint256)._ethFundDeposit () lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit ()
BAToken.BAToken(address,address,uint256,uint256)._batFundDeposit () lacks a zero-check on :
		- batFundDeposit = _batFundDeposit ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Modifier BatLimitAsk.onlyOwner() () does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
BAToken.batFund () is set pre-construction with a non-constant function or state variable:
	- 500 * (10 ** 6) * 10 ** decimals
BAToken.tokenCreationCap () is set pre-construction with a non-constant function or state variable:
	- 1500 * (10 ** 6) * 10 ** decimals
BAToken.tokenCreationMin () is set pre-construction with a non-constant function or state variable:
	- 675 * (10 ** 6) * 10 ** decimals
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
Parameter BatLimitAsk.changeRate(uint256)._BATsPerEth () is not in mixedCase
Parameter BatLimitAsk.withdrawBAT(uint256)._amount () is not in mixedCase
Variable BatLimitAsk.BATsPerEth () is not in mixedCase
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
BAToken.name () is never used in BAToken ()
BAToken.symbol () is never used in BAToken ()
BAToken.version () is never used in BAToken ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
BAToken.decimals () should be constant 
BAToken.name () should be constant 
BAToken.symbol () should be constant 
BAToken.tokenExchangeRate () should be constant 
BAToken.version () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/39094.sol analyzed (5 contracts with 100 detectors), 31 result(s) found
