'solc --version' running
'solc ./dataset/contracts/transaction_order/26832.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26832.sol:
./dataset/contracts/transaction_order/26832.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26832.sol:434:3: Warning: No visibility specified. Defaulting to "public".
  function Destructible() payable { }
  ^---------------------------------^
./dataset/contracts/transaction_order/26832.sol:455:3: Warning: Function state mutability can be restricted to pure
  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26832.sol:461:3: Warning: Function state mutability can be restricted to pure
  function div(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26832.sol:468:3: Warning: Function state mutability can be restricted to pure
  function sub(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26832.sol:473:3: Warning: Function state mutability can be restricted to pure
  function add(uint256 a, uint256 b) internal constant returns (uint256) {
  ^
Spanning multiple lines.

INFO:Detectors:
MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/26832.sol#528-538) sends eth to arbitrary user
	Dangerous calls:
	- monethaVault.transfer(_monethaFee) (dataset/contracts/transaction_order/26832.sol#535)
PaymentProcessor.processPayment(uint256,uint32,uint32,uint256) (dataset/contracts/transaction_order/26832.sol#809-827) sends eth to arbitrary user
	Dangerous calls:
	- monethaGateway.acceptPayment.value(orders[_orderId].price)(merchantWallet,orders[_orderId].fee) (dataset/contracts/transaction_order/26832.sol#818)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
SafeDestructible.destroy() (dataset/contracts/transaction_order/26832.sol#245-248) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/26832.sol#246)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/26832.sol#528-538) contains a tautology or contradiction:
	- require(bool)(_monethaFee >= 0 && _monethaFee <= FEE_PERMILLE.mul(msg.value).div(1000)) (dataset/contracts/transaction_order/26832.sol#530)
PaymentProcessor.addOrder(uint256,uint256,address,address,uint256) (dataset/contracts/transaction_order/26832.sol#673-692) contains a tautology or contradiction:
	- require(bool)(_fee >= 0 && _fee <= FEE_PERMILLE.mul(_price).div(1000)) (dataset/contracts/transaction_order/26832.sol#683)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address) (dataset/contracts/transaction_order/26832.sol#421-423) should emit an event for: 
	- merchantAccount = newAccount (dataset/contracts/transaction_order/26832.sol#422) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address).newAccount (dataset/contracts/transaction_order/26832.sol#421) lacks a zero-check on :
		- merchantAccount = newAccount (dataset/contracts/transaction_order/26832.sol#422)
MonethaGateway.changeMonethaVault(address).newVault (dataset/contracts/transaction_order/26832.sol#544) lacks a zero-check on :
		- monethaVault = newVault (dataset/contracts/transaction_order/26832.sol#545)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reentrancy in PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory) (dataset/contracts/transaction_order/26832.sol#854-859):
	External calls:
	- require(bool)(_merchantHistory.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/26832.sol#856)
	State variables written after the call(s):
	- merchantHistory = _merchantHistory (dataset/contracts/transaction_order/26832.sol#858)
Reentrancy in PaymentProcessor.setMerchantWallet(MerchantWallet) (dataset/contracts/transaction_order/26832.sol#843-848):
	External calls:
	- require(bool)(_newWallet.merchantIdHash() == merchantIdHash) (dataset/contracts/transaction_order/26832.sol#845)
	State variables written after the call(s):
	- merchantWallet = _newWallet (dataset/contracts/transaction_order/26832.sol#847)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/26832.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Restricted.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/26832.sol#73) is not in mixedCase
Parameter Restricted.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/26832.sol#73) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/26832.sol#162) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientAddress (dataset/contracts/transaction_order/26832.sol#163) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/26832.sol#164) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/26832.sol#165) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/26832.sol#166) is not in mixedCase
Parameter MerchantDealsHistory.recordDeal(uint256,address,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/26832.sol#167) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/26832.sol#190) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/26832.sol#191) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/26832.sol#192) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/26832.sol#193) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/26832.sol#194) is not in mixedCase
Parameter MerchantDealsHistory.recordDealCancelReason(uint256,address,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/26832.sol#195) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/26832.sol#218) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientAddress (dataset/contracts/transaction_order/26832.sol#219) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/26832.sol#220) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/26832.sol#221) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/26832.sol#222) is not in mixedCase
Parameter MerchantDealsHistory.recordDealRefundReason(uint256,address,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/26832.sol#223) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/26832.sol#443) is not in mixedCase
Parameter MonethaGateway.acceptPayment(address,uint256)._merchantWallet (dataset/contracts/transaction_order/26832.sol#528) is not in mixedCase
Parameter MonethaGateway.acceptPayment(address,uint256)._monethaFee (dataset/contracts/transaction_order/26832.sol#528) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/26832.sol#551) is not in mixedCase
Parameter MonethaGateway.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/26832.sol#551) is not in mixedCase
Parameter MonethaGateway.setAdmin(address)._admin (dataset/contracts/transaction_order/26832.sol#563) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._orderId (dataset/contracts/transaction_order/26832.sol#674) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._price (dataset/contracts/transaction_order/26832.sol#675) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._paymentAcceptor (dataset/contracts/transaction_order/26832.sol#676) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._originAddress (dataset/contracts/transaction_order/26832.sol#677) is not in mixedCase
Parameter PaymentProcessor.addOrder(uint256,uint256,address,address,uint256)._fee (dataset/contracts/transaction_order/26832.sol#678) is not in mixedCase
Parameter PaymentProcessor.securePay(uint256)._orderId (dataset/contracts/transaction_order/26832.sol#699) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/26832.sol#718) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/26832.sol#719) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/26832.sol#720) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/26832.sol#721) is not in mixedCase
Parameter PaymentProcessor.cancelOrder(uint256,uint32,uint32,uint256,string)._cancelReason (dataset/contracts/transaction_order/26832.sol#722) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._orderId (dataset/contracts/transaction_order/26832.sol#759) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._clientReputation (dataset/contracts/transaction_order/26832.sol#760) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._merchantReputation (dataset/contracts/transaction_order/26832.sol#761) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._dealHash (dataset/contracts/transaction_order/26832.sol#762) is not in mixedCase
Parameter PaymentProcessor.refundPayment(uint256,uint32,uint32,uint256,string)._refundReason (dataset/contracts/transaction_order/26832.sol#763) is not in mixedCase
Parameter PaymentProcessor.withdrawRefund(uint256)._orderId (dataset/contracts/transaction_order/26832.sol#794) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._orderId (dataset/contracts/transaction_order/26832.sol#810) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._clientReputation (dataset/contracts/transaction_order/26832.sol#811) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._merchantReputation (dataset/contracts/transaction_order/26832.sol#812) is not in mixedCase
Parameter PaymentProcessor.processPayment(uint256,uint32,uint32,uint256)._dealHash (dataset/contracts/transaction_order/26832.sol#813) is not in mixedCase
Parameter PaymentProcessor.setMonethaGateway(MonethaGateway)._newGateway (dataset/contracts/transaction_order/26832.sol#833) is not in mixedCase
Parameter PaymentProcessor.setMerchantWallet(MerchantWallet)._newWallet (dataset/contracts/transaction_order/26832.sol#843) is not in mixedCase
Parameter PaymentProcessor.setMerchantDealsHistory(MerchantDealsHistory)._merchantHistory (dataset/contracts/transaction_order/26832.sol#854) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._orderId (dataset/contracts/transaction_order/26832.sol#871) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._clientReputation (dataset/contracts/transaction_order/26832.sol#872) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._merchantReputation (dataset/contracts/transaction_order/26832.sol#873) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._isSuccess (dataset/contracts/transaction_order/26832.sol#874) is not in mixedCase
Parameter PaymentProcessor.updateDealConditions(uint256,uint32,uint32,bool,uint256)._dealHash (dataset/contracts/transaction_order/26832.sol#875) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in MonethaGateway.acceptPayment(address,uint256) (dataset/contracts/transaction_order/26832.sol#528-538):
	External calls:
	- _merchantWallet.transfer(merchantIncome) (dataset/contracts/transaction_order/26832.sol#534)
	- monethaVault.transfer(_monethaFee) (dataset/contracts/transaction_order/26832.sol#535)
	Event emitted after the call(s):
	- PaymentProcessed(_merchantWallet,merchantIncome,_monethaFee) (dataset/contracts/transaction_order/26832.sol#537)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
MerchantDealsHistory.VERSION (dataset/contracts/transaction_order/26832.sol#109) is never used in MerchantDealsHistory (dataset/contracts/transaction_order/26832.sol#107-235)
MerchantWallet.VERSION (dataset/contracts/transaction_order/26832.sol#308) is never used in MerchantWallet (dataset/contracts/transaction_order/26832.sol#306-424)
MonethaGateway.VERSION (dataset/contracts/transaction_order/26832.sol#491) is never used in MonethaGateway (dataset/contracts/transaction_order/26832.sol#487-567)
PaymentProcessor.VERSION (dataset/contracts/transaction_order/26832.sol#589) is never used in PaymentProcessor (dataset/contracts/transaction_order/26832.sol#585-891)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/26832.sol#95-97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26832.sol analyzed (11 contracts with 100 detectors), 73 result(s) found
