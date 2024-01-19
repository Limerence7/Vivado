// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sun Jul 16 14:07:54 2023
// Host        : DESKTOP-TUCFU41 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/IDE/Projects/Vivado/Instruction/Instruction.gen/sources_1/ip/Inst_ROM/Inst_ROM_sim_netlist.v
// Design      : Inst_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Inst_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module Inst_ROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Inst_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Inst_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Inst_ROM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Lg5F1Zfiau3QeByGU2d8iLyq6c0Ay54VBRkPDiennEnh7TDqlDHQ30ugh+dQhv2UbRSQ4p1Rw5u0
jZgZUZmy1Br6WeCfAfENro2z0tYpE6huap6VYu8VXMMViOdpLZhd3Joz8MWf9Vkpz9O8GsaXV6w1
FT3lzzRx4ZlWqSymP/Y=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k67ldAp8HxMr9nrczAiQCAT2rtecidPnBUTDua4bP0PhBLrvQbOxphm7BiFhkHdGPiDgK6MdINUG
D//GaYQsWWpVUpGZfs8KXRKikvei6OQ4trNDIgpYU9T+zsDYIrvScWpep4H0Kh3R+s45gq7RnJ5m
vdUnaWHtpnFw5f3ARp9akA4O1XBR1BgUKzTCIe0UPAGCpWS1hK4aBQcxKu2PkOA+tPNAh3UV3BiZ
vZru2ov5N6bbEX7XHtyrDx4JovVQLfEIY+57bKNfzEEYKSjLOo5b7ftblU7gLeFmR30a6dQOMMgx
KzeWIzCpQemUcnoi/VEHbHGDt4HRBpIGifDODg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
i+RRRWsjfOwMRpKMUFh0IBcShI8yHuzdR43aSUy7WlXp2lerQDV/hI6ANfHItxdA5uJrEIK5wJiU
VgB5oYlKbVJ1BvZbui5wQoJkmW7IbzfMYtuEI22QXBHs019oGwhANUpCO9BetK/0TTzFxVnHtNOu
/LHdKkMBA0VUUUKT6VU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tFYGPovVzEoIrKrjTzB6ZqQ6KnkrcjUP1OIG5V7ru9HH8w5P8AlgATXl1Xl3Dc0sTv5AhUl86uI/
Te6q6PxhMPJoRhRB1vXyGzAjrWjA4CWJdMmVu8MWo5zod7cvpkzdrQp18aQTcCDQwlU1DmNGiEOo
zimuLuAUKe6AyAorB43/1QRQQqCxNB7BHRnOJAQDnoyMFVNrG12rKOA/sAyZpMLD4B6xJ7gH7QXT
AZuGXKyILGNZ45qXUr2Hw1p0w3wXMgy/YvUW8HbaHN4jAYcIe/ECoyXyKCAWdzANlF2rT2PeCMqV
QEbigoyqGX27Rm4To5kqLVbmwgAs2ChKUhPckA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR8YLkP+Cq0MiT1XckSgPvE9wroyAiBbeHMaKlLiOTx7yegD3rCMk4uetnkA7xdOCG95C0Od5pVH
e2YrEW06xFSOsWdDnQqKOKFYhTwAs147Ze0j25zjomr5m7CmawjMolxykzS96zChWImangU+6Dpu
mE/MKg5/kaC+7gqdMqPmK5P2lIX+ouok9XKxOokJuqD87QwEzDlFFh/qV9pd923yFRNG1c5yQCAY
jC0bWlxJRQo6nbEwBgMn8rC/mMABPH8uD2sMe1yaJv5P7sFeOf3cmAdUGQBGVHRKdpZ59LnHTu1K
InNoIfz9Mx01CNUYdTBr3X0w6fmS/h2C4MO1mA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qqgM6XiDSmuIOj2QmFL4f6puTJICjYjWzQLoNxU1gzCcXd5+ng75tjwe5w6urE45Df59LYjXr90N
xoD+v0GnCLOppWUn4S+1ojqBqn0qMLsvms3D9/dYenWKxpbEiFxbArUoCPmld0c++8yPVQ73qapG
1gDmjbWJO8ByYC0/tiugtOK/vE3jYVzEtxehN3MCFPsHGsspvaF3CdRsMas3tebV/SuH2XSAP8j+
fZhSi0u301RRmZ6mSAEqJK3He0Y91Z5ZQOd80417UBeLHaQiA9kHY2RWaBMXWHjx36IJNuIr/7jr
pqPYRD+g+IOGSYqYr2U+oVSWF/J6FaLGEFORSw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SLY1z3pfrH+89d+aYr8ZYKuGi1pV2B4YTh8mk4uHOGs4LKQ1igmeyM9GJBaMAmt5JcC96WDDnBw4
nB1kIjnCrjVv02nSbiHz+gz/GD9SP86nLzS9QkwUHgiEudWJ/8Fkv+fRer0hLWhtpFMq+QCQAqbX
Dy+Em4RhLOM5CQyRCxiExuROQRkGjH1tQtyz+peAX147pqTEtR9LrFRYUYEPXhtD9b7MSp46zgf4
lSI4aGfqhp6fXq48O+If4NBHVZAh8gHdbneSQhe7VWYJyFRn5NXB16YXAJLa4JQatsMczE+AmO09
k2OEByw2UvUNKGEaf4tNqeBnQNu8yAJKmMaRpQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
rHgksH8uRTUXMqfrbR/KpR7K/BN7+l1GGoZ5uBkIVJQ9E1b2f3VZJPrQ7S7VUrJ9W3clOpFEhjAM
Oc8jJzlnUOrbHfYO51LCZ66FccJgE3OjLaM/OzA3c72JbMeF05jEDKf4QdMRaIQwV0vXvFMXFbcg
CD7AuUhMJ/GWQx0JJmueM8RLvNdUcIDBkWoZcPsRFynLr8IfIXTFpVIdlFrvWDV9M+csfXnQIq6k
Y3z8TRciA00/EiKvOp6Eo50/kD4QjKDFCqzWcw9vpMR1S+mAW8D3yQQ3Mw+7TRW5DTmB7qmmS/LD
xKznKyYDNP9KJ8z4NfSZgy9kCEKF/AEOrpIJqnNaoA6HXh9YFegFhy9SpTPldFTNyW6JDzyY5DW1
hVFcYJFPmlT/ZDM7HC/yiWmfTZamjNjr6j6r4fX5ptKg03NOZ6yoiMqKwnvLDnRIQe9/S7fEOqdV
LqZswQByjnvoCBsrGYw6cNNfz5CW00eecKgkExyDTb2F/xuv6oGtNaRS

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oDWKuMa0YoA/U/QPkQrlE/kjfj1li0yqCn8MeJ3rAm2Z/2YKghA9gsxWs8xB4fe/adKSQ4aHEt1i
tUAxBkQYlT8XiaSFJIAVhNmuXgiEPZ20R+VwppLUjekdT7PC18dHecsi59XlgVJPcddzakFIoqXD
rk8iU8PsQ4WRTiUl44mpMR93K+emGu1nkBJznWpM1pH3aBODRmMjU7IigwOfmOnDjrCzVULW4z7V
2AuUO8AJxPTXjBkt8QkS+Lo97MZG0bItGmjC+mkr0BAz/l2ADPjOsfpKHAN3Qk4Crlkhpfgt7XT0
5KHCyECHiPkWrJah55lp7roA13m4EgPMJeM69w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rabaiFoR9bIj5CFcJ70CIsYI2myG5mevbxKcSzOpgQHZ4FX874h3Mvv4oNhB5aIwoXefnyix4Pas
3xk2ZBOqreX1vuZUYS7Nk3rT6wqN+/JYXGO7E9xfmFF/iTdL9heWc8JHcLe4e6B8B9QYhGlkRIbN
3etlFTSqKlO5nfA6dKX6Cd+yV3PZZfJXT4jlaY1rpqMPaBtlHWQ7D4o1gO+mHgP0sOQ4bpowU+7Q
jMr0tYghyxsfIddTxrVE0fwZeg1qWlo+iSU1PAJGRVMKIAn7NZ4i8f+ed6NJKt2vGjDFfZXLXClO
nyA+xb6K3aWY3lMR6qP8qDkKAJJZe9Y36MRGng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpnCRmSw3bCoDXuz4ACuAPPPaMheVpOmUjnTbTAMOWU5UsZtyDXZeGV8/oIsADVazSxLQZSBGgiy
SKvVnFKfYB7AgQDUMZFw0rVRtHiVMwSzKWeKD6RAhsC0bPj9SvO7LAbMlPup0Bqp/B+25di0U3gR
HcJdPJAve7xMFNBSYWEA8qxoNxWNshmZSjI/bZ357HlFVPisa6jUUqfB1NL8is8ZUS6S+cNLQyEf
tij0AWwPrqG8naFrpTzHWE6VrXYG5oNftxQbYOQR6HjuL4cx/R64+btFaWdnBHup1adCO/sGxhdd
Dd1b6OQ/2YtZTyp2K8aDHbceCM5X1/8CZdRU5g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18704)
`pragma protect data_block
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
huw5F2AgfGE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
