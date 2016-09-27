.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .prologue
    .line 266
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 265
    const/16 v1, 0xf

    const/16 v2, 0x82

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "version"    # I

    .prologue
    .line 196
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 197
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 199
    .local v0, "params":[B
    const/16 v1, 0x9e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 553
    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 541
    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 565
    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I

    .prologue
    .line 579
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "opcode"    # I
    .param p3, "params"    # [B

    .prologue
    .line 592
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "vendorId"    # I

    .prologue
    .line 176
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 177
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 178
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 179
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 182
    .local v0, "params":[B
    const/16 v1, 0xf

    .line 183
    const/16 v2, 0x87

    .line 182
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "originalOpcode"    # I
    .param p3, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 57
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 58
    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 60
    .local v0, "params":[B
    invoke-static {p0, p1, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 382
    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 322
    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 93
    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 82
    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 71
    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 428
    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .prologue
    .line 278
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 277
    const/4 v1, 0x0

    .line 278
    const/16 v2, 0x9d

    .line 277
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 493
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 482
    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 232
    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 243
    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "menuStatus"    # I

    .prologue
    .line 349
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 350
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 352
    .local v0, "param":[B
    const/16 v1, 0x8e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "address"    # I
    .param p2, "deviceType"    # I

    .prologue
    .line 153
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 155
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 156
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 158
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 161
    .local v0, "params":[B
    const/16 v1, 0xf

    .line 162
    const/16 v2, 0x84

    .line 161
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "powerStatus"    # I

    .prologue
    .line 334
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 335
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 337
    .local v0, "param":[B
    const/16 v1, 0x90

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 210
    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 221
    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I

    .prologue
    .line 306
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 307
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 308
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 310
    .local v0, "param":[B
    const/16 v1, 0xf

    const/16 v2, 0x80

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 517
    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 505
    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 529
    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 7
    .param p0, "src"    # I
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 108
    const/4 v2, 0x0

    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "normalized":Ljava/lang/String;
    new-array v1, v6, [B

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 118
    .local v1, "params":[B
    const/16 v2, 0xf

    .line 119
    const/16 v3, 0x32

    .line 118
    invoke-static {p0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 134
    .local v1, "length":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .local v2, "params":[B
    const/16 v3, 0x47

    invoke-static {p0, p1, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    return-object v3

    .line 135
    .end local v2    # "params":[B
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    return-object v3
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "streamPath"    # I

    .prologue
    .line 292
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 291
    const/16 v1, 0xf

    .line 292
    const/16 v2, 0x86

    .line 291
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 439
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2
    .param p0, "src"    # I
    .param p1, "avr"    # I
    .param p2, "avrPhysicalAddress"    # I
    .param p3, "enableSystemAudio"    # Z

    .prologue
    const/16 v1, 0x70

    .line 366
    if-eqz p3, :cond_0

    .line 368
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 367
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 254
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "uiCommand"    # I

    .prologue
    .line 394
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "commandParam"    # [B

    .prologue
    .line 406
    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .prologue
    .line 417
    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .prologue
    .line 451
    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "vendorId"    # I
    .param p3, "operands"    # [B

    .prologue
    const/4 v3, 0x0

    .line 465
    array-length v1, p3

    add-int/lit8 v1, v1, 0x3

    new-array v0, v1, [B

    .line 466
    .local v0, "params":[B
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 467
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 468
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 469
    array-length v1, p3

    const/4 v2, 0x3

    invoke-static {p3, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 470
    const/16 v1, 0xa0

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "body"    # [B

    .prologue
    .line 39
    const/4 v2, 0x0

    aget-byte v0, p2, v2

    .line 40
    .local v0, "opcode":B
    array-length v2, p2

    const/4 v3, 0x1

    invoke-static {p2, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 41
    .local v1, "params":[B
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v2
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3
    .param p0, "physicalAddress"    # I

    .prologue
    .line 596
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 597
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 598
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 596
    return-object v0
.end method
