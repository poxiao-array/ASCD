'solc --version' running
'solc ./dataset/contracts/transaction_order/39099.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/39099.sol:
./dataset/contracts/transaction_order/39099.sol:52:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            players[currentGamenumber][winner].send(this.balance);
            ^---------------------------------------------------^

INFO:Detectors:
dgame.fallback() () uses a weak PRNG: "winner = uint256(block.blockhash(block.number - 1)) % numPlayers ()" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
dgame.fallback() () uses a dangerous strict equality:
	- endRegisterTime == 0 ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
dgame.fallback() () ignores return value by players[currentGamenumber][winner].send(this.balance) ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
dgame.fallback() () uses timestamp for comparisons
	Dangerous comparisons:
	- endRegisterTime == 0 ()
	- now > endRegisterTime && numPlayers > 0 ()
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected THROW ():
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected winner = uint256(block.blockhash(block.number - 1)) % numPlayers ():
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
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
Contract dgame () is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/39099.sol analyzed (1 contracts with 100 detectors), 9 result(s) found
