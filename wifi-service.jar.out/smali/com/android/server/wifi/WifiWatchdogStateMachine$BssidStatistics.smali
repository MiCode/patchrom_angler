.class Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1054
    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1055
    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1056
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return-void
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1172
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v6

    .line 1173
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v6

    .line 1174
    const/4 v1, 0x0

    .line 1175
    .local v1, "emptyCount":I
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    .line 1176
    .local v0, "d":I
    :goto_0
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-eq v2, p2, :cond_3

    .line 1178
    if-ltz v2, :cond_1

    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 1179
    const/4 v1, 0x0

    .line 1180
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    cmpg-double v6, v6, p3

    if-gez v6, :cond_2

    .line 1182
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v3, v6, v2

    .line 1190
    .local v3, "rssi":I
    return v3

    .line 1175
    .end local v0    # "d":I
    .end local v2    # "i":I
    .end local v3    # "rssi":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "d":I
    goto :goto_0

    .line 1192
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_2

    .line 1194
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v3, v6, v2

    .line 1195
    .restart local v3    # "rssi":I
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v4

    .line 1196
    .local v4, "lossPreset":D
    cmpg-double v6, v4, p3

    if-gez v6, :cond_2

    .line 1203
    return v3

    .line 1176
    .end local v3    # "rssi":I
    .end local v4    # "lossPreset":D
    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    .line 1207
    :cond_3
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int/2addr v6, p2

    return v6
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    .line 1147
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1150
    return-void

    .line 1154
    :cond_0
    const/16 v0, -0x69

    .line 1155
    .local v0, "from":I
    const/16 v1, -0x2d

    .line 1156
    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1157
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1145
    return-void
.end method

.method public poorLinkDetected(I)Z
    .locals 17
    .param p1, "rssi"    # I

    .prologue
    .line 1108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1109
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v6, v10, v14

    .line 1110
    .local v6, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v8, v10, v14

    .line 1113
    .local v8, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v14, :cond_0

    .line 1114
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-ltz v14, :cond_0

    .line 1115
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1116
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1119
    add-int/lit8 v4, p1, 0x3

    .line 1120
    .local v4, "from":I
    add-int/lit8 v13, p1, 0x14

    .line 1121
    .local v13, "to":I
    const-wide v14, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1122
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    iget v15, v15, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1123
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1126
    :cond_1
    const/4 v5, 0x0

    .local v5, "p":I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v12, v14, -0x1

    .line 1127
    .local v12, "pmax":I
    :goto_1
    if-ge v5, v12, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1128
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v14

    aget-object v14, v14, v5

    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v2, v14

    .line 1131
    .local v2, "avoidMax":J
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-gtz v14, :cond_3

    const/4 v14, 0x0

    return v14

    .line 1134
    :cond_3
    add-long v14, v10, v2

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1139
    const/4 v14, 0x1

    return v14
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    .prologue
    const/16 v10, 0x5a

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1087
    const/16 v2, -0x5a

    if-gt p1, v2, :cond_0

    return-wide v8

    .line 1088
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    .line 1090
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    move-result-object v2

    if-nez v2, :cond_2

    .line 1092
    const/16 v1, 0x5a

    .line 1093
    .local v1, "size":I
    new-array v2, v10, [D

    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set6([D)[D

    .line 1094
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x5a

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v4, v8, v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1096
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    return-wide v2
.end method

.method public updateLoss(IDI)V
    .locals 2
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1069
    if-gtz p4, :cond_0

    return-void

    .line 1070
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v0, p1, v1

    .line 1071
    .local v0, "index":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-lt v0, v1, :cond_2

    :cond_1
    return-void

    .line 1072
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1068
    return-void
.end method
