# Our own little cuda 10 + ubuntu 16 image

As nvidia obeslesces its varuous docker containers, we need to build our own. 

It's pretty nutty. But here you go

## cuda10 needed libcudnn

cuda10/libcudnn7_7.6.5.32-1+cuda10.2_amd64.deb
cuda10/libcudnn7-dev_7.6.5.32-1+cuda10.2_amd64.deb

which are from 

https://developer.nvidia.com/rdp/cudnn-archive

specifically -

https://developer.download.nvidia.com/compute/machine-learning/cudnn/secure/7.6.5.32/Production/10.2_20191118/Ubuntu16_04-x64/libcudnn7_7.6.5.32-1+cuda10.2_amd64.deb?PzrroXwYyoqBK9hNMuYAlHuorLxQFznTiGGtBq7n8_bf3jeDf4f67C_TnEEMXZrZ_IJ0CcdPrfJpFe0sFwYzb7Sp318bAiqIDGG44li1EZaAxIH69H8pNJCtCHSNe_Nl_qzD1GkLuyGjdsIHAiPAvnEmY-UWY9CB8MWhLXY5yoCvbt0NXf4PnYgnP-V398Dm-Fd5fFH-_6R6xQRFVyIx9NTxU6xNA_TqBUbLvjWG2abJqKqkj1WKWySgmtSHKw==&t=eyJscyI6ImJzZW8iLCJsc2QiOiJodHRwczovL3d3dy5iaW5nLmNvbS8ifQ==

and

https://developer.download.nvidia.com/compute/machine-learning/cudnn/secure/7.6.5.32/Production/10.2_20191118/Ubuntu16_04-x64/libcudnn7-dev_7.6.5.32-1+cuda10.2_amd64.deb?05IFyQbHpfgaZyRUryqJoAHmJYTn68yXKPgYoR0FV-_xgX08Jpwj4qtXzqg25tgzvNccWf0gZLB4-gkePTf4HvZzU1m2GVMyq9ZLYXZb2o6SihOousOnjNh81VGN4W3XdKgr2eFmPyemFYuv89iOm1OudwPa-px_55tmiLZhn61szaByo8LyuBM97WMJVSv9iO9UWv7m93Af_ZcUW-e7wganx4rx8aHr1A-oKSK4KxfZUIpYpG02keUuhcsRRF1vskw=&t=eyJscyI6ImJzZW8iLCJsc2QiOiJodHRwczovL3d3dy5iaW5nLmNvbS8ifQ==

