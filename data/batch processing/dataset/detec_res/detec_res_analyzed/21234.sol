'solc --version' running
'solc ./dataset/contracts/transaction_order/21234.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
SPINToken.SPINToken(address,address,uint256,uint256)._ethFundDeposit () lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit ()
SPINToken.SPINToken(address,address,uint256,uint256)._SPINFundDeposit () lacks a zero-check on :
		- SPINFundDeposit = _SPINFundDeposit ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SafeMath.safeSubtract(uint256,uint256) () is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
SPINToken.SPINFund () is set pre-construction with a non-constant function or state variable:
	- 2000 * (10 ** 3) * 10 ** decimals
SPINToken.tokenCreationCap () is set pre-construction with a non-constant function or state variable:
	- 10 * (10 ** 6) * 10 ** decimals
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
Variable SPINToken.SPINFundDeposit () is not in mixedCase
Variable SPINToken.SPINFund () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SPINToken.name () is never used in SPINToken ()
SPINToken.symbol () is never used in SPINToken ()
SPINToken.version () is never used in SPINToken ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
SPINToken.decimals () should be constant 
SPINToken.name () should be constant 
SPINToken.symbol () should be constant 
SPINToken.version () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/21234.sol analyzed (4 contracts with 100 detectors), 27 result(s) found
