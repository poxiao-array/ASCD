'solc --version' running
'solc ./dataset/contracts/transaction_order/37956.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SimpleAuction.bid() (dataset/contracts/transaction_order/37956.sol#59-85) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= (auctionStart + biddingTime)) (dataset/contracts/transaction_order/37956.sol#68)
SimpleAuction.auctionEnd() (dataset/contracts/transaction_order/37956.sol#111-135) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= (auctionStart + biddingTime)) (dataset/contracts/transaction_order/37956.sol#126)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/37956.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
SimpleAuction._beneficiary (dataset/contracts/transaction_order/37956.sol#44) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/37956.sol analyzed (1 contracts with 100 detectors), 5 result(s) found
