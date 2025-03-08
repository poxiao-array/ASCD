'solc --version' running
'solc ./dataset/contracts/transaction_order/39108.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
INFO:Detectors:
TokenGame.finalise() () sends eth to arbitrary user
	Dangerous calls:
	- ! owner.send(to_owner) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Token () has incorrect ERC20 function interface:Token.transfer(address,uint256) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Token.sealed () (state variable) shadows built-in symbol"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#builtin-symbol-shadowing
INFO:Detectors:
TokenGame.play() () uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= end_time) ()
	- extended_time > end_time ()
TokenGame.finalise() () uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > end_time) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
Parameter Token.transfer(address,uint256)._to () is not in mixedCase
Parameter Token.transfer(address,uint256)._value () is not in mixedCase
Parameter Token.approve(address,uint256)._spender () is not in mixedCase
Parameter Token.approve(address,uint256)._value () is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._from () is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._to () is not in mixedCase
Parameter Token.transferFrom(address,address,uint256)._value () is not in mixedCase
Parameter Token.mint(address,uint256)._to () is not in mixedCase
Parameter Token.mint(address,uint256)._value () is not in mixedCase
Variable TokenGame.cap_in_wei () is not in mixedCase
Variable TokenGame.initial_duration () is not in mixedCase
Variable TokenGame.time_extension_from_doubling () is not in mixedCase
Variable TokenGame.time_of_half_decay () is not in mixedCase
Variable TokenGame.excess_token () is not in mixedCase
Variable TokenGame.excess_withdraw () is not in mixedCase
Variable TokenGame.game_token () is not in mixedCase
Variable TokenGame.end_time () is not in mixedCase
Variable TokenGame.last_time () is not in mixedCase
Variable TokenGame.total_wei_given () is not in mixedCase
Variable ZeroCap.game_withdraw () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TokenGame.initial_duration () should be constant 
TokenGame.time_extension_from_doubling () should be constant 
TokenGame.time_of_half_decay () should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/39108.sol analyzed (4 contracts with 100 detectors), 31 result(s) found
