.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;
.super Ljava/lang/Object;
.source "OMAConstants.java"


# static fields
.field public static final ATTR_URN:Ljava/lang/String; = "spp:moURN"

.field private static final INDENT:[B

.field public static final LOC_DEVDETAIL:Ljava/lang/String; = "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext"

.field public static final LOC_DEVINFO:Ljava/lang/String; = "urn:oma:mo:oma-dm-devinfo:1.0 urn:oma:mo:oma-dm-devdetail"

.field public static final LOC_PPS:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription"

.field public static final RequiredSyncMLVersion:Ljava/lang/String; = "1.2"

.field public static final SyncMLVersionTag:Ljava/lang/String; = "VerDTD"

.field public static final TAG_MO_Add:Ljava/lang/String; = "spp:addMO"

.field public static final TAG_MO_Container:Ljava/lang/String; = "spp:moContainer"

.field public static final TAG_PostDevData:Ljava/lang/String; = "spp:sppPostDevData"

.field public static final TAG_SupportedMOs:Ljava/lang/String; = "spp:supportedMOList"

.field public static final TAG_SupportedVersions:Ljava/lang/String; = "spp:supportedSPPVersions"

.field private static final sMOContainers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    .line 37
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    const-string/jumbo v1, "spp:addMO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    const-string/jumbo v1, "spp:moContainer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    .line 48
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v5, "prefix":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v1, v6

    .line 66
    .local v1, "b":B
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_1

    .line 67
    const/4 v6, 0x0

    return-object v6

    .line 68
    :cond_1
    const/16 v6, 0x3a

    if-ne v1, v6, :cond_2

    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 74
    .local v2, "length":I
    new-array v3, v2, [B

    .line 75
    .local v3, "octets":[B
    const/4 v4, 0x0

    .line 76
    .local v4, "offset":I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_4

    .line 77
    array-length v6, v3

    sub-int/2addr v6, v4

    invoke-virtual {p0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 78
    .local v0, "amount":I
    if-gtz v0, :cond_3

    .line 79
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 70
    .end local v0    # "amount":I
    .end local v2    # "length":I
    .end local v3    # "octets":[B
    .end local v4    # "offset":I
    :cond_2
    const/16 v6, 0x20

    if-le v1, v6, :cond_0

    .line 71
    int-to-char v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    .restart local v0    # "amount":I
    .restart local v2    # "length":I
    .restart local v3    # "octets":[B
    .restart local v4    # "offset":I
    :cond_3
    add-int/2addr v4, v0

    goto :goto_1

    .line 82
    .end local v0    # "amount":I
    :cond_4
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v6
.end method

.method public static indent(ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->INDENT:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    return-void
.end method

.method public static isMOContainer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->sMOContainers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readURN(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "urn":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v0, v2

    .line 90
    .local v0, "b":B
    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 53
    .local v0, "octets":[B
    const-string/jumbo v2, "%x:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 54
    .local v1, "prefix":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 51
    return-void
.end method
