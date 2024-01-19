// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sun Jul 16 11:12:33 2023
// Host        : DESKTOP-TUCFU41 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Inst_ROM_sim_netlist.v
// Design      : Inst_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Inst_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18784)
`pragma protect data_block
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
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
