'solc --version' running
'solc ./dataset/contracts/transaction_order/39079.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
Pixel.row(uint32).addrs () is a local variable never initialized
Pixel.row(uint32).rgbs () is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected ! _spender.call(bytes4(bytes32(sha3()(receiveApproval(address,uint256,address,bytes)))),msg.sender,_value,this,_extraData) ():
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Pixel.size2 () is set pre-construction with a non-constant function or state variable:
	- size * size
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
Low level call in HumanStandardToken.approveAndCall(address,uint256,bytes) ():
	- ! _spender.call(bytes4(bytes32(sha3()(receiveApproval(address,uint256,address,bytes)))),msg.sender,_value,this,_extraData) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
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
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._spender () is not in mixedCase
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._value () is not in mixedCase
Parameter HumanStandardToken.approveAndCall(address,uint256,bytes)._extraData () is not in mixedCase
Parameter Pixel.set(uint32[],uint24[])._xys () is not in mixedCase
Parameter Pixel.set(uint32[],uint24[])._rgbs () is not in mixedCase
Parameter Pixel.unset(uint32[])._xys () is not in mixedCase
Parameter Pixel.row(uint32)._y () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
HumanStandardToken.version () is never used in Pixel ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
HumanStandardToken.version () should be constant 
Pixel.size () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
approveAndCall(address,uint256,bytes) should be declared external:
	- HumanStandardToken.approveAndCall(address,uint256,bytes) ()
set(uint32[],uint24[]) should be declared external:
	- Pixel.set(uint32[],uint24[]) ()
unset(uint32[]) should be declared external:
	- Pixel.unset(uint32[]) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/39079.sol analyzed (5 contracts with 100 detectors), 31 result(s) found
