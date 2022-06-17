// This shit is too inaccurate idk why 
// advance ping lol hehe ehe

// p.s if it doesn't work well idk about u
// maybe u forgot to install the network-speed globally or in ur node_modules
const NetworkSpeed = require('network-speed');
const testNetworkSpeed = new NetworkSpeed();
const { exec } = require('child_process');
let num = 1;
let address = "finding address";

function testSpeed() {
    // clears anything idk I use CLI 
    // executes a batch file 
    exec("ping www.google.com -n 1", async (err, st, std) => {

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
            , fileSizeInBytesDown = 60000000 // bytes to download
            , fileSizeInByteUp = 5000000 // bytes to upload

        let speed1;

        try{
            speed1 = await testNetworkSpeed.checkDownloadSpeed(baseUrl, fileSizeInBytesDown)
        } catch {
            connectionTimeout(_ping)
        }

        _ping.Total.download = parseFloat(await speed1.mbps).toFixed(2) + " mbps"

        console.clear()
        console.log(`Connection: www.google.com [${address}]`)
        console.log("\x1b[1m")
        console.table(_ping)
        console.log("\x1b[0m")
        console.log("Checking upload speed.")

        let uploadSpeed1;
        // same shit but 'uploads'
        try{
            uploadSpeed1 = await testNetworkSpeed.checkUploadSpeed(options, fileSizeInByteUp)
            _ping.Total.upload = parseFloat(await uploadSpeed1.mbps).toFixed(2) + " mbps"
        } catch(e) {z
            uploadSpeed1 = UploadRetry(baseUrl, fileSizeInByteUp);
            _ping.Total.upload = parseFloat(await uploadSpeed1.mbps).toFixed(2) + " mbps"
        } finally {
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

async function UploadRetry(baseUrl, fileSizeInBytesDown)
{
    var Speed = await testNetworkSpeed.checkDownloadSpeed(baseUrl, fileSizeInBytesDown);
    return Speed;
}