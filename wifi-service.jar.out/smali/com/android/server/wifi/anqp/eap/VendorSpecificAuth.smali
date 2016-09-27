.class public Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;
.super Ljava/lang/Object;
.source "VendorSpecificAuth.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    .line 16
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    .line 30
    if-ne p1, p0, :cond_0

    .line 31
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    if-eq v0, v1, :cond_2

    .line 33
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Auth method VendorSpecificAuth, data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
