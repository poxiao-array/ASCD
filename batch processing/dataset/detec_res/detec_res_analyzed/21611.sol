'solc --version' running
'solc ./dataset/contracts/transaction_order/21611.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/21611.sol:
./dataset/contracts/transaction_order/21611.sol:8:5: Warning: No visibility specified. Defaulting to "public".
    function Refund() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/21611.sol:19:5: Warning: No visibility specified. Defaulting to "public".
    function add_addys(address[] _addys, uint256[] _values) onlyOwner {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/21611.sol:25:5: Warning: No visibility specified. Defaulting to "public".
    function refund() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/21611.sol:31:5: Warning: No visibility specified. Defaulting to "public".
    function direct_refunds(address[] _addys, uint256[] _values) onlyOwner {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/21611.sol:39:5: Warning: No visibility specified. Defaulting to "public".
    function change_specific_addy(address _addy, uint256 _val) onlyOwner {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/21611.sol:43:5: Warning: No visibility specified. Defaulting to "public".
    function () payable {}
    ^--------------------^
./dataset/contracts/transaction_order/21611.sol:45:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw_ether() onlyOwner {
    ^
Spanning multiple lines.

INFO:Detectors:
Refund.direct_refunds(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#31-37) has external calls inside a loop: _addys[i].transfer(to_refund) (dataset/contracts/transaction_order/21611.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.18 (dataset/contracts/transaction_order/21611.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Refund.add_addys(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#19-23) is not in mixedCase
Parameter Refund.add_addys(address[],uint256[])._addys (dataset/contracts/transaction_order/21611.sol#19) is not in mixedCase
Parameter Refund.add_addys(address[],uint256[])._values (dataset/contracts/transaction_order/21611.sol#19) is not in mixedCase
Function Refund.direct_refunds(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#31-37) is not in mixedCase
Parameter Refund.direct_refunds(address[],uint256[])._addys (dataset/contracts/transaction_order/21611.sol#31) is not in mixedCase
Parameter Refund.direct_refunds(address[],uint256[])._values (dataset/contracts/transaction_order/21611.sol#31) is not in mixedCase
Function Refund.change_specific_addy(address,uint256) (dataset/contracts/transaction_order/21611.sol#39-41) is not in mixedCase
Parameter Refund.change_specific_addy(address,uint256)._addy (dataset/contracts/transaction_order/21611.sol#39) is not in mixedCase
Parameter Refund.change_specific_addy(address,uint256)._val (dataset/contracts/transaction_order/21611.sol#39) is not in mixedCase
Function Refund.withdraw_ether() (dataset/contracts/transaction_order/21611.sol#45-47) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Refund.direct_refunds(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#31-37):
	External calls:
	- _addys[i].transfer(to_refund) (dataset/contracts/transaction_order/21611.sol#35)
	State variables written after the call(s):
	- balances[_addys[i]] = 0 (dataset/contracts/transaction_order/21611.sol#34)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
add_addys(address[],uint256[]) should be declared external:
	- Refund.add_addys(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#19-23)
direct_refunds(address[],uint256[]) should be declared external:
	- Refund.direct_refunds(address[],uint256[]) (dataset/contracts/transaction_order/21611.sol#31-37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/21611.sol analyzed (1 contracts with 100 detectors), 16 result(s) found
