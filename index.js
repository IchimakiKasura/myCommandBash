// advance ping lol hehe ehe

// p.s if it doesn't work well idk about u
// maybe u forgot to install the network-speed globally or in ur node_modules
import NetworkSpeed from 'network-speed';
const testNetworkSpeed = new NetworkSpeed();
import { exec } from 'child_process';
let num = 1;
let address = "finding address";

function testSpeed() {
    // clears anything idk I use CLI 
    // executes a batch file 
    exec("ping google.com -n 1", async (err, st, std) => {

        let _ping = {
            "Total": {
                "Ping": "Processing",
                "download": "Processing",
                "upload": "Processing"
            }
        }

        console.clear()
        console.log(`Connection: www.google.com [${address}]`)
        console.log("\x1b[1m")
        console.table(_ping)
        console.log("\x1b[0m")
        console.log(`checking Ping      retries: ${num}`)

        // shh idk
        let a

        if(num == 10){
            console.log("Please check your connection")
            process.exit()
        }

        // getting raw output from the batch file then regex it to get the ping
        try {
            a = parseInt(st.match(/time=.*ms/i)[0].replace(/[a-z|=]/g, ""))
            address = st.match(/google.com \[.*\]/i)[0].replace("google.com","").replace("[","").replace("]","").trim();
        } catch (err) {
            num++
            return testSpeed()
        }

        // adds a 'ms'. yes i know i should've add it on there
        _ping.Total.Ping = a + " ms"

        console.clear()
        console.log(`Connection: www.google.com [${address}]`)
        console.log("\x1b[1m")
        console.table(_ping)
        console.log("\x1b[0m")
        console.log("Checking download speed.")

        // variables
        const baseUrl = "https://www.google.com" // link
            , options = {
                hostname: address, // link's raw ip
                port: 80, // link's port
                method: 'POST' // for the upload part
            }
            , fileSizeInBytes = 38645 // bytes to download and upload

        let speed1,speed2,speed3;

        try{
            speed1 = await testNetworkSpeed.checkDownloadSpeed(baseUrl, fileSizeInBytes)
        } catch(e) {
            connectionTimeout(_ping)
        }

            console.clear()
            console.log(`Connection: www.google.com [${address}]`)
            console.log("\x1b[1m")
            console.table(_ping)
            console.log("\x1b[0m")
            console.log("Checking download speed..")

        try {
            speed2 = await testNetworkSpeed.checkDownloadSpeed(baseUrl, fileSizeInBytes)
        } catch(e) {
            connectionTimeout(_ping)
        }

            console.clear()
            console.log(`Connection: www.google.com [${address}]`)
            console.log("\x1b[1m")
            console.table(_ping)
            console.log("\x1b[0m")
            console.log("Checking download speed...")

        try {
            speed3 = await testNetworkSpeed.checkDownloadSpeed(baseUrl, fileSizeInBytes)
        } catch(e) {
            connectionTimeout(_ping)
        }
            // download 3 times and calculate the speed best of 3
            const speedTotal = parseFloat(speed1.mbps) + parseFloat(speed2.mbps) + parseFloat(speed3.mbps) / 3

            _ping.Total.download = parseFloat(speedTotal).toFixed(2) + " mbps"

        console.clear()
        console.log(`Connection: www.google.com [${address}]`)
        console.log("\x1b[1m")
        console.table(_ping)
        console.log("\x1b[0m")
        console.log("Checking upload speed.")

        let uploadSpeed1,uploadSpeed2,uploadSpeed3;
        // same shit but 'uploads'
        try{
            uploadSpeed1 = await testNetworkSpeed.checkUploadSpeed(options, fileSizeInBytes)
        } catch(e) {
            upspeedfail(_ping)
        }
            console.clear()
            console.log(`Connection: www.google.com [${address}]`)
            console.log("\x1b[1m")
            console.table(_ping)
            console.log("\x1b[0m")
            console.log("Checking upload speed..")
        try{
            uploadSpeed2 = await testNetworkSpeed.checkUploadSpeed(options, fileSizeInBytes)
        } catch(e) {
            upspeedfail(_ping)
        }
            console.clear()
            console.log(`Connection: www.google.com [${address}]`)
            console.log("\x1b[1m")
            console.table(_ping)
            console.log("\x1b[0m")
            console.log("Checking upload speed...")
        try{
            uploadSpeed3 = await testNetworkSpeed.checkUploadSpeed(options, fileSizeInBytes)
			const uploadSpeed = parseFloat(uploadSpeed1.mbps) + parseFloat(uploadSpeed2.mbps) + parseFloat(uploadSpeed3.mbps) / 3
			_ping.Total.upload = parseFloat(uploadSpeed).toFixed(2) + " mbps"
        } catch(e) {
            upspeedfail(_ping)
        }


        console.clear()
        console.log(`Connection: www.google.com [${address}]`)
        console.log("\x1b[1m")
        console.table(_ping)
        console.log("\x1b[0m")

        //hmm yeah adding 'wait' seems perfect
        setTimeout(() => {
            console.clear()
            console.log(`Connection: www.google.com [${address}]`)
            console.log("\x1b[1m")
            console.table(_ping)
            console.log("\x1b[0m")
            _ping.Total.download = _ping.Total.download.replace(" mbps", "")
            _ping.Total.upload = _ping.Total.upload.replace(" mbps", "")
            // i suck at math but i have the logic
            let _netSpeed = {
                "kilo bits  (kb)": { "Downspeed (Download)": _ping.Total.download * 1024 + " kbps", "Upspeed (Upload)": _ping.Total.upload * 1024 + " kbps" },
                "Mega bits  (mb)": { "Downspeed (Download)": _ping.Total.download + " mbps", "Upspeed (Upload)": _ping.Total.upload + " mbps" },
                "Kilo Bytes (KB)": { "Downspeed (Download)": (_ping.Total.download * 1024 / 8).toFixed(3) + " KB/s", "Upspeed (Upload)": (_ping.Total.upload * 1024 / 8).toFixed(3) + " KB/s" },
                "Mega Bytes (MB)": { "Downspeed (Download)": (_ping.Total.download * 1024 / 8 / 1024).toFixed(3) + " MB/s", "Upspeed (Upload)": (_ping.Total.upload * 1024 / 8 / 1024).toFixed(3) + " MB/s" }
            }
            console.log("Calculated Speed:")
            console.log("\x1b[1m")
            console.table(_netSpeed)
            console.log("\x1b[0m")
            if(_ping.Total.upload == "Error"){
                console.log("UpSpeed Failed when uploading Please check your internet connection and re-run the command")
            }
        }, 1000)
    })
}
testSpeed();

function connectionTimeout(_ping) {
    console.clear()
    console.log(`Connection: www.google.com [${address}]`)
    console.log("\x1b[1m")
    console.table(_ping)
    console.log("\x1b[0m")
    console.log("ERROR: connection TIMEOUT")
    process.exit()
}
function upspeedfail(_ping){
    _ping.Total.upload = "Error"

    console.clear()
    console.log(`Connection: www.google.com [${address}]`)
    console.log("\x1b[1m")
    console.table(_ping)
    console.log("\x1b[0m")
    return
}