.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 1919
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1918
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1925
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1923
    :cond_0
    :goto_0
    return-void

    .line 1927
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 1931
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1932
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 1936
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 1940
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1941
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_1

    .line 1942
    const-string/jumbo v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto :goto_0

    .line 1945
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 1946
    .local v12, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1947
    const/16 v1, 0x10

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 1946
    if-eqz v1, :cond_3

    .line 1948
    :cond_2
    const-string/jumbo v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BUG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " has CS-managed capability."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_3
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_4

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->equalImmutableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1955
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v12}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto/16 :goto_0

    .line 1952
    :cond_5
    const-string/jumbo v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BUG: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " changed immutable capabilities: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1953
    iget-object v4, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1952
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1953
    const-string/jumbo v4, " -> "

    .line 1952
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1960
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1961
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_6

    .line 1962
    const-string/jumbo v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1968
    :cond_6
    iget-object v13, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1969
    .local v13, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v11

    .line 1970
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 1972
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v13}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 1969
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 1977
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v13    # "oldLp":Landroid/net/LinkProperties;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1978
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_7

    .line 1979
    const-string/jumbo v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1982
    :cond_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    .line 1983
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v10}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 1987
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1988
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_8

    .line 1989
    const-string/jumbo v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1992
    :cond_8
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 1993
    .local v15, "score":Ljava/lang/Integer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    .line 1997
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v15    # "score":Ljava/lang/Integer;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1998
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_9

    .line 1999
    const-string/jumbo v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2003
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2004
    :catch_0
    move-exception v9

    .line 2006
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2011
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2012
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_a

    .line 2013
    const-string/jumbo v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2017
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2018
    :catch_1
    move-exception v9

    .line 2020
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2025
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2026
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_b

    .line 2027
    const-string/jumbo v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2030
    :cond_b
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_c

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_d

    .line 2033
    :cond_c
    :goto_2
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2034
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_0

    .line 2031
    :cond_d
    const-string/jumbo v1, "ERROR: created network explicitly selected."

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto :goto_2

    .line 2038
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2039
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_e

    .line 2040
    const-string/jumbo v1, "EVENT_PACKET_KEEPALIVE from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2043
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2047
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2048
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string/jumbo v2, "EVENT_NETWORK_TESTED"

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2050
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_10

    const/16 v16, 0x1

    .line 2051
    .local v16, "valid":Z
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " validation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v16, :cond_11

    const-string/jumbo v1, " passed"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 2052
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    move/from16 v0, v16

    if-eq v0, v1, :cond_f

    .line 2053
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v14

    .line 2054
    .local v14, "oldScore":I
    move/from16 v0, v16

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2055
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int v1, v1, v16

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2058
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-eq v14, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2060
    .end local v14    # "oldScore":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2062
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2064
    if-eqz v16, :cond_12

    const/4 v1, 0x1

    .line 2063
    :goto_5
    const v4, 0x81007

    .line 2065
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2062
    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2050
    .end local v16    # "valid":Z
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "valid":Z
    goto :goto_3

    .line 2051
    :cond_11
    const-string/jumbo v1, "failed"

    goto :goto_4

    .line 2064
    :cond_12
    const/4 v1, 0x2

    goto :goto_5

    .line 2070
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "valid":Z
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2071
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string/jumbo v2, "EVENT_NETWORK_LINGER_COMPLETE"

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2077
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 2078
    .local v3, "netId":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_14

    const/16 v17, 0x1

    .line 2080
    .local v17, "visible":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 2081
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    .line 2084
    if-eqz v11, :cond_13

    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    move/from16 v0, v17

    if-eq v0, v1, :cond_13

    .line 2085
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2086
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int v1, v1, v17

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2089
    :cond_13
    if-nez v17, :cond_15

    .line 2090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 2078
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v17    # "visible":Z
    :cond_14
    const/16 v17, 0x0

    .restart local v17    # "visible":Z
    goto :goto_6

    .line 2080
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2092
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_15
    if-nez v11, :cond_16

    .line 2093
    const-string/jumbo v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap19(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2096
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v4, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    .line 2097
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 2098
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/PendingIntent;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v8, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2096
    const/4 v2, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 1925
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81001 -> :sswitch_5
        0x81002 -> :sswitch_3
        0x81003 -> :sswitch_4
        0x81004 -> :sswitch_6
        0x81005 -> :sswitch_7
        0x81006 -> :sswitch_8
        0x81008 -> :sswitch_9
        0x8100d -> :sswitch_a
        0x82002 -> :sswitch_b
        0x82005 -> :sswitch_c
        0x8200a -> :sswitch_d
    .end sparse-switch
.end method
