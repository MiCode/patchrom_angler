.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1127
    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1108
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1109
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    .line 1110
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1109
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1112
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1113
    return v4

    .line 1115
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1116
    return v5
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1121
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1122
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1124
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1119
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1140
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1139
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1142
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1143
    .local v36, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1148
    .local v26, "idx":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_2

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1154
    return-void

    .line 1158
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1161
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1164
    if-nez v26, :cond_0

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1172
    .end local v26    # "idx":I
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1175
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_5

    .line 1179
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Cannot bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "params$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1182
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 1184
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1186
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Waiting to connect to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1188
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1190
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v36, :cond_0

    .line 1191
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1200
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 1201
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1204
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1205
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v48

    .line 1208
    .local v48, "ubmsg":Landroid/os/Message;
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1216
    .end local v48    # "ubmsg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1222
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_9
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Empty queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1228
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1229
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_a

    .line 1230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1232
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .restart local v38    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1236
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 1238
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1247
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 1248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 1253
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1264
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1270
    :pswitch_6
    const/16 v45, 0x0

    .line 1272
    .local v45, "size":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1274
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_d

    monitor-exit v3

    .line 1275
    return-void

    .line 1277
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v45

    .line 1278
    if-gtz v45, :cond_e

    monitor-exit v3

    .line 1280
    return-void

    .line 1282
    :cond_e
    :try_start_2
    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1283
    .local v35, "packages":[Ljava/lang/String;
    move/from16 v0, v45

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 1284
    .local v19, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v49, v0

    .line 1285
    .local v49, "uids":[I
    const/16 v25, 0x0

    .line 1287
    .local v25, "i":I
    const/16 v30, 0x0

    .local v30, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_11

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v34

    .line 1290
    .local v34, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 1292
    .local v28, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v0, v25

    move/from16 v1, v45

    if-ge v0, v1, :cond_10

    .line 1293
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 1294
    .local v24, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v35, v25

    .line 1295
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, v19, v25

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/pm/PackageSetting;

    .line 1297
    .local v39, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v39, :cond_f

    .line 1298
    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1297
    :goto_5
    aput v2, v49, v25

    .line 1300
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 1299
    :cond_f
    const/4 v2, -0x1

    goto :goto_5

    .line 1287
    .end local v24    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v39    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1303
    .end local v28    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v34    # "packageUserId":I
    :cond_11
    move/from16 v45, v25

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1307
    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    move/from16 v1, v45

    if-ge v0, v1, :cond_12

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v35, v25

    aget-object v6, v19, v25

    aget v7, v49, v25

    const/4 v9, 0x1

    invoke-static {v2, v3, v9, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap35(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1307
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 1273
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v49    # "uids":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1310
    .restart local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v30    # "n":I
    .restart local v35    # "packages":[Ljava/lang/String;
    .restart local v49    # "uids":[I
    :cond_12
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1314
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v45    # "size":I
    .end local v49    # "uids":[I
    :pswitch_7
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1315
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1316
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 1317
    .local v52, "userId":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_13

    const/16 v16, 0x1

    .line 1318
    .local v16, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1319
    const/4 v2, -0x1

    move/from16 v0, v52

    if-ne v0, v2, :cond_14

    .line 1320
    :try_start_3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v54

    .line 1321
    .local v54, "users":[I
    const/4 v2, 0x0

    move-object/from16 v0, v54

    array-length v6, v0

    :goto_8
    if-ge v2, v6, :cond_15

    aget v51, v54, v2

    .line 1322
    .local v51, "user":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1323
    new-instance v9, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v51

    move/from16 v1, v16

    invoke-direct {v9, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1322
    invoke-virtual {v7, v9}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1321
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1317
    .end local v16    # "andCode":Z
    .end local v51    # "user":I
    .end local v54    # "users":[I
    :cond_13
    const/16 v16, 0x0

    .restart local v16    # "andCode":Z
    goto :goto_7

    .line 1326
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1327
    new-instance v6, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v52

    move/from16 v1, v16

    invoke-direct {v6, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1326
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_15
    monitor-exit v3

    .line 1330
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 1318
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1335
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v16    # "andCode":Z
    .end local v52    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1336
    .local v20, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 1337
    const/16 v21, 0x0

    .line 1339
    .local v21, "deleteOld":Z
    if-eqz v20, :cond_26

    .line 1340
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v17, v0

    .line 1341
    .local v17, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v41, v0

    .line 1343
    .local v41, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v41

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 1344
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1345
    .restart local v4    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    .line 1346
    new-instance v5, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1347
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    move-object/from16 v0, v41

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_16

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1354
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1353
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V

    .line 1361
    :cond_16
    const/4 v2, 0x0

    new-array v15, v2, [I

    .line 1362
    .local v15, "updateUsers":[I
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v2, :cond_17

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    if-nez v2, :cond_1d

    .line 1363
    :cond_17
    move-object/from16 v0, v41

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .line 1390
    .local v8, "firstUsers":[I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    .line 1391
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1390
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1392
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_21

    const/16 v50, 0x1

    .line 1393
    .local v50, "update":Z
    :goto_9
    if-eqz v50, :cond_19

    .line 1394
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1396
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    .line 1397
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    move-object v12, v5

    .line 1396
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1398
    if-eqz v50, :cond_1b

    .line 1399
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.PACKAGE_REPLACED"

    .line 1400
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    move-object v12, v5

    .line 1399
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 1402
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v13, v4

    .line 1401
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1405
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1410
    :cond_1a
    const/4 v2, 0x1

    new-array v13, v2, [I

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    aput v2, v13, v3

    .line 1411
    .local v13, "uidArray":[I
    new-instance v12, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1412
    .local v12, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1414
    const/4 v14, 0x0

    .line 1413
    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 1417
    .end local v12    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "uidArray":[I
    :cond_1b
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_1c

    .line 1419
    const/16 v21, 0x1

    .line 1424
    :cond_1c
    array-length v2, v8

    if-lez v2, :cond_23

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1429
    const/4 v2, 0x0

    :try_start_4
    array-length v6, v8

    :goto_a
    if-ge v2, v6, :cond_22

    aget v52, v8, v2

    .line 1430
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v9, 0x0

    move/from16 v0, v52

    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/Settings;->setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1429
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1365
    .end local v8    # "firstUsers":[I
    .end local v50    # "update":Z
    .end local v52    # "userId":I
    :cond_1d
    const/4 v2, 0x0

    new-array v8, v2, [I

    .line 1366
    .restart local v8    # "firstUsers":[I
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_b
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v2, v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_18

    .line 1367
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v51, v2, v25

    .line 1368
    .restart local v51    # "user":I
    const/16 v27, 0x1

    .line 1369
    .local v27, "isNew":Z
    const/16 v29, 0x0

    .local v29, "j":I
    :goto_c
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_1e

    .line 1370
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v2, v2, v29

    move/from16 v0, v51

    if-ne v2, v0, :cond_1f

    .line 1371
    const/16 v27, 0x0

    .line 1375
    :cond_1e
    if-eqz v27, :cond_20

    .line 1376
    array-length v2, v8

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .line 1378
    .local v31, "newFirst":[I
    array-length v2, v8

    .line 1377
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-static {v8, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1379
    array-length v2, v8

    aput v51, v31, v2

    .line 1380
    move-object/from16 v8, v31

    .line 1366
    .end local v31    # "newFirst":[I
    :goto_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1369
    :cond_1f
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    .line 1382
    :cond_20
    array-length v2, v15

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v32, v0

    .line 1384
    .local v32, "newUpdate":[I
    array-length v2, v15

    .line 1383
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-static {v15, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1385
    array-length v2, v15

    aput v51, v32, v2

    .line 1386
    move-object/from16 v15, v32

    goto :goto_d

    .line 1392
    .end local v25    # "i":I
    .end local v27    # "isNew":Z
    .end local v29    # "j":I
    .end local v32    # "newUpdate":[I
    .end local v51    # "user":I
    :cond_21
    const/16 v50, 0x0

    .restart local v50    # "update":Z
    goto/16 :goto_9

    :cond_22
    monitor-exit v3

    .line 1437
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    .line 1436
    const/16 v3, 0xc26

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1440
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :cond_24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1442
    if-eqz v21, :cond_25

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1444
    :try_start_5
    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v3

    .line 1447
    :cond_25
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v2, :cond_0

    .line 1449
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 1450
    .restart local v5    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 1451
    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 1450
    invoke-interface {v2, v3, v6, v7, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1452
    .end local v5    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v23

    .line 1453
    .local v23, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1428
    .end local v23    # "e":Landroid/os/RemoteException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v8    # "firstUsers":[I
    .restart local v15    # "updateUsers":[I
    .restart local v50    # "update":Z
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1443
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1457
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v41    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_26
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bogus post-install token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1462
    .end local v20    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v21    # "deleteOld":Z
    :pswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    const/16 v40, 0x1

    .line 1463
    .local v40, "reportStatus":Z
    :goto_e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    const/16 v22, 0x1

    .line 1465
    .local v22, "doGc":Z
    :goto_f
    if-eqz v22, :cond_27

    .line 1467
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1469
    :cond_27
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_28

    .line 1471
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Set;

    .line 1474
    .local v18, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1476
    .end local v18    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_28
    if-eqz v40, :cond_0

    .line 1479
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1480
    :catch_1
    move-exception v23

    .line 1481
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "MountService not running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1462
    .end local v22    # "doGc":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v40    # "reportStatus":Z
    :cond_29
    const/16 v40, 0x0

    .restart local v40    # "reportStatus":Z
    goto :goto_e

    .line 1463
    :cond_2a
    const/16 v22, 0x0

    .restart local v22    # "doGc":Z
    goto :goto_f

    .line 1486
    .end local v22    # "doGc":Z
    .end local v40    # "reportStatus":Z
    :pswitch_a
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1488
    const/16 v2, 0xd

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1489
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v3

    .line 1493
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1487
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1496
    :pswitch_b
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1498
    const/16 v2, 0xe

    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, "userId$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 1500
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_10

    .line 1497
    .end local v52    # "userId":I
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1502
    .restart local v53    # "userId$iterator":Ljava/util/Iterator;
    :cond_2b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v3

    .line 1504
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1507
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1508
    .local v55, "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    .line 1510
    .local v47, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v47, :cond_0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v17

    .line 1512
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 1514
    .local v33, "originUri":Landroid/net/Uri;
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Verification timed out for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1517
    const/16 v44, -0x16

    .line 1519
    .local v44, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap12(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 1520
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Continuing with installation of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1522
    const/4 v3, 0x2

    .line 1521
    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1525
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1524
    const/4 v6, 0x1

    .line 1523
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1527
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    move-result v44

    .line 1537
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap31(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1528
    :catch_2
    move-exception v23

    .line 1529
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1532
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1534
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1533
    const/4 v6, -0x1

    .line 1532
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_11

    .line 1543
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1545
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    .line 1546
    .restart local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v47, :cond_2d

    .line 1547
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid verification token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " received"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1553
    .local v43, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v43

    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1555
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1558
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v17

    .line 1559
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    .line 1562
    .restart local v33    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1563
    const/16 v44, -0x6e

    .line 1564
    .restart local v44    # "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1565
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 1564
    move/from16 v0, v55

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1, v3, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1567
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    move-result v44

    .line 1575
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap31(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1568
    :catch_3
    move-exception v23

    .line 1569
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1572
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v44    # "ret":I
    :cond_2e
    const/16 v44, -0x16

    .restart local v44    # "ret":I
    goto :goto_12

    .line 1583
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v43    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1584
    .local v37, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 1585
    move-object/from16 v0, v37

    iget-boolean v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1584
    invoke-static {v2, v3, v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap42(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_0

    .line 1589
    .end local v37    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v55, v0

    .line 1591
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1593
    .local v46, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v46, :cond_2f

    .line 1594
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1595
    const-string/jumbo v6, " received"

    .line 1594
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1599
    :cond_2f
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v52

    .line 1606
    .restart local v52    # "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1608
    .local v42, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v42

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v46

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1616
    move-object/from16 v0, v42

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 1621
    :cond_30
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v2

    move/from16 v0, v55

    invoke-interface {v2, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_0

    .line 1140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 1133
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1131
    return-void

    .line 1134
    :catchall_0
    move-exception v0

    .line 1135
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1134
    throw v0
.end method
