'solc --version' running
'solc ./dataset/contracts/transaction_order/36083.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/36083.sol:
./dataset/contracts/transaction_order/36083.sol:26:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            msg.sender.send(amount);
            ^---------------------^

INFO:Detectors:
ETHVault.Owner () shadows:
	- Owned.Owner ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
ETHVault.kill() () uses a dangerous strict equality:
	- require(bool)(this.balance == 0) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
ETHVault.withdraw(uint256) () ignores return value by msg.sender.send(amount) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Modifier Owned.onlyOwner() () does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected suicide(address)(msg.sender) ():
	- Usage of "suicide()" should be replaced with "selfdestruct()"
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
Variable Owned.Owner () is not in mixedCase
Variable ETHVault.Owner () is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/36083.sol analyzed (2 contracts with 100 detectors), 10 result(s) found
