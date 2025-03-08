'solc --version' running
'solc ./dataset/contracts/transaction_order/12539.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ATSTokenReservation.updateMaxAcceptedDeposits(uint256) (dataset/contracts/transaction_order/12539.sol#159-162) should emit an event for: 
	- maxCumAcceptedDeposits = _newMaxDeposits (dataset/contracts/transaction_order/12539.sol#161) 
ATSTokenReservation.updateMinDeposit(uint256) (dataset/contracts/transaction_order/12539.sol#165-167) should emit an event for: 
	- minDeposit = _newMinDeposit (dataset/contracts/transaction_order/12539.sol#166) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
ATSTokenReservation.constructor(address,address)._whitelistController (dataset/contracts/transaction_order/12539.sol#112) lacks a zero-check on :
		- whitelistController = _whitelistController (dataset/contracts/transaction_order/12539.sol#113)
ATSTokenReservation.constructor(address,address)._payoutAddress (dataset/contracts/transaction_order/12539.sol#112) lacks a zero-check on :
		- payoutAddress = _payoutAddress (dataset/contracts/transaction_order/12539.sol#114)
ATSTokenReservation.refundAlienDeposit(address)._addr (dataset/contracts/transaction_order/12539.sol#204) lacks a zero-check on :
		- _addr.transfer(withdrawAmount) (dataset/contracts/transaction_order/12539.sol#212)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
ATSTokenReservation.stateSetLocked() (dataset/contracts/transaction_order/12539.sol#143-149) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(block.timestamp >= minLockingTs) (dataset/contracts/transaction_order/12539.sol#147)
ATSTokenReservation.fallbackPayout() (dataset/contracts/transaction_order/12539.sol#231-235) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(block.timestamp > FALLBACK_PAYOUT_TS) (dataset/contracts/transaction_order/12539.sol#233)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
ATSTokenReservation.fallback() (dataset/contracts/transaction_order/12539.sol#121-131) compares to a boolean constant:
	-require(bool,string)(whitelist[msg.sender] == true,not whitelisted) (dataset/contracts/transaction_order/12539.sol#125)
ATSTokenReservation.addToWhitelist(address) (dataset/contracts/transaction_order/12539.sol#180-192) compares to a boolean constant:
	-whitelist[_addr] != true (dataset/contracts/transaction_order/12539.sol#181)
ATSTokenReservation.tryDeposit() (dataset/contracts/transaction_order/12539.sol#240-252) compares to a boolean constant:
	-whitelist[msg.sender] == true (dataset/contracts/transaction_order/12539.sol#242)
ATSTokenReservation.tryRefund() (dataset/contracts/transaction_order/12539.sol#255-275) compares to a boolean constant:
	-whitelist[msg.sender] == true (dataset/contracts/transaction_order/12539.sol#259)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
ATSTokenReservation.addToWhitelist(address) (dataset/contracts/transaction_order/12539.sol#180-192) has costly operations inside a loop:
	- cumAcceptedDeposits += alienDeposits[_addr] (dataset/contracts/transaction_order/12539.sol#184)
ATSTokenReservation.addToWhitelist(address) (dataset/contracts/transaction_order/12539.sol#180-192) has costly operations inside a loop:
	- cumAlienDeposits -= alienDeposits[_addr] (dataset/contracts/transaction_order/12539.sol#186)
ATSTokenReservation.addToWhitelist(address) (dataset/contracts/transaction_order/12539.sol#180-192) has costly operations inside a loop:
	- delete alienDeposits[_addr] (dataset/contracts/transaction_order/12539.sol#187)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- ^0.4.23 (dataset/contracts/transaction_order/12539.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter ATSTokenReservation.stateSetOpen(uint32)._minLockingTs (dataset/contracts/transaction_order/12539.sol#135) is not in mixedCase
Parameter ATSTokenReservation.updateMaxAcceptedDeposits(uint256)._newMaxDeposits (dataset/contracts/transaction_order/12539.sol#159) is not in mixedCase
Parameter ATSTokenReservation.updateMinDeposit(uint256)._newMinDeposit (dataset/contracts/transaction_order/12539.sol#165) is not in mixedCase
Parameter ATSTokenReservation.setRequireWhitelistingBeforeDeposit(bool)._newState (dataset/contracts/transaction_order/12539.sol#170) is not in mixedCase
Parameter ATSTokenReservation.addToWhitelist(address)._addr (dataset/contracts/transaction_order/12539.sol#180) is not in mixedCase
Parameter ATSTokenReservation.batchAddToWhitelist(address[])._addresses (dataset/contracts/transaction_order/12539.sol#196) is not in mixedCase
Parameter ATSTokenReservation.refundAlienDeposit(address)._addr (dataset/contracts/transaction_order/12539.sol#204) is not in mixedCase
Parameter ATSTokenReservation.setState(ATSTokenReservation.States)._newState (dataset/contracts/transaction_order/12539.sol#277) is not in mixedCase
Variable ATSTokenReservation.FALLBACK_PAYOUT_TS (dataset/contracts/transaction_order/12539.sol#46) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ATSTokenReservation.FALLBACK_PAYOUT_TS (dataset/contracts/transaction_order/12539.sol#46) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
batchAddToWhitelist(address[]) should be declared external:
	- ATSTokenReservation.batchAddToWhitelist(address[]) (dataset/contracts/transaction_order/12539.sol#196-200)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/12539.sol analyzed (1 contracts with 100 detectors), 27 result(s) found
