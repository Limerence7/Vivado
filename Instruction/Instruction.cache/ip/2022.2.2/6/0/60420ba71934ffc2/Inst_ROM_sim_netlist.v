// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sat Jul 15 14:21:06 2023
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
