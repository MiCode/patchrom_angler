.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

.field private mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

.field private mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;

.field private mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

.field private mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    .line 678
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    .line 679
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    .line 666
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 667
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    .line 668
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 669
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 665
    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 850
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 851
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V
    .locals 4
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    .prologue
    .line 818
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 819
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 821
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 820
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;->onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 826
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 828
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getTxtRecord()Ljava/util/Map;

    move-result-object v2

    .line 830
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 827
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;->onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 833
    :cond_2
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled resp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 4
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 798
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    if-eqz v0, :cond_1

    .line 799
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    .end local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 800
    .restart local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_1
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    if-eqz v0, :cond_0

    .line 802
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    .end local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V

    goto :goto_0

    .line 805
    .restart local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getServiceType()I

    move-result v1

    .line 807
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 806
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method

.method private handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V
    .locals 3
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    .prologue
    .line 813
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getUniqueServiceNames()Ljava/util/List;

    move-result-object v1

    .line 814
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 813
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;->onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 812
    return-void
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 838
    if-nez p1, :cond_0

    return v1

    .line 840
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 842
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    .line 843
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 844
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 846
    return v0

    .line 840
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
