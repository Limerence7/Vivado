// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sun Jul 16 14:07:53 2023
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
