.class final Lcom/android/server/am/ActivityManagerService$PreBootContinuation;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PreBootContinuation"
.end annotation


# instance fields
.field curRi:I

.field curUser:I

.field final doneReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final intent:Landroid/content/Intent;

.field lastRi:I

.field final onFinishCallback:Ljava/lang/Runnable;

.field final ris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final users:[I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/util/List;[I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_onFinishCallback"    # Ljava/lang/Runnable;
    .param p6, "_users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Runnable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .local p4, "_doneReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .local p5, "_ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 11614
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 11610
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    .line 11611
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    .line 11612
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    .line 11616
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    .line 11617
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    .line 11618
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->doneReceivers:Ljava/util/ArrayList;

    .line 11619
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    .line 11620
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    .line 11615
    return-void
.end method


# virtual methods
.method go()V
    .locals 21

    .prologue
    .line 11624
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    if-eq v1, v2, :cond_0

    .line 11625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .line 11626
    .local v18, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11627
    .local v19, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->doneReceivers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11629
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->lastRi:I

    .line 11630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 11631
    .local v20, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    const v4, 0x1040372

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 11633
    .end local v18    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v19    # "comp":Landroid/content/ComponentName;
    .end local v20    # "label":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pre-boot of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11634
    const-string/jumbo v3, " for user "

    .line 11633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    aget v3, v3, v4

    .line 11633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmPreBoot(ILjava/lang/String;)V

    .line 11636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->intent:Landroid/content/Intent;

    .line 11638
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    aget v17, v2, v3

    .line 11636
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 11637
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 11638
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    move-object/from16 v6, p0

    .line 11636
    invoke-static/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 11623
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 11644
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    .line 11645
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->users:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 11646
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curUser:I

    .line 11647
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    .line 11648
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->curRi:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->ris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 11650
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 11654
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->onFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 11656
    :cond_0
    return-void

    .line 11659
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$PreBootContinuation;->go()V

    .line 11643
    return-void
.end method
