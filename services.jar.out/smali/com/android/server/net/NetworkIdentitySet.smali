.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 43
    .local v10, "version":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 44
    .local v9, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 45
    const/4 v0, 0x1

    if-gt v10, v0, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 49
    .local v1, "type":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 50
    .local v2, "subType":I
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v0, 0x3

    if-lt v10, v0, :cond_1

    .line 53
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 58
    :goto_1
    const/4 v0, 0x2

    if-lt v10, v0, :cond_2

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    .line 64
    :goto_2
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x0

    .local v4, "networkId":Ljava/lang/String;
    goto :goto_1

    .line 61
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .local v8, "roaming":Z
    goto :goto_2

    .line 41
    .end local v1    # "type":I
    .end local v2    # "subType":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "roaming":Z
    :cond_3
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    return v2

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 103
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 104
    .local v0, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v1, v0}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    return v0
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ident$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 72
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 68
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_0
    return-void
.end method
