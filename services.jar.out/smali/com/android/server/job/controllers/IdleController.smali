.class public Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

.field private static final IDLE_WINDOW_SLOP:J = 0x493e0L

.field private static final INACTIVITY_IDLE_THRESHOLD:J = 0x4100a0L

.field private static final TAG:Ljava/lang/String; = "IdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/IdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking()V

    .line 61
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;
    .locals 3
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 53
    sget-object v1, Lcom/android/server/job/controllers/IdleController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/job/controllers/IdleController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/IdleController;->sController:Lcom/android/server/job/controllers/IdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initIdleStateTracking()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/IdleController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    .line 104
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->startTracking()V

    .line 102
    return-void
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 195
    :try_start_0
    const-string/jumbo v2, "Idle: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 200
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, ".."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "i":I
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string/jumbo v2, "false"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .restart local v0    # "i":I
    :cond_1
    monitor-exit v3

    .line 193
    return-void

    .line 194
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->isIdle()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 70
    :cond_0
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method reportNewIdleState(Z)V
    .locals 4
    .param p1, "isIdle"    # Z

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 92
    .local v0, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 95
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 89
    return-void
.end method
