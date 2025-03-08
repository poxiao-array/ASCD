'solc --version' running
'solc ./dataset/contracts/transaction_order/29160.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/29160.sol:
./dataset/contracts/transaction_order/29160.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.

INFO:Detectors:
SafeDestructible.destroy() (dataset/contracts/transaction_order/29160.sol#81-84) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/29160.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address) (dataset/contracts/transaction_order/29160.sol#277-279) should emit an event for: 
	- merchantAccount = newAccount (dataset/contracts/transaction_order/29160.sol#278) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
MerchantWallet.changeMerchantAccount(address).newAccount (dataset/contracts/transaction_order/29160.sol#277) lacks a zero-check on :
		- merchantAccount = newAccount (dataset/contracts/transaction_order/29160.sol#278)
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
	- 0.4.18 (dataset/contracts/transaction_order/29160.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Restricted.setMonethaAddress(address,bool)._address (dataset/contracts/transaction_order/29160.sol#67) is not in mixedCase
Parameter Restricted.setMonethaAddress(address,bool)._isMonethaAddress (dataset/contracts/transaction_order/29160.sol#67) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MerchantWallet.VERSION (dataset/contracts/transaction_order/29160.sol#164) is never used in MerchantWallet (dataset/contracts/transaction_order/29160.sol#162-281)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
setContactInformation(string) should be declared external:
	- Contactable.setContactInformation(string) (dataset/contracts/transaction_order/29160.sol#148-150)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/29160.sol analyzed (6 contracts with 100 detectors), 9 result(s) found
