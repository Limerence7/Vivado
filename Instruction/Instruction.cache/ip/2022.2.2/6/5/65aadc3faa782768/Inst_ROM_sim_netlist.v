// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sat Jul 15 23:38:14 2023
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
