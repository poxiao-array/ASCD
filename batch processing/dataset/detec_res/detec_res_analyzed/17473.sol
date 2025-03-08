'solc --version' running
'solc ./dataset/contracts/transaction_order/17473.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/17473.sol:
./dataset/contracts/transaction_order/17473.sol:24:3: Warning: No visibility specified. Defaulting to "public".
  function Ownable() {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:112:3: Warning: No visibility specified. Defaulting to "public".
  function VanityURL(){
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:173:3: Warning: No visibility specified. Defaulting to "public".
  function checkForValidity(string _vanity_url) returns (bool) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:258:3: Warning: No visibility specified. Defaulting to "public".
  function kill() onlyOwner {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:265:3: Warning: No visibility specified. Defaulting to "public".
  function() payable {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:152:3: Warning: Function state mutability can be restricted to pure
  function _toLower(string str) internal returns (string) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/17473.sol:173:3: Warning: Function state mutability can be restricted to pure
  function checkForValidity(string _vanity_url) returns (bool) {
  ^
Spanning multiple lines.

INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/17473.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter VanityURL.retrieveWalletForVanity(string)._vanity_url (dataset/contracts/transaction_order/17473.sol#120) is not in mixedCase
Parameter VanityURL.retrieveVanityForWallet(address)._address (dataset/contracts/transaction_order/17473.sol#125) is not in mixedCase
Parameter VanityURL.reserve(string)._vanity_url (dataset/contracts/transaction_order/17473.sol#138) is not in mixedCase
Parameter VanityURL.checkForValidity(string)._vanity_url (dataset/contracts/transaction_order/17473.sol#173) is not in mixedCase
Parameter VanityURL.changeVanityURL(string)._vanity_url (dataset/contracts/transaction_order/17473.sol#193) is not in mixedCase
Parameter VanityURL.transferOwnershipForVanityURL(address)._to (dataset/contracts/transaction_order/17473.sol#206) is not in mixedCase
Parameter VanityURL.reserveVanityURLByOwner(address,string)._to (dataset/contracts/transaction_order/17473.sol#218) is not in mixedCase
Parameter VanityURL.reserveVanityURLByOwner(address,string)._vanity_url (dataset/contracts/transaction_order/17473.sol#218) is not in mixedCase
Parameter VanityURL.releaseVanityUrl(string)._vanity_url (dataset/contracts/transaction_order/17473.sol#244) is not in mixedCase
Variable VanityURL.vanity_address_mapping (dataset/contracts/transaction_order/17473.sol#106) is not in mixedCase
Variable VanityURL.address_vanity_mapping (dataset/contracts/transaction_order/17473.sol#108) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
retrieveWalletForVanity(string) should be declared external:
	- VanityURL.retrieveWalletForVanity(string) (dataset/contracts/transaction_order/17473.sol#120-122)
releaseVanityUrl(string) should be declared external:
	- VanityURL.releaseVanityUrl(string) (dataset/contracts/transaction_order/17473.sol#244-252)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/17473.sol analyzed (3 contracts with 100 detectors), 15 result(s) found
