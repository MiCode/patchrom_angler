.class final Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrientationSensorJudge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;
    }
.end annotation


# instance fields
.field private mDesiredRotation:I

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method static synthetic -set0(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return p1
.end method

.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    const/4 v2, -0x1

    .line 970
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 972
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 973
    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 974
    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1097
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    .line 970
    return-void
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v4, 0x0

    .line 1048
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_0

    .line 1049
    return v4

    .line 1051
    :cond_0
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v2, 0x1dcd6500

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1052
    return v4

    .line 1054
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    .line 1058
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v4, v5, :cond_2

    .line 1059
    :cond_0
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1060
    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_1
    return-void

    .line 1065
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v4, :cond_4

    .line 1066
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1067
    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_3
    return-void

    .line 1073
    :cond_4
    iget-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v6, 0x1dcd6500

    add-long v2, v4, v6

    .line 1074
    .local v2, "timeOfNextPossibleRotationNanos":J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_6

    .line 1075
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1076
    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_5
    return-void

    .line 1084
    :cond_6
    sub-long v4, v2, p1

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v0, v4

    .line 1085
    .local v0, "delayMs":J
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->-get2(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1086
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1057
    return-void
.end method

.method private unscheduleRotationEvaluationLocked()V
    .locals 2

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_0

    .line 1091
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->-get2(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1089
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1033
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1034
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v2, v3, :cond_0

    .line 1035
    return v4

    .line 1037
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1038
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1040
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v2

    .line 1042
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1044
    return v4
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1011
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->-get3(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1002
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "newRotation":I
    monitor-exit v2

    .line 1005
    if-ltz v0, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 999
    :cond_0
    return-void

    .line 1001
    .end local v0    # "newRotation":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTouchEndLocked(J)V
    .locals 5
    .param p1, "whenElapsedNanos"    # J

    .prologue
    .line 989
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 990
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 991
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq v2, v3, :cond_0

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 993
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 988
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 983
    return-void
.end method

.method public resetLocked()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1025
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1026
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1028
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1029
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1024
    return-void
.end method
