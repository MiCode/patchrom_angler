.class public Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "NetworkAuthenticationTypeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;,
        Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;
    }
.end annotation


# instance fields
.field private final m_authenticationTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;->m_authenticationTypes:Ljava/util/List;

    .line 60
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 63
    .local v1, "typeNumber":I
    invoke-static {}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->values()[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 64
    sget-object v0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->Reserved:Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    .line 67
    .local v0, "type":Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;->m_authenticationTypes:Ljava/util/List;

    new-instance v3, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;

    .line 68
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x2

    invoke-static {p2, v5, v4}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 67
    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;-><init>(Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;Ljava/lang/String;Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v0    # "type":Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;->values()[Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;

    move-result-object v2

    aget-object v0, v2, v1

    .restart local v0    # "type":Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    goto :goto_1

    .line 54
    .end local v0    # "type":Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NwkAuthTypeEnum;
    .end local v1    # "typeNumber":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getAuthenticationTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement$NetworkAuthentication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;->m_authenticationTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkAuthenticationType{m_authenticationTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;->m_authenticationTypes:Ljava/util/List;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const/16 v1, 0x7d

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
