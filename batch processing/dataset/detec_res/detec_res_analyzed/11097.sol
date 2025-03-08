'solc --version' running
'solc ./dataset/contracts/transaction_order/11097.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Crowdsale._deliverTokens(address,uint256) (dataset/contracts/transaction_order/11097.sol#236-243) uses arbitrary from in transferFrom: token.transferFrom(tokenFrom,_beneficiary,_tokenAmount) (dataset/contracts/transaction_order/11097.sol#242)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#arbitrary-from-in-transferfrom
INFO:Detectors:
Crowdsale.withdrawl() (dataset/contracts/transaction_order/11097.sol#272-274) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(address(this).balance) (dataset/contracts/transaction_order/11097.sol#273)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Reentrancy in Crowdsale.buyTokens(address) (dataset/contracts/transaction_order/11097.sol#196-225):
	External calls:
	- wallet.onIncome.value(weiAmount)() (dataset/contracts/transaction_order/11097.sol#207)
	State variables written after the call(s):
	- weiRaised = weiRaised.add(weiAmount) (dataset/contracts/transaction_order/11097.sol#211)
	Crowdsale.weiRaised (dataset/contracts/transaction_order/11097.sol#141) can be used in cross function reentrancies:
	- Crowdsale.buyTokens(address) (dataset/contracts/transaction_order/11097.sol#196-225)
	- Crowdsale.onlyAllowed() (dataset/contracts/transaction_order/11097.sol#157-160)
	- Crowdsale.weiRaised (dataset/contracts/transaction_order/11097.sol#141)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
Crowdsale._deliverTokens(address,uint256) (dataset/contracts/transaction_order/11097.sol#236-243) ignores return value by token.transferFrom(tokenFrom,_beneficiary,_tokenAmount) (dataset/contracts/transaction_order/11097.sol#242)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
Control.setOwner(address) (dataset/contracts/transaction_order/11097.sol#25-27) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/11097.sol#26) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Crowdsale.adjustRate(uint256) (dataset/contracts/transaction_order/11097.sol#130-132) should emit an event for: 
	- rate = _rate (dataset/contracts/transaction_order/11097.sol#131) 
Crowdsale.setWeiRaiseLimit(uint256) (dataset/contracts/transaction_order/11097.sol#136-138) should emit an event for: 
	- weiRaiseLimit = _limit (dataset/contracts/transaction_order/11097.sol#137) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Control.setOwner(address)._owner (dataset/contracts/transaction_order/11097.sol#25) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/11097.sol#26)
Crowdsale.setTokenFrom(address)._from (dataset/contracts/transaction_order/11097.sol#115) lacks a zero-check on :
		- tokenFrom = _from (dataset/contracts/transaction_order/11097.sol#116)
Crowdsale.constructor(uint256,Share,ERC20Token,address,uint256)._tokenFrom (dataset/contracts/transaction_order/11097.sol#166) lacks a zero-check on :
		- tokenFrom = _tokenFrom (dataset/contracts/transaction_order/11097.sol#177)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in Crowdsale.buyTokens(address) (dataset/contracts/transaction_order/11097.sol#196-225):
	External calls:
	- wallet.onIncome.value(weiAmount)() (dataset/contracts/transaction_order/11097.sol#207)
	- _processPurchase(_beneficiary,tokens) (dataset/contracts/transaction_order/11097.sol#213)
		- token.transferFrom(tokenFrom,_beneficiary,_tokenAmount) (dataset/contracts/transaction_order/11097.sol#242)
	External calls sending eth:
	- wallet.onIncome.value(weiAmount)() (dataset/contracts/transaction_order/11097.sol#207)
	Event emitted after the call(s):
	- TokenPurchase(msg.sender,_beneficiary,weiAmount,tokens) (dataset/contracts/transaction_order/11097.sol#215-220)
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
	- ^0.4.23 (dataset/contracts/transaction_order/11097.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Control.setOwner(address)._owner (dataset/contracts/transaction_order/11097.sol#25) is not in mixedCase
Parameter Control.setState(bool)._pause (dataset/contracts/transaction_order/11097.sol#29) is not in mixedCase
Parameter Crowdsale.setTokenFrom(address)._from (dataset/contracts/transaction_order/11097.sol#115) is not in mixedCase
Parameter Crowdsale.setWallet(Share)._wallet (dataset/contracts/transaction_order/11097.sol#121) is not in mixedCase
Parameter Crowdsale.adjustRate(uint256)._rate (dataset/contracts/transaction_order/11097.sol#130) is not in mixedCase
Parameter Crowdsale.setWeiRaiseLimit(uint256)._limit (dataset/contracts/transaction_order/11097.sol#136) is not in mixedCase
Parameter Crowdsale.buyTokens(address)._beneficiary (dataset/contracts/transaction_order/11097.sol#196) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/11097.sol analyzed (5 contracts with 100 detectors), 20 result(s) found
