'solc --version' running
'solc ./dataset/contracts/transaction_order/14999.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/14999.sol:
./dataset/contracts/transaction_order/14999.sol:624:1: Warning: Base constructor arguments given twice.
contract InstaDice is
^ (Relevant source part starts here and spans across multiple lines).
./dataset/contracts/transaction_order/14999.sol:338:9: First constructor call is here: 
        UsingRegistry(_registry)
        ^----------------------^
./dataset/contracts/transaction_order/14999.sol:578:9: Second constructor call is here: 
        UsingRegistry(_registry)
        ^----------------------^


INFO:Detectors:
Bankrollable.removeBankroll(uint256,string) (dataset/contracts/transaction_order/14999.sol#453-473) sends eth to arbitrary user
	Dangerous calls:
	- require(bool)(_bankroller.call.value(_amount)(_sig)) (dataset/contracts/transaction_order/14999.sol#470)
Bankrollable.sendProfits() (dataset/contracts/transaction_order/14999.sol#476-488) sends eth to arbitrary user
	Dangerous calls:
	- require(bool)(_tr.call.value(_profits)()) (dataset/contracts/transaction_order/14999.sol#486)
InstaDice._finalizePreviousRoll(InstaDice.User,InstaDice.Stats) (dataset/contracts/transaction_order/14999.sol#846-861) sends eth to arbitrary user
	Dangerous calls:
	- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
InstaDice.computeResult(uint32,uint32) (dataset/contracts/transaction_order/14999.sol#920-928) uses a weak PRNG: "uint8(uint256(keccak256()(_blockHash,_id)) % 100 + 1) (dataset/contracts/transaction_order/14999.sol#927)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
Reentrancy in InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807):
	External calls:
	- _finalizePreviousRoll(_user,_stats) (dataset/contracts/transaction_order/14999.sol#798)
		- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
	State variables written after the call(s):
	- stats.totalWon = _stats.totalWon (dataset/contracts/transaction_order/14999.sol#805)
	InstaDice.stats (dataset/contracts/transaction_order/14999.sol#654) can be used in cross function reentrancies:
	- InstaDice.constructor(address) (dataset/contracts/transaction_order/14999.sol#668-680)
	- InstaDice.numRolls() (dataset/contracts/transaction_order/14999.sol#934-936)
	- InstaDice.numUsers() (dataset/contracts/transaction_order/14999.sol#931-933)
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.totalWagered() (dataset/contracts/transaction_order/14999.sol#937-939)
	- InstaDice.totalWon() (dataset/contracts/transaction_order/14999.sol#940-942)
	- _user.r_id = 0 (dataset/contracts/transaction_order/14999.sol#801)
	InstaDice.users (dataset/contracts/transaction_order/14999.sol#653) can be used in cross function reentrancies:
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.users (dataset/contracts/transaction_order/14999.sol#653)
	- _user.r_block = 0 (dataset/contracts/transaction_order/14999.sol#802)
	InstaDice.users (dataset/contracts/transaction_order/14999.sol#653) can be used in cross function reentrancies:
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.users (dataset/contracts/transaction_order/14999.sol#653)
	- _user.r_number = 0 (dataset/contracts/transaction_order/14999.sol#803)
	InstaDice.users (dataset/contracts/transaction_order/14999.sol#653) can be used in cross function reentrancies:
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.users (dataset/contracts/transaction_order/14999.sol#653)
	- _user.r_payout = 0 (dataset/contracts/transaction_order/14999.sol#804)
	InstaDice.users (dataset/contracts/transaction_order/14999.sol#653) can be used in cross function reentrancies:
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.users (dataset/contracts/transaction_order/14999.sol#653)
Reentrancy in InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768):
	External calls:
	- ! _validateBetOrRefund(_number) (dataset/contracts/transaction_order/14999.sol#739)
		- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
	- _finalizePreviousRoll(_user,_stats) (dataset/contracts/transaction_order/14999.sol#749)
		- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
	State variables written after the call(s):
	- stats = _stats (dataset/contracts/transaction_order/14999.sol#755)
	InstaDice.stats (dataset/contracts/transaction_order/14999.sol#654) can be used in cross function reentrancies:
	- InstaDice.constructor(address) (dataset/contracts/transaction_order/14999.sol#668-680)
	- InstaDice.numRolls() (dataset/contracts/transaction_order/14999.sol#934-936)
	- InstaDice.numUsers() (dataset/contracts/transaction_order/14999.sol#931-933)
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.totalWagered() (dataset/contracts/transaction_order/14999.sol#937-939)
	- InstaDice.totalWon() (dataset/contracts/transaction_order/14999.sol#940-942)
	- users[msg.sender] = _user (dataset/contracts/transaction_order/14999.sol#763)
	InstaDice.users (dataset/contracts/transaction_order/14999.sol#653) can be used in cross function reentrancies:
	- InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807)
	- InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768)
	- InstaDice.users (dataset/contracts/transaction_order/14999.sol#653)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
InstaDice.computePayout(uint256,uint256) (dataset/contracts/transaction_order/14999.sol#906-916) performs a multiplication on the result of a division:
	- _bigPayout = (_bigBet * 100) / _number (dataset/contracts/transaction_order/14999.sol#913)
	- _bigFee = (_bigPayout * _feeBips) / 10000 (dataset/contracts/transaction_order/14999.sol#914)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
InstaDice.payoutPreviousRoll() (dataset/contracts/transaction_order/14999.sol#779-807) uses a dangerous strict equality:
	- _user.r_block == uint32(block.number) (dataset/contracts/transaction_order/14999.sol#786)
Bankrollable.removeBankroll(uint256,string) (dataset/contracts/transaction_order/14999.sol#453-473) uses a dangerous strict equality:
	- _amount == 0 (dataset/contracts/transaction_order/14999.sol#467)
InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768) uses a dangerous strict equality:
	- _user.r_block == uint32(block.number) (dataset/contracts/transaction_order/14999.sol#743)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
InstaDice (dataset/contracts/transaction_order/14999.sol#624-964) gives base constructor UsingRegistry.constructor(address) (dataset/contracts/transaction_order/14999.sol#24-29) arguments more than once in inheritance hierarchy:
	- From UsingAdmin (dataset/contracts/transaction_order/14999.sol#574-594) constructor definition
	- From UsingTreasury (dataset/contracts/transaction_order/14999.sol#334-354) constructor definition
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reused-base-constructors
INFO:Detectors:
Bankrollable.bankrollerTable() (dataset/contracts/transaction_order/14999.sol#555-561) ignores return value by ledger.balances() (dataset/contracts/transaction_order/14999.sol#560)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
Ledger.constructor(address)._owner (dataset/contracts/transaction_order/14999.sol#90) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/14999.sol#93)
AddressSet.constructor(address)._owner (dataset/contracts/transaction_order/14999.sol#219) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/14999.sol#222)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in Bankrollable.addBankroll() (dataset/contracts/transaction_order/14999.sol#442-450):
	External calls:
	- require(bool)(whitelist.size() == 0 || whitelist.has(msg.sender)) (dataset/contracts/transaction_order/14999.sol#446)
	- ledger.add(msg.sender,msg.value) (dataset/contracts/transaction_order/14999.sol#447)
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#448)
	State variables written after the call(s):
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#448)
Reentrancy in InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16) (dataset/contracts/transaction_order/14999.sol#688-709):
	External calls:
	- fromAdmin() (dataset/contracts/transaction_order/14999.sol#696)
		- registry.addressOf(_name) (dataset/contracts/transaction_order/14999.sol#36)
	State variables written after the call(s):
	- settings.minBet = _minBet (dataset/contracts/transaction_order/14999.sol#703)
	- settings.maxBet = _maxBet (dataset/contracts/transaction_order/14999.sol#704)
	- settings.minNumber = _minNumber (dataset/contracts/transaction_order/14999.sol#705)
	- settings.maxNumber = _maxNumber (dataset/contracts/transaction_order/14999.sol#706)
	- settings.feeBips = _feeBips (dataset/contracts/transaction_order/14999.sol#707)
Reentrancy in Bankrollable.removeBankroll(uint256,string) (dataset/contracts/transaction_order/14999.sol#453-473):
	External calls:
	- _amount = ledger.subtract(_bankroller,_amount) (dataset/contracts/transaction_order/14999.sol#465)
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#466)
	State variables written after the call(s):
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#466)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
Reentrancy in InstaDice._errorAndRefund(string,uint256,uint8) (dataset/contracts/transaction_order/14999.sol#865-870):
	External calls:
	- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
	Event emitted after the call(s):
	- RollRefunded(now,msg.sender,_msg,_bet,_number) (dataset/contracts/transaction_order/14999.sol#869)
Reentrancy in InstaDice._finalizePreviousRoll(InstaDice.User,InstaDice.Stats) (dataset/contracts/transaction_order/14999.sol#846-861):
	External calls:
	- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
	Event emitted after the call(s):
	- RollFinalized(now,_user.r_id,msg.sender,_result,_user.r_payout) (dataset/contracts/transaction_order/14999.sol#860)
	- RollFinalized(now,_user.r_id,msg.sender,_result,0) (dataset/contracts/transaction_order/14999.sol#860)
Reentrancy in Bankrollable.addBankroll() (dataset/contracts/transaction_order/14999.sol#442-450):
	External calls:
	- require(bool)(whitelist.size() == 0 || whitelist.has(msg.sender)) (dataset/contracts/transaction_order/14999.sol#446)
	- ledger.add(msg.sender,msg.value) (dataset/contracts/transaction_order/14999.sol#447)
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#448)
	Event emitted after the call(s):
	- BankrollAdded(now,msg.sender,msg.value,bankroll) (dataset/contracts/transaction_order/14999.sol#449)
Reentrancy in Bankrollable.addToWhitelist(address) (dataset/contracts/transaction_order/14999.sol#418-424):
	External calls:
	- _didAdd = whitelist.add(_addr) (dataset/contracts/transaction_order/14999.sol#422)
	Event emitted after the call(s):
	- AddedToWhitelist(now,_addr,msg.sender) (dataset/contracts/transaction_order/14999.sol#423)
Reentrancy in InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16) (dataset/contracts/transaction_order/14999.sol#688-709):
	External calls:
	- fromAdmin() (dataset/contracts/transaction_order/14999.sol#696)
		- registry.addressOf(_name) (dataset/contracts/transaction_order/14999.sol#36)
	Event emitted after the call(s):
	- SettingsChanged(now,msg.sender) (dataset/contracts/transaction_order/14999.sol#708)
Reentrancy in Bankrollable.removeBankroll(uint256,string) (dataset/contracts/transaction_order/14999.sol#453-473):
	External calls:
	- _amount = ledger.subtract(_bankroller,_amount) (dataset/contracts/transaction_order/14999.sol#465)
	- bankroll = ledger.total() (dataset/contracts/transaction_order/14999.sol#466)
	- require(bool)(_bankroller.call.value(_amount)(_sig)) (dataset/contracts/transaction_order/14999.sol#470)
	External calls sending eth:
	- require(bool)(_bankroller.call.value(_amount)(_sig)) (dataset/contracts/transaction_order/14999.sol#470)
	Event emitted after the call(s):
	- BankrollRemoved(now,_bankroller,_amount,bankroll) (dataset/contracts/transaction_order/14999.sol#471)
Reentrancy in Bankrollable.removeFromWhitelist(address) (dataset/contracts/transaction_order/14999.sol#426-432):
	External calls:
	- _didRemove = whitelist.remove(_addr) (dataset/contracts/transaction_order/14999.sol#430)
	Event emitted after the call(s):
	- RemovedFromWhitelist(now,_addr,msg.sender) (dataset/contracts/transaction_order/14999.sol#431)
Reentrancy in InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768):
	External calls:
	- ! _validateBetOrRefund(_number) (dataset/contracts/transaction_order/14999.sol#739)
		- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
	- _errorAndRefund(Only one bet per block allowed.,msg.value,_number) (dataset/contracts/transaction_order/14999.sol#744)
		- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
	Event emitted after the call(s):
	- RollRefunded(now,msg.sender,_msg,_bet,_number) (dataset/contracts/transaction_order/14999.sol#869)
		- _errorAndRefund(Only one bet per block allowed.,msg.value,_number) (dataset/contracts/transaction_order/14999.sol#744)
Reentrancy in InstaDice.roll(uint8) (dataset/contracts/transaction_order/14999.sol#733-768):
	External calls:
	- ! _validateBetOrRefund(_number) (dataset/contracts/transaction_order/14999.sol#739)
		- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
	- _finalizePreviousRoll(_user,_stats) (dataset/contracts/transaction_order/14999.sol#749)
		- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
	Event emitted after the call(s):
	- RollFinalized(now,_user.r_id,msg.sender,_result,_user.r_payout) (dataset/contracts/transaction_order/14999.sol#860)
		- _finalizePreviousRoll(_user,_stats) (dataset/contracts/transaction_order/14999.sol#749)
	- RollFinalized(now,_user.r_id,msg.sender,_result,0) (dataset/contracts/transaction_order/14999.sol#860)
		- _finalizePreviousRoll(_user,_stats) (dataset/contracts/transaction_order/14999.sol#749)
	- RollWagered(now,_user.r_id,msg.sender,msg.value,_user.r_number,_user.r_payout) (dataset/contracts/transaction_order/14999.sol#766)
Reentrancy in Bankrollable.sendProfits() (dataset/contracts/transaction_order/14999.sol#476-488):
	External calls:
	- _tr = getTreasury() (dataset/contracts/transaction_order/14999.sol#485)
		- registry.addressOf(_name) (dataset/contracts/transaction_order/14999.sol#36)
	- require(bool)(_tr.call.value(_profits)()) (dataset/contracts/transaction_order/14999.sol#486)
	External calls sending eth:
	- require(bool)(_tr.call.value(_profits)()) (dataset/contracts/transaction_order/14999.sol#486)
	Event emitted after the call(s):
	- ProfitsSent(now,_tr,_profits) (dataset/contracts/transaction_order/14999.sol#487)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.23 (dataset/contracts/transaction_order/14999.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Bankrollable.removeBankroll(uint256,string) (dataset/contracts/transaction_order/14999.sol#453-473):
	- require(bool)(_bankroller.call.value(_amount)(_sig)) (dataset/contracts/transaction_order/14999.sol#470)
Low level call in Bankrollable.sendProfits() (dataset/contracts/transaction_order/14999.sol#476-488):
	- require(bool)(_tr.call.value(_profits)()) (dataset/contracts/transaction_order/14999.sol#486)
Low level call in InstaDice._finalizePreviousRoll(InstaDice.User,InstaDice.Stats) (dataset/contracts/transaction_order/14999.sol#846-861):
	- require(bool)(msg.sender.call.value(_user.r_payout)()) (dataset/contracts/transaction_order/14999.sol#856)
Low level call in InstaDice._errorAndRefund(string,uint256,uint8) (dataset/contracts/transaction_order/14999.sol#865-870):
	- require(bool)(msg.sender.call.value(msg.value)()) (dataset/contracts/transaction_order/14999.sol#868)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter UsingRegistry.addressOf(bytes32)._name (dataset/contracts/transaction_order/14999.sol#31) is not in mixedCase
Parameter Ledger.add(address,uint256)._address (dataset/contracts/transaction_order/14999.sol#101) is not in mixedCase
Parameter Ledger.add(address,uint256)._amt (dataset/contracts/transaction_order/14999.sol#101) is not in mixedCase
Parameter Ledger.subtract(address,uint256)._address (dataset/contracts/transaction_order/14999.sol#119) is not in mixedCase
Parameter Ledger.subtract(address,uint256)._amt (dataset/contracts/transaction_order/14999.sol#119) is not in mixedCase
Parameter Ledger.balanceOf(address)._address (dataset/contracts/transaction_order/14999.sol#164) is not in mixedCase
Parameter AddressSet.add(address)._address (dataset/contracts/transaction_order/14999.sol#230) is not in mixedCase
Parameter AddressSet.remove(address)._address (dataset/contracts/transaction_order/14999.sol#253) is not in mixedCase
Parameter AddressSet.has(address)._address (dataset/contracts/transaction_order/14999.sol#293) is not in mixedCase
Parameter Bankrollable.addToWhitelist(address)._addr (dataset/contracts/transaction_order/14999.sol#418) is not in mixedCase
Parameter Bankrollable.removeFromWhitelist(address)._addr (dataset/contracts/transaction_order/14999.sol#426) is not in mixedCase
Parameter Bankrollable.removeBankroll(uint256,string)._amount (dataset/contracts/transaction_order/14999.sol#453) is not in mixedCase
Parameter Bankrollable.removeBankroll(uint256,string)._callbackFn (dataset/contracts/transaction_order/14999.sol#453) is not in mixedCase
Parameter Bankrollable.bankrolledBy(address)._addr (dataset/contracts/transaction_order/14999.sol#547) is not in mixedCase
Parameter InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16)._minBet (dataset/contracts/transaction_order/14999.sol#689) is not in mixedCase
Parameter InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16)._maxBet (dataset/contracts/transaction_order/14999.sol#690) is not in mixedCase
Parameter InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16)._minNumber (dataset/contracts/transaction_order/14999.sol#691) is not in mixedCase
Parameter InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16)._maxNumber (dataset/contracts/transaction_order/14999.sol#692) is not in mixedCase
Parameter InstaDice.changeSettings(uint64,uint64,uint8,uint8,uint16)._feeBips (dataset/contracts/transaction_order/14999.sol#693) is not in mixedCase
Parameter InstaDice.roll(uint8)._number (dataset/contracts/transaction_order/14999.sol#733) is not in mixedCase
Parameter InstaDice.computePayout(uint256,uint256)._bet (dataset/contracts/transaction_order/14999.sol#906) is not in mixedCase
Parameter InstaDice.computePayout(uint256,uint256)._number (dataset/contracts/transaction_order/14999.sol#906) is not in mixedCase
Parameter InstaDice.computeResult(uint32,uint32)._blockNumber (dataset/contracts/transaction_order/14999.sol#920) is not in mixedCase
Parameter InstaDice.computeResult(uint32,uint32)._id (dataset/contracts/transaction_order/14999.sol#920) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/14999.sol analyzed (9 contracts with 100 detectors), 57 result(s) found
