.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8584
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x20010

    .line 8587
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8588
    const-string/jumbo v4, ""

    .line 8589
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8590
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    .line 8592
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enter ObtainingIpState netId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8593
    const-string/jumbo v8, " "

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8593
    const-string/jumbo v8, " "

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8594
    const-string/jumbo v8, " roam="

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8594
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8595
    const-string/jumbo v8, " static="

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8595
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v8

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8596
    const-string/jumbo v8, " watchdog= "

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8596
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 8592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8601
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8604
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8609
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "ObtainingIpAddress"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 8612
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8619
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8620
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8621
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->renewDhcp()V

    .line 8629
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 8630
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Start Dhcp Watchdog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8632
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 8633
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8634
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 8633
    const v9, 0x2005d

    invoke-virtual {v7, v9, v8, v11}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 8634
    const-wide/32 v8, 0x9c40

    .line 8633
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8586
    :goto_2
    return-void

    .line 8615
    :catch_0
    move-exception v2

    .line 8616
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to enable IPv6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 8613
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    .line 8614
    .local v5, "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to enable IPv6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8626
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 8627
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->startDhcp()V

    goto/16 :goto_1

    .line 8637
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    .line 8638
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    .line 8639
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    .line 8638
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 8640
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v6, :cond_4

    .line 8641
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Static IP lacks address"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8642
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 8644
    :cond_4
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 8645
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 8646
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 8648
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 8649
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Static IP configuration succeeded"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8650
    :cond_5
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 8651
    .local v1, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2000f

    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 8652
    .end local v1    # "dhcpResults":Landroid/net/DhcpResults;
    :catch_2
    move-exception v5

    .line 8653
    .restart local v5    # "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8654
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 8655
    .end local v5    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 8656
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8657
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8664
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8666
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 8703
    const/4 v0, 0x0

    return v0

    .line 8668
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpResults;

    const v2, 0x2000f

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap27(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    .line 8705
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 8671
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20010

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 8675
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 8679
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8680
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 8684
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8685
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 8689
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8690
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 8693
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    if-ne v0, v1, :cond_0

    .line 8694
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObtainingIpAddress: Watchdog Triggered, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8695
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 8694
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8696
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8697
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 8700
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 8666
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_5
        0x2004d -> :sswitch_4
        0x2005d -> :sswitch_6
        0x2008f -> :sswitch_2
        0x20091 -> :sswitch_2
        0x20092 -> :sswitch_3
        0x25007 -> :sswitch_3
    .end sparse-switch
.end method
