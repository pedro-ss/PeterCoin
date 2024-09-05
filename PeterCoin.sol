// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function tranfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256);
}

contract PeterCoin is IERC20 {

    string constant name = "PETER_COIN";
    string constant symbol = "PETOIN";
    uint8 constant decimals = 18;

    mapping(address=>uint256) balances;
    mapping(address=>mapping(address=>uint256)) allowed;
    uint256 totalSupply_ = 10 ether;

    
}
