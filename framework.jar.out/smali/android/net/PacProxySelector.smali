.class public Landroid/net/PacProxySelector;
.super Ljava/net/ProxySelector;
.source "PacProxySelector.java"


# static fields
.field private static final PROXY:Ljava/lang/String; = "PROXY "

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final SOCKS:Ljava/lang/String; = "SOCKS "

.field private static final TAG:Ljava/lang/String; = "PacProxySelector"


# instance fields
.field private final mDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 49
    const-string/jumbo v0, "com.android.net.IProxyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 50
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "PacProxySelector"

    const-string/jumbo v1, "PacManager: no proxy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    .line 47
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 87
    const-string/jumbo v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 90
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "trimmed":Ljava/lang/String;
    const-string/jumbo v7, "DIRECT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v7, "PROXY "

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string/jumbo v8, "PROXY "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 95
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_2
    const-string/jumbo v7, "SOCKS "

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const-string/jumbo v8, "SOCKS "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/PacProxySelector;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 100
    .restart local v0    # "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v0    # "proxy":Ljava/net/Proxy;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "trimmed":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 106
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    return-object v1
.end method

.method private static proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 7
    .param p0, "type"    # Ljava/net/Proxy$Type;
    .param p1, "hostPortString"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "hostPort":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 115
    .local v1, "host":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    .local v3, "port":I
    new-instance v4, Ljava/net/Proxy;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 117
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "hostPort":[Ljava/lang/String;
    .end local v3    # "port":I
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "PacProxySelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .prologue
    .line 124
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v4, :cond_0

    .line 61
    const-string/jumbo v4, "com.android.net.IProxyService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 60
    invoke-static {v4}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v4

    iput-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 63
    :cond_0
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v4, :cond_1

    .line 64
    const-string/jumbo v4, "PacProxySelector"

    const-string/jumbo v5, "select: no proxy service return NO_PROXY"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 70
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 75
    .local v3, "urlString":Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/net/IProxyService;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 79
    .end local v2    # "response":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_2

    .line 80
    iget-object v4, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    return-object v4

    .line 71
    .end local v3    # "urlString":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "urlString":Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PacProxySelector"

    const-string/jumbo v5, "Error resolving PAC File"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/net/PacProxySelector;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method
