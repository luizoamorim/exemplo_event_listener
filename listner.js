require("dotenv").config();
const { ethers } = require("ethers");
const { electionAbi } = require("./ElectionABI");

const provider = new ethers.providers.WebSocketProvider(
  `wss://sepolia.infura.io/ws/v3/${process.env.INFURA_ID}`
);

// Your smart contract address and ABI
const contractAddress = process.env.CONTRACT_ADDRESS;
const contractABI = electionAbi; // Replace with your contract's ABI

const contract = new ethers.Contract(contractAddress, contractABI, provider);

console.log("Waiting for events...");

contract.on("Vote", (voter, event) => {
  console.log(`Vote received! Voter: ${voter}`);
  // Here you can add code to handle the incoming event,
  // like broadcasting it to WebSocket clients.
});
