'solc --version' running
'solc ./dataset/contracts/transaction_order/28786.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
NicoToken.transferFrom(address,address,uint256).allowance () shadows:
	- NicoToken.allowance(address,address) () (function)
	- ERC20Interface.allowance(address,address) () (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
NicoToken.setPrice(uint256) () should emit an event for: 
	- tokensPerETH = tokensPerETH_ () 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
Parameter NicoToken.balanceOf(address)._owner () is not in mixedCase
Parameter NicoToken.transfer(address,uint256)._to () is not in mixedCase
Parameter NicoToken.transfer(address,uint256)._value () is not in mixedCase
Parameter NicoToken.transferFrom(address,address,uint256)._from () is not in mixedCase
Parameter NicoToken.transferFrom(address,address,uint256)._to () is not in mixedCase
Parameter NicoToken.transferFrom(address,address,uint256)._value () is not in mixedCase
Parameter NicoToken.approve(address,uint256)._spender () is not in mixedCase
Parameter NicoToken.approve(address,uint256)._value () is not in mixedCase
Parameter NicoToken.allowance(address,address)._owner () is not in mixedCase
Parameter NicoToken.allowance(address,address)._spender () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
NicoToken.name () is never used in NicoToken ()
NicoToken.symbol () is never used in NicoToken ()
NicoToken.decimals () is never used in NicoToken ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
NicoToken.decimals () should be constant 
NicoToken.name () should be constant 
NicoToken.symbol () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/28786.sol analyzed (3 contracts with 100 detectors), 21 result(s) found
