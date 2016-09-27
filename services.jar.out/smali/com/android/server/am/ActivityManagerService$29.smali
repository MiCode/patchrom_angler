.class Lcom/android/server/am/ActivityManagerService$29;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserState;ILandroid/content/Intent;Landroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$uss"    # Lcom/android/server/am/UserState;
    .param p3, "val$userId"    # I
    .param p4, "val$shutdownIntent"    # Landroid/content/Intent;
    .param p5, "val$shutdownReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 20363
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 20368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 20369
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    iget v1, v1, Lcom/android/server/am/UserState;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    monitor-exit v2

    .line 20371
    return-void

    .line 20373
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->val$uss:Lcom/android/server/am/UserState;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/am/UserState;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 20375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 20377
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    .line 20376
    const/16 v4, 0x4007

    .line 20375
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 20378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 20379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownIntent:Landroid/content/Intent;

    .line 20380
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$29;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    .line 20381
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityManagerService$29;->val$userId:I

    move/from16 v17, v0

    .line 20379
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 20380
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 20381
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    .line 20379
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 20366
    return-void

    .line 20368
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
