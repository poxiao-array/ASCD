'solc --version' running
'solc ./dataset/contracts/transaction_order/17701.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoGems.setOnSale(uint256,bool,uint256) (dataset/contracts/transaction_order/17701.sol#193-201) contains a tautology or contradiction:
	- require(bool)(_salePrice >= 0) (dataset/contracts/transaction_order/17701.sol#196)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
CryptoGems.transferFrom(address,address,uint256).allowance (dataset/contracts/transaction_order/17701.sol#29) shadows:
	- CryptoGems.allowance(address,address) (dataset/contracts/transaction_order/17701.sol#50-52) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
CryptoGems.changeContractOwner(address) (dataset/contracts/transaction_order/17701.sol#314-316) should emit an event for: 
	- contractOwner = _contractOwner (dataset/contracts/transaction_order/17701.sol#315) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoGems.setMinerPrice(uint256) (dataset/contracts/transaction_order/17701.sol#317-320) should emit an event for: 
	- etherPerMiner = _amount (dataset/contracts/transaction_order/17701.sol#318) 
CryptoGems.setGemPerMiner(uint256) (dataset/contracts/transaction_order/17701.sol#321-324) should emit an event for: 
	- gemPerMiner = _amount (dataset/contracts/transaction_order/17701.sol#322) 
CryptoGems.setGemPrice(uint256) (dataset/contracts/transaction_order/17701.sol#329-332) should emit an event for: 
	- gemPerEther = _amount (dataset/contracts/transaction_order/17701.sol#330) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
CryptoGems.withdrawEther(address,uint256)._sendTo (dataset/contracts/transaction_order/17701.sol#304) lacks a zero-check on :
		- _sendTo.transfer(CryptoGemsContract.balance) (dataset/contracts/transaction_order/17701.sol#308)
		- _sendTo.transfer(_amount) (dataset/contracts/transaction_order/17701.sol#310)
CryptoGems.changeContractOwner(address)._contractOwner (dataset/contracts/transaction_order/17701.sol#314) lacks a zero-check on :
		- contractOwner = _contractOwner (dataset/contracts/transaction_order/17701.sol#315)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CryptoGems.buyGems() (dataset/contracts/transaction_order/17701.sol#106-111) compares to a boolean constant:
	-require(bool)(sale == true) (dataset/contracts/transaction_order/17701.sol#107)
CryptoGems.buyMinersWithEther(uint64) (dataset/contracts/transaction_order/17701.sol#113-119) compares to a boolean constant:
	-require(bool)(sale == true) (dataset/contracts/transaction_order/17701.sol#114)
CryptoGems.buyMinersWithGem(uint64) (dataset/contracts/transaction_order/17701.sol#120-132) compares to a boolean constant:
	-require(bool)(sale == true) (dataset/contracts/transaction_order/17701.sol#121)
CryptoGems.buyMinerFromSale(uint256) (dataset/contracts/transaction_order/17701.sol#203-214) compares to a boolean constant:
	-require(bool)(miners[id].onSale == true) (dataset/contracts/transaction_order/17701.sol#205)
CryptoGems.getMinersOnSale() (dataset/contracts/transaction_order/17701.sol#250-263) compares to a boolean constant:
	-miners[i].onSale == true (dataset/contracts/transaction_order/17701.sol#254)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.21 (dataset/contracts/transaction_order/17701.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Event CryptoGems.stateEvent(address,uint256,uint64) (dataset/contracts/transaction_order/17701.sol#57) is not in CapWords
Parameter CryptoGems.transfer(address,uint256)._to (dataset/contracts/transaction_order/17701.sol#20) is not in mixedCase
Parameter CryptoGems.transfer(address,uint256)._value (dataset/contracts/transaction_order/17701.sol#20) is not in mixedCase
Parameter CryptoGems.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/17701.sol#28) is not in mixedCase
Parameter CryptoGems.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/17701.sol#28) is not in mixedCase
Parameter CryptoGems.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/17701.sol#28) is not in mixedCase
Parameter CryptoGems.balanceOf(address)._owner (dataset/contracts/transaction_order/17701.sol#40) is not in mixedCase
Parameter CryptoGems.approve(address,uint256)._spender (dataset/contracts/transaction_order/17701.sol#44) is not in mixedCase
Parameter CryptoGems.approve(address,uint256)._value (dataset/contracts/transaction_order/17701.sol#44) is not in mixedCase
Parameter CryptoGems.allowance(address,address)._owner (dataset/contracts/transaction_order/17701.sol#50) is not in mixedCase
Parameter CryptoGems.allowance(address,address)._spender (dataset/contracts/transaction_order/17701.sol#50) is not in mixedCase
Parameter CryptoGems.setOnSale(uint256,bool,uint256)._onSale (dataset/contracts/transaction_order/17701.sol#193) is not in mixedCase
Parameter CryptoGems.setOnSale(uint256,bool,uint256)._salePrice (dataset/contracts/transaction_order/17701.sol#193) is not in mixedCase
Parameter CryptoGems.nameMiner(uint256,string)._name (dataset/contracts/transaction_order/17701.sol#224) is not in mixedCase
Parameter CryptoGems.getMinersByAddress(address)._address (dataset/contracts/transaction_order/17701.sol#235) is not in mixedCase
Parameter CryptoGems.withdrawEther(address,uint256)._sendTo (dataset/contracts/transaction_order/17701.sol#304) is not in mixedCase
Parameter CryptoGems.withdrawEther(address,uint256)._amount (dataset/contracts/transaction_order/17701.sol#304) is not in mixedCase
Parameter CryptoGems.changeContractOwner(address)._contractOwner (dataset/contracts/transaction_order/17701.sol#314) is not in mixedCase
Parameter CryptoGems.setMinerPrice(uint256)._amount (dataset/contracts/transaction_order/17701.sol#317) is not in mixedCase
Parameter CryptoGems.setGemPerMiner(uint256)._amount (dataset/contracts/transaction_order/17701.sol#321) is not in mixedCase
Parameter CryptoGems.setSale(bool)._sale (dataset/contracts/transaction_order/17701.sol#325) is not in mixedCase
Parameter CryptoGems.setGemPrice(uint256)._amount (dataset/contracts/transaction_order/17701.sol#329) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < miners.length (dataset/contracts/transaction_order/17701.sol#253) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < miners.length (dataset/contracts/transaction_order/17701.sol#238) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
CryptoGems.decimals (dataset/contracts/transaction_order/17701.sol#14) should be constant 
CryptoGems.name (dataset/contracts/transaction_order/17701.sol#12) should be constant 
CryptoGems.symbol (dataset/contracts/transaction_order/17701.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
nameMiner(uint256,string) should be declared external:
	- CryptoGems.nameMiner(uint256,string) (dataset/contracts/transaction_order/17701.sol#224-232)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/17701.sol analyzed (1 contracts with 100 detectors), 43 result(s) found
