.class public Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$1;
    }
.end annotation


# static fields
.field private static final ACTION_JOB_DELAY_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DELAY_EXPIRED"

.field private static final ACTION_JOB_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"

.field private static mSingleton:Lcom/android/server/job/controllers/TimeController;


# instance fields
.field private final mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private final mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private mNextDelayExpiredElapsedMillis:J

.field private mNextJobExpiredElapsedMillis:J

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 8
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 58
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 261
    new-instance v1, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    .line 75
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    .line 77
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 78
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method private canStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 135
    if-eqz v0, :cond_2

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 135
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized checkExpiredDeadlinesAndResetAlarm()V
    .locals 10

    .prologue
    monitor-enter p0

    .line 152
    const-wide v4, 0x7fffffffffffffffL

    .line 153
    .local v4, "nextExpiryTime":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 155
    .local v6, "nowElapsedMillis":J
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 158
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    .line 163
    .local v2, "jobDeadline":J
    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    .line 164
    iget-object v8, v1, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v8, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    .end local v6    # "nowElapsedMillis":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 168
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jobDeadline":J
    .restart local v6    # "nowElapsedMillis":J
    :cond_1
    move-wide v4, v2

    .line 172
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    :cond_2
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 151
    return-void
.end method

.method private declared-synchronized checkExpiredDelaysAndResetAlarm()V
    .locals 11

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 181
    .local v6, "nowElapsedMillis":J
    const-wide v4, 0x7fffffffffffffffL

    .line 182
    .local v4, "nextDelayTime":J
    const/4 v8, 0x0

    .line 183
    .local v8, "ready":Z
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 186
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v2

    .line 190
    .local v2, "jobDelayTime":J
    cmp-long v9, v2, v6

    if-gtz v9, :cond_2

    .line 191
    iget-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    const/4 v8, 0x1

    goto :goto_0

    .line 199
    :cond_2
    cmp-long v9, v4, v2

    if-lez v9, :cond_0

    .line 200
    move-wide v4, v2

    goto :goto_0

    .line 204
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDelayTime":J
    :cond_3
    if-eqz v8, :cond_4

    .line 205
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v9}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 207
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 179
    return-void

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextDelayTime":J
    .end local v6    # "nowElapsedMillis":J
    .end local v8    # "ready":Z
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private ensureAlarmService()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 141
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;
    .locals 3
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    const-class v1, Lcom/android/server/job/controllers/TimeController;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 3
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    .prologue
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 243
    .local v0, "earliestWakeupTimeElapsed":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 244
    return-wide v0

    .line 246
    :cond_0
    return-wide p1
.end method

.method private maybeUpdateAlarms(JJ)V
    .locals 3
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "deadlineExpiredElapsed"    # J

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V

    .line 214
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 215
    invoke-direct {p0, p3, p4}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V

    .line 210
    :cond_1
    return-void
.end method

.method private setDeadlineExpiredAlarm(J)V
    .locals 5
    .param p1, "alarmTimeElapsedMillis"    # J

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 237
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 238
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    .line 235
    return-void
.end method

.method private setDelayExpiredAlarm(J)V
    .locals 5
    .param p1, "alarmTimeElapsedMillis"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 226
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 227
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    .line 224
    return-void
.end method

.method private updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "alarmTimeElapsed"    # J

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmService()V

    .line 251
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 249
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 280
    .local v0, "nowElapsed":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Alarms ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Next delay alarm in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    sub-long/2addr v6, v0

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Next deadline alarm in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    sub-long/2addr v6, v0

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 284
    const-string/jumbo v5, "s"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v4, "Tracking:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 287
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, ": ("

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 288
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 287
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    const-string/jumbo v5, ", "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 289
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 287
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    const-string/jumbo v5, ")"

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    const-string/jumbo v4, "N/A"

    goto :goto_1

    .line 289
    :cond_1
    const-string/jumbo v4, "N/A"

    goto :goto_2

    .line 278
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method

.method public declared-synchronized maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "isInsert":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 96
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 98
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 104
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 108
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v6

    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    .line 109
    :cond_4
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateAlarms(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "isInsert":Z
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_5
    monitor-exit p0

    .line 91
    return-void

    .restart local v0    # "isInsert":Z
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    move-wide v6, v4

    .line 110
    goto :goto_0

    .end local v0    # "isInsert":Z
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 124
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
