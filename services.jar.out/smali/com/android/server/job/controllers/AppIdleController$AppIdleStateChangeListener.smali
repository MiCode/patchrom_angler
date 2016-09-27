.class Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/AppIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v6, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-boolean v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v6

    .line 133
    return-void

    .line 135
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "task$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 136
    .local v1, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 138
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz p3, :cond_2

    move v3, v4

    :goto_1
    if-eq v7, v3, :cond_1

    .line 143
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 138
    goto :goto_1

    :cond_3
    move v3, v5

    .line 143
    goto :goto_2

    .end local v1    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    monitor-exit v6

    .line 149
    if-eqz v0, :cond_5

    .line 150
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iget-object v3, v3, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 129
    :cond_5
    return-void

    .line 131
    .end local v2    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public onParoleStateChanged(Z)V
    .locals 1
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/AppIdleController;->setAppIdleParoleOn(Z)V

    .line 155
    return-void
.end method
