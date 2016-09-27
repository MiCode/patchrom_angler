.class public Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;
.super Ljava/lang/Object;
.source "InnerAuthEAP.java"

# interfaces
.implements Lcom/android/server/wifi/anqp/eap/AuthParam;


# instance fields
.field private final mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 17
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 20
    .local v0, "typeID":I
    invoke-static {v0}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V
    .locals 0
    .param p1, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_0

    .line 44
    return v0

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    if-eq v2, v3, :cond_2

    .line 46
    :cond_1
    return v1

    .line 48
    :cond_2
    check-cast p1, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    .end local p1    # "thatObject":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    return-object v0
.end method

.method public getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Auth method InnerAuthEAP, inner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;->mEapMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
