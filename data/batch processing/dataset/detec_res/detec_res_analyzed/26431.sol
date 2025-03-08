'solc --version' running
'solc ./dataset/contracts/transaction_order/26431.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26431.sol:
./dataset/contracts/transaction_order/26431.sol:186:6: Warning: "suicide" has been deprecated in favour of "selfdestruct"
    	suicide(foundersAddresses[0]);
    	^---------------------------^
./dataset/contracts/transaction_order/26431.sol:119:23: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transfer(address _to, uint256 _value) public {
                      ^---------^
./dataset/contracts/transaction_order/26431.sol:119:36: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transfer(address _to, uint256 _value) public {
                                   ^------------^
./dataset/contracts/transaction_order/26431.sol:124:22: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function approve(address _spender, uint256 _value) public returns(bool success) {
                     ^--------------^
./dataset/contracts/transaction_order/26431.sol:124:40: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function approve(address _spender, uint256 _value) public returns(bool success) {
                                       ^------------^
./dataset/contracts/transaction_order/26431.sol:124:71: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function approve(address _spender, uint256 _value) public returns(bool success) {
                                                                      ^----------^
./dataset/contracts/transaction_order/26431.sol:129:27: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
                          ^-----------^
./dataset/contracts/transaction_order/26431.sol:129:42: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
                                         ^---------^
./dataset/contracts/transaction_order/26431.sol:129:55: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
                                                      ^------------^
./dataset/contracts/transaction_order/26431.sol:129:86: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
                                                                                     ^----------^
./dataset/contracts/transaction_order/26431.sol:35:5: Warning: Function state mutability can be restricted to view
    function isOwner() internal returns(bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26431.sol:119:5: Warning: Function state mutability can be restricted to pure
    function transfer(address _to, uint256 _value) public {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26431.sol:124:5: Warning: Function state mutability can be restricted to pure
    function approve(address _spender, uint256 _value) public returns(bool success) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/26431.sol:129:5: Warning: Function state mutability can be restricted to pure
    function transferFrom(address _from, address _to, uint256 _value) public returns(bool success) {
    ^
Spanning multiple lines.

INFO:Detectors:
STeX_WL.fallback() (dataset/contracts/transaction_order/26431.sol#90-116) performs a multiplication on the result of a division:
	- add_by_blocks = (((block.number - wlStartBlock) * 1000000) / (wlStopBlock - wlStartBlock) * (maxBuyPrice - minBuyPrice)) / 1000000 (dataset/contracts/transaction_order/26431.sol#94)
STeX_WL.fallback() (dataset/contracts/transaction_order/26431.sol#90-116) performs a multiplication on the result of a division:
	- add_by_solded = ((soldSupply * 1000000) / totalSupply * (maxBuyPrice - minBuyPrice)) / 1000000 (dataset/contracts/transaction_order/26431.sol#95)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
STeX_WL (dataset/contracts/transaction_order/26431.sol#47-189) has incorrect ERC20 function interface:STeX_WL.transfer(address,uint256) (dataset/contracts/transaction_order/26431.sol#119-121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/26431.sol#41-43) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/26431.sol#42) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
STeX_WL.setPrices(uint256,uint256) (dataset/contracts/transaction_order/26431.sol#147-150) should emit an event for: 
	- minBuyPrice = _minBuyPrice (dataset/contracts/transaction_order/26431.sol#148) 
	- maxBuyPrice = _maxBuyPrice (dataset/contracts/transaction_order/26431.sol#149) 
STeX_WL.setStartStopBlocks(uint256,uint256) (dataset/contracts/transaction_order/26431.sol#153-156) should emit an event for: 
	- wlStartBlock = _wlStartBlock (dataset/contracts/transaction_order/26431.sol#154) 
	- wlStopBlock = _wlStopBlock (dataset/contracts/transaction_order/26431.sol#155) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/26431.sol#41) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/26431.sol#42)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
STeX_WL.withdrawToFounders(uint256) (dataset/contracts/transaction_order/26431.sol#159-171) has external calls inside a loop: ! foundersAddresses[i].send(amount_to_withdraw) (dataset/contracts/transaction_order/26431.sol#167)
STeX_WL.afterSTEDistributed() (dataset/contracts/transaction_order/26431.sol#174-187) has external calls inside a loop: ! foundersAddresses[i].send(amount_to_withdraw) (dataset/contracts/transaction_order/26431.sol#181)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
owned.isOwner() (dataset/contracts/transaction_order/26431.sol#35-38) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected suicide(address)(foundersAddresses[0]) (dataset/contracts/transaction_order/26431.sol#186):
	- Usage of "suicide()" should be replaced with "selfdestruct()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.19 (dataset/contracts/transaction_order/26431.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/26431.sol#3-44) is not in CapWords
Variable owned.super_owner (dataset/contracts/transaction_order/26431.sol#8) is not in mixedCase
Contract STeX_WL (dataset/contracts/transaction_order/26431.sol#47-189) is not in CapWords
Parameter STeX_WL.transferFromAdmin(address,address,uint256)._from (dataset/contracts/transaction_order/26431.sol#134) is not in mixedCase
Parameter STeX_WL.transferFromAdmin(address,address,uint256)._to (dataset/contracts/transaction_order/26431.sol#134) is not in mixedCase
Parameter STeX_WL.transferFromAdmin(address,address,uint256)._value (dataset/contracts/transaction_order/26431.sol#134) is not in mixedCase
Parameter STeX_WL.setPrices(uint256,uint256)._minBuyPrice (dataset/contracts/transaction_order/26431.sol#147) is not in mixedCase
Parameter STeX_WL.setPrices(uint256,uint256)._maxBuyPrice (dataset/contracts/transaction_order/26431.sol#147) is not in mixedCase
Parameter STeX_WL.setStartStopBlocks(uint256,uint256)._wlStartBlock (dataset/contracts/transaction_order/26431.sol#153) is not in mixedCase
Parameter STeX_WL.setStartStopBlocks(uint256,uint256)._wlStopBlock (dataset/contracts/transaction_order/26431.sol#153) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
STeX_WL.STeX_WL() (dataset/contracts/transaction_order/26431.sol#72-87) uses literals with too many digits:
	- totalSupply = 1000000000000000 (dataset/contracts/transaction_order/26431.sol#73)
STeX_WL.STeX_WL() (dataset/contracts/transaction_order/26431.sol#72-87) uses literals with too many digits:
	- minBuyPrice = 20500000 (dataset/contracts/transaction_order/26431.sol#81)
STeX_WL.STeX_WL() (dataset/contracts/transaction_order/26431.sol#72-87) uses literals with too many digits:
	- maxBuyPrice = 24900000 (dataset/contracts/transaction_order/26431.sol#82)
STeX_WL.fallback() (dataset/contracts/transaction_order/26431.sol#90-116) uses literals with too many digits:
	- msg.value < 100000000000000000 (dataset/contracts/transaction_order/26431.sol#91)
STeX_WL.fallback() (dataset/contracts/transaction_order/26431.sol#90-116) uses literals with too many digits:
	- add_by_blocks = (((block.number - wlStartBlock) * 1000000) / (wlStopBlock - wlStartBlock) * (maxBuyPrice - minBuyPrice)) / 1000000 (dataset/contracts/transaction_order/26431.sol#94)
STeX_WL.fallback() (dataset/contracts/transaction_order/26431.sol#90-116) uses literals with too many digits:
	- add_by_solded = ((soldSupply * 1000000) / totalSupply * (maxBuyPrice - minBuyPrice)) / 1000000 (dataset/contracts/transaction_order/26431.sol#95)
STeX_WL.withdrawToFounders(uint256) (dataset/contracts/transaction_order/26431.sol#159-171) uses literals with too many digits:
	- amount_to_withdraw = amount * 1000000000000000 (dataset/contracts/transaction_order/26431.sol#160)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Loop condition i < foundersAddresses.length (dataset/contracts/transaction_order/26431.sol#180) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < foundersAddresses.length (dataset/contracts/transaction_order/26431.sol#166) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
STeX_WL.standard (dataset/contracts/transaction_order/26431.sol#49) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/26431.sol analyzed (2 contracts with 100 detectors), 33 result(s) found
