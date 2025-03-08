'solc --version' running
'solc ./dataset/contracts/transaction_order/25179.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/25179.sol:
./dataset/contracts/transaction_order/25179.sol:127:32: Warning: "sha3" has been deprecated in favour of "keccak256"
        uint winner_num = uint(sha3(block.blockhash(block.number-1), seed ))%contests[_key].tickets_sold;
                               ^------------------------------------------^

INFO:Detectors:
BrandContest.closeContest(string) (dataset/contracts/transaction_order/25179.sol#124-130) uses a weak PRNG: "winner_num = uint256(sha3()(block.blockhash(block.number - 1),seed)) % contests[_key].tickets_sold (dataset/contracts/transaction_order/25179.sol#127)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
BrandContest.setCEO(address) (dataset/contracts/transaction_order/25179.sol#29-32) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/25179.sol#31) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
BrandContest.buyTicket(string) (dataset/contracts/transaction_order/25179.sol#34-46) compares to a boolean constant:
	-require(bool)(contest.open == true) (dataset/contracts/transaction_order/25179.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Deprecated standard detected winner_num = uint256(sha3()(block.blockhash(block.number - 1),seed)) % contests[_key].tickets_sold (dataset/contracts/transaction_order/25179.sol#127):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/25179.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BrandContest.setCEO(address)._newCEO (dataset/contracts/transaction_order/25179.sol#29) is not in mixedCase
Parameter BrandContest.buyTicket(string)._key (dataset/contracts/transaction_order/25179.sol#34) is not in mixedCase
Parameter BrandContest.buySlot(uint256)._slot (dataset/contracts/transaction_order/25179.sol#48) is not in mixedCase
Parameter BrandContest.getContest(string)._key (dataset/contracts/transaction_order/25179.sol#61) is not in mixedCase
Parameter BrandContest.getSlot(uint256)._slot (dataset/contracts/transaction_order/25179.sol#80) is not in mixedCase
Parameter BrandContest.getTickets(string)._key (dataset/contracts/transaction_order/25179.sol#92) is not in mixedCase
Parameter BrandContest.getMyTickets(string,address)._key (dataset/contracts/transaction_order/25179.sol#102) is not in mixedCase
Parameter BrandContest.getMyTickets(string,address)._address (dataset/contracts/transaction_order/25179.sol#102) is not in mixedCase
Parameter BrandContest.createContest(string,uint256)._key (dataset/contracts/transaction_order/25179.sol#114) is not in mixedCase
Parameter BrandContest.createContest(string,uint256)._ticket_price (dataset/contracts/transaction_order/25179.sol#114) is not in mixedCase
Parameter BrandContest.createSlot(uint256,uint256)._slot (dataset/contracts/transaction_order/25179.sol#119) is not in mixedCase
Parameter BrandContest.createSlot(uint256,uint256)._price (dataset/contracts/transaction_order/25179.sol#119) is not in mixedCase
Parameter BrandContest.closeContest(string)._key (dataset/contracts/transaction_order/25179.sol#124) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
buyTicket(string) should be declared external:
	- BrandContest.buyTicket(string) (dataset/contracts/transaction_order/25179.sol#34-46)
getContest(string) should be declared external:
	- BrandContest.getContest(string) (dataset/contracts/transaction_order/25179.sol#61-78)
getTickets(string) should be declared external:
	- BrandContest.getTickets(string) (dataset/contracts/transaction_order/25179.sol#92-100)
getMyTickets(string,address) should be declared external:
	- BrandContest.getMyTickets(string,address) (dataset/contracts/transaction_order/25179.sol#102-112)
createContest(string,uint256) should be declared external:
	- BrandContest.createContest(string,uint256) (dataset/contracts/transaction_order/25179.sol#114-117)
closeContest(string) should be declared external:
	- BrandContest.closeContest(string) (dataset/contracts/transaction_order/25179.sol#124-130)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/25179.sol analyzed (2 contracts with 100 detectors), 25 result(s) found
