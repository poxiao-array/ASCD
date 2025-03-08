'solc --version' running
'solc ./dataset/contracts/transaction_order/3208.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/3208.sol:
./dataset/contracts/transaction_order/3208.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.

INFO:Detectors:
MerchantWallet.doWithdrawal(address,uint256) (dataset/contracts/transaction_order/3208.sol#269-272) sends eth to arbitrary user
	Dangerous calls:
	- beneficiary.transfer(amount) (dataset/contracts/transaction_order/3208.sol#271)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
SafeDestructible.destroy() (dataset/contracts/transaction_order/3208.sol#88-91) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/3208.sol#89)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address) (dataset/contracts/transaction_order/3208.sol#298-300) should emit an event for: 
	- merchantAccount = newAccount (dataset/contracts/transaction_order/3208.sol#299) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address).newAccount (dataset/contracts/transaction_order/3208.sol#298) lacks a zero-check on :
		- merchantAccount = newAccount (dataset/contracts/transaction_order/3208.sol#299)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- 0.4.18 (dataset/contracts/transaction_order/3208.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Restricted.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/3208.sol#73) is not in mixedCase
Parameter Restricted.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/3208.sol#73) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MerchantWallet.VERSION (dataset/contracts/transaction_order/3208.sol#171) is never used in MerchantWallet (dataset/contracts/transaction_order/3208.sol#169-302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/3208.sol#155-157)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/3208.sol analyzed (6 contracts with 100 detectors), 10 result(s) found
