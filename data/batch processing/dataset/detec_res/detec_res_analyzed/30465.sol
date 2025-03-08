'solc --version' running
'solc ./dataset/contracts/transaction_order/30465.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
ApisMelliferaToken.transferFrom(address,address,uint256).allowance () shadows:
	- ApisMelliferaToken.allowance(address,address) () (function)
	- ERC20Interface.allowance(address,address) () (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
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
Parameter ApisMelliferaToken.balanceOf(address)._owner () is not in mixedCase
Parameter ApisMelliferaToken.transfer(address,uint256)._to () is not in mixedCase
Parameter ApisMelliferaToken.transfer(address,uint256)._value () is not in mixedCase
Parameter ApisMelliferaToken.transferFrom(address,address,uint256)._from () is not in mixedCase
Parameter ApisMelliferaToken.transferFrom(address,address,uint256)._to () is not in mixedCase
Parameter ApisMelliferaToken.transferFrom(address,address,uint256)._value () is not in mixedCase
Parameter ApisMelliferaToken.approve(address,uint256)._spender () is not in mixedCase
Parameter ApisMelliferaToken.approve(address,uint256)._value () is not in mixedCase
Parameter ApisMelliferaToken.allowance(address,address)._owner () is not in mixedCase
Parameter ApisMelliferaToken.allowance(address,address)._spender () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ApisMelliferaToken.name () is never used in ApisMelliferaToken ()
ApisMelliferaToken.symbol () is never used in ApisMelliferaToken ()
ApisMelliferaToken.decimals () is never used in ApisMelliferaToken ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
ApisMelliferaToken.decimals () should be constant 
ApisMelliferaToken.name () should be constant 
ApisMelliferaToken.symbol () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/30465.sol analyzed (3 contracts with 100 detectors), 20 result(s) found
