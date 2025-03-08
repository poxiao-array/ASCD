'solc --version' running
'solc ./dataset/contracts/transaction_order/29534.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/29534.sol:
./dataset/contracts/transaction_order/29534.sol:5:3: Warning: No visibility specified. Defaulting to "public".
  function deposit() payable {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:9:3: Warning: No visibility specified. Defaulting to "public".
  function withdraw(uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:13:3: Warning: No visibility specified. Defaulting to "public".
  function depositToken(address token, uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:17:3: Warning: No visibility specified. Defaulting to "public".
  function withdrawToken(address token, uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:21:3: Warning: No visibility specified. Defaulting to "public".
  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:9:21: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function withdraw(uint amount) {
                    ^---------^
./dataset/contracts/transaction_order/29534.sol:13:25: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function depositToken(address token, uint amount) {
                        ^-----------^
./dataset/contracts/transaction_order/29534.sol:13:40: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function depositToken(address token, uint amount) {
                                       ^---------^
./dataset/contracts/transaction_order/29534.sol:17:26: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function withdrawToken(address token, uint amount) {
                         ^-----------^
./dataset/contracts/transaction_order/29534.sol:17:41: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function withdrawToken(address token, uint amount) {
                                        ^---------^
./dataset/contracts/transaction_order/29534.sol:21:102: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint nonce ... 
     ^--------^
./dataset/contracts/transaction_order/29534.sol:21:114: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... address user ... 
     ^----------^
./dataset/contracts/transaction_order/29534.sol:21:128: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint8 v ... 
     ^-----^
./dataset/contracts/transaction_order/29534.sol:21:137: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... bytes32 r ... 
     ^-------^
./dataset/contracts/transaction_order/29534.sol:21:148: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... bytes32 s ... 
     ^-------^
./dataset/contracts/transaction_order/29534.sol:21:159: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint amount ... 
     ^---------^
./dataset/contracts/transaction_order/29534.sol:21:18: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... address tokenGet ... 
     ^--------------^
./dataset/contracts/transaction_order/29534.sol:21:36: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint amountGet ... 
     ^------------^
./dataset/contracts/transaction_order/29534.sol:21:52: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... address tokenGive ... 
     ^---------------^
./dataset/contracts/transaction_order/29534.sol:21:71: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint amountGive ... 
     ^-------------^
./dataset/contracts/transaction_order/29534.sol:21:88: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
 ... uint expires ... 
     ^----------^
./dataset/contracts/transaction_order/29534.sol:9:3: Warning: Function state mutability can be restricted to pure
  function withdraw(uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:13:3: Warning: Function state mutability can be restricted to pure
  function depositToken(address token, uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:17:3: Warning: Function state mutability can be restricted to pure
  function withdrawToken(address token, uint amount) {
  ^
Spanning multiple lines.
./dataset/contracts/transaction_order/29534.sol:21:3: Warning: Function state mutability can be restricted to pure
  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
  ^
Spanning multiple lines.

INFO:Detectors:
Contract locking ether found:
	Contract EtherDelta (dataset/contracts/transaction_order/29534.sol#3-24) has payable functions:
	 - EtherDelta.deposit() (dataset/contracts/transaction_order/29534.sol#5-7)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
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
	- ^0.4.19 (dataset/contracts/transaction_order/29534.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
ArbStation.deltaContract (dataset/contracts/transaction_order/29534.sol#27) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/29534.sol analyzed (2 contracts with 100 detectors), 4 result(s) found
