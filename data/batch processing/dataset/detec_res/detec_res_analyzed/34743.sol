'solc --version' running
'solc ./dataset/contracts/transaction_order/34743.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/34743.sol:
./dataset/contracts/transaction_order/34743.sol:12:13: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
            throw;
            ^---^
./dataset/contracts/transaction_order/34743.sol:63:39: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (now < PRESALE_START_DATE) throw;
                                      ^---^
./dataset/contracts/transaction_order/34743.sol:65:37: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (now > PRESALE_END_DATE) throw;
                                    ^---^
./dataset/contracts/transaction_order/34743.sol:67:37: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (msg.value < MIN_AMOUNT) throw;
                                    ^---^
./dataset/contracts/transaction_order/34743.sol:69:37: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (msg.value > MAX_AMOUNT) throw;
                                    ^---^
./dataset/contracts/transaction_order/34743.sol:72:79: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (safeIncrement(totalFunding, msg.value) > PRESALE_MAXIMUM_FUNDING) throw;
                                                                              ^---^
./dataset/contracts/transaction_order/34743.sol:81:53: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (totalFunding < PRESALE_MINIMUM_FUNDING) throw;
                                                    ^---^
./dataset/contracts/transaction_order/34743.sol:83:33: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (!owner.send(value)) throw;
                                ^---^
./dataset/contracts/transaction_order/34743.sol:90:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (now <= PRESALE_END_DATE) throw;
                                     ^---^
./dataset/contracts/transaction_order/34743.sol:92:54: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (totalFunding >= PRESALE_MINIMUM_FUNDING) throw;
                                                     ^---^
./dataset/contracts/transaction_order/34743.sol:94:44: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (balanceOf[msg.sender] < value) throw;
                                           ^---^
./dataset/contracts/transaction_order/34743.sol:98:38: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (!msg.sender.send(value)) throw;
                                     ^---^
./dataset/contracts/transaction_order/34743.sol:106:40: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (now < OWNER_CLAWBACK_DATE) throw;
                                       ^---^
./dataset/contracts/transaction_order/34743.sol:108:40: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (!owner.send(this.balance)) throw;
                                       ^---^
./dataset/contracts/transaction_order/34743.sol:125:28: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (result < base) throw;
                           ^---^
./dataset/contracts/transaction_order/34743.sol:133:28: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        if (result > base) throw;
                           ^---^

INFO:Detectors:
IungoPresale.fallback() (dataset/contracts/transaction_order/34743.sol#61-75) uses timestamp for comparisons
	Dangerous comparisons:
	- now < PRESALE_START_DATE (dataset/contracts/transaction_order/34743.sol#63)
	- now > PRESALE_END_DATE (dataset/contracts/transaction_order/34743.sol#65)
IungoPresale.participantWithdrawIfMinimumFundingNotReached(uint256) (dataset/contracts/transaction_order/34743.sol#88-99) uses timestamp for comparisons
	Dangerous comparisons:
	- now <= PRESALE_END_DATE (dataset/contracts/transaction_order/34743.sol#90)
IungoPresale.ownerClawback() (dataset/contracts/transaction_order/34743.sol#104-109) uses timestamp for comparisons
	Dangerous comparisons:
	- now < OWNER_CLAWBACK_DATE (dataset/contracts/transaction_order/34743.sol#106)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#12):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#63):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#65):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#67):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#69):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#72):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#81):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#83):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#90):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#92):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#94):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#98):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#106):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#108):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#125):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/34743.sol#133):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint 0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- 0.4.15 (dataset/contracts/transaction_order/34743.sol#1)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/34743.sol analyzed (2 contracts with 100 detectors), 21 result(s) found
