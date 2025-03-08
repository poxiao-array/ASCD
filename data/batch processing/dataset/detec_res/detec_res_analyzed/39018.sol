'solc --version' running
'solc ./dataset/contracts/transaction_order/39018.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
ICEToken.ICEToken(address,address,uint256,uint256)._ethFundDeposit () lacks a zero-check on :
		- ethFundDeposit = _ethFundDeposit ()
ICEToken.ICEToken(address,address,uint256,uint256)._iceFundDeposit () lacks a zero-check on :
		- iceFundDeposit = _iceFundDeposit ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
SafeMath.safeSubtract(uint256,uint256) () is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
ICEToken.iceFund () is set pre-construction with a non-constant function or state variable:
	- 500 * (10 ** 3) * 10 ** decimals
ICEToken.tokenCreationCap () is set pre-construction with a non-constant function or state variable:
	- 5 * (10 ** 6) * 10 ** decimals
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
ICEToken.name () is never used in ICEToken ()
ICEToken.symbol () is never used in ICEToken ()
ICEToken.version () is never used in ICEToken ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
ICEToken.decimals () should be constant 
ICEToken.name () should be constant 
ICEToken.symbol () should be constant 
ICEToken.version () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/39018.sol analyzed (4 contracts with 100 detectors), 25 result(s) found
