.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 42
    new-array v4, p3, [B

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 43
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 46
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 48
    .local v0, "addressLength":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v4, v4, v7

    and-int/lit16 v3, v4, 0xff

    .line 49
    .local v3, "toa":I
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    .line 52
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    .line 53
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    add-int/lit8 v6, p2, 0x1

    .line 53
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    mul-int/lit8 v4, v0, 0x4

    div-int/lit8 v1, v4, 0x7

    .line 61
    .local v1, "countSeptets":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 62
    const/4 v5, 0x2

    .line 61
    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 41
    .end local v1    # "countSeptets":I
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v2, v4, v5

    .line 70
    .local v2, "lastByte":B
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v7, :cond_2

    .line 72
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v6, v4, v5

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 74
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    .line 75
    add-int/lit8 v5, p3, -0x1

    .line 74
    invoke-static {v4, v7, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aput-byte v2, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 149
    :cond_0
    return v0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v2

    .line 126
    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    .line 126
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->origBytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 137
    :cond_0
    return v0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
