.class public Lorg/ksoap2/transport/HttpsTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "HttpsTransportSE.java"


# static fields
.field static final PROTOCOL:Ljava/lang/String; = "https"


# instance fields
.field private final file:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Establistion connection to: https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, ":"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    .line 29
    iput p2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    .line 30
    iput-object p3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    .line 31
    iput p4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    .line 24
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 51
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 77
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 78
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 61
    const/4 v1, -0x1

    .line 64
    .local v1, "retVal":I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    iget v2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    iget v4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method
