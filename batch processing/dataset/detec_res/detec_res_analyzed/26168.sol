'solc --version' running
'solc ./dataset/contracts/transaction_order/26168.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26168.sol:
./dataset/contracts/transaction_order/26168.sol:234:5: Warning: Function is marked pure. Be careful, pureness is not enforced yet.
    function subToZero(uint a, uint b) pure internal returns (uint) {
    ^
Spanning multiple lines.

INFO:Detectors:
EtherGuess.isGuessesOpen() (dataset/contracts/transaction_order/26168.sol#120-134) uses a weak PRNG: "closedHour[uint8((now / 60 / 60) % 24)] (dataset/contracts/transaction_order/26168.sol#124)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
EtherGuess.setBotAddress(address) (dataset/contracts/transaction_order/26168.sol#54-56) should emit an event for: 
	- bot = newBot (dataset/contracts/transaction_order/26168.sol#55) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
EtherGuess.setBotAddress(address).newBot (dataset/contracts/transaction_order/26168.sol#54) lacks a zero-check on :
		- bot = newBot (dataset/contracts/transaction_order/26168.sol#55)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
EtherGuess.neglectGuess(int256) (dataset/contracts/transaction_order/26168.sol#270-278) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(lastFinish + NEGLECTGUESSTIMER < now) (dataset/contracts/transaction_order/26168.sol#271)
EtherGuess.neglectOwner() (dataset/contracts/transaction_order/26168.sol#280-286) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(lastFinish + NEGLECTOWNERTIMER < now) (dataset/contracts/transaction_order/26168.sol#281)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
EtherGuess.multiGuess(int256[]) (dataset/contracts/transaction_order/26168.sol#200-226) has costly operations inside a loop:
	- totalPayout += oldValue (dataset/contracts/transaction_order/26168.sol#208)
EtherGuess.multiGuess(int256[]) (dataset/contracts/transaction_order/26168.sol#200-226) has costly operations inside a loop:
	- Guess(msg.sender,currentRound,++ numberOfGuesses,multiGuesses[i],newValue) (dataset/contracts/transaction_order/26168.sol#217)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/26168.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
multiGuess(int256[]) should be declared external:
	- EtherGuess.multiGuess(int256[]) (dataset/contracts/transaction_order/26168.sol#200-226)
finishUpRound(int256,string) should be declared external:
	- EtherGuess.finishUpRound(int256,string) (dataset/contracts/transaction_order/26168.sol#243-268)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26168.sol analyzed (1 contracts with 100 detectors), 11 result(s) found
