.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountServiceIdler$1;
    }
.end annotation


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountServiceIdler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/MountServiceIdler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/MountServiceIdler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 37
    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 95
    const-string/jumbo v5, "jobscheduler"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    .line 97
    .local v4, "tm":Landroid/app/job/JobScheduler;
    invoke-static {}, Lcom/android/server/MountServiceIdler;->tomorrowMidnight()Ljava/util/Calendar;

    move-result-object v1

    .line 98
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 100
    .local v2, "timeToMidnight":J
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget v5, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v6, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v0, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 101
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 102
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 103
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 94
    return-void
.end method

.method private static tomorrowMidnight()Ljava/util/Calendar;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    .line 62
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 70
    sget-object v1, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    .line 71
    .local v1, "ms":Lcom/android/server/MountService;
    if-eqz v1, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v3

    .line 73
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 75
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    :goto_1
    return v2

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 77
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    .end local v1    # "ms":Lcom/android/server/MountService;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 88
    return v2

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
