.class final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Association"
.end annotation


# instance fields
.field mCount:I

.field mNesting:I

.field final mSourceProcess:Ljava/lang/String;

.field final mSourceUid:I

.field mStartTime:J

.field final mTargetComponent:Landroid/content/ComponentName;

.field final mTargetProcess:Ljava/lang/String;

.field final mTargetUid:I

.field mTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUid"    # I
    .param p2, "sourceProcess"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "targetComponent"    # Landroid/content/ComponentName;
    .param p5, "targetProcess"    # Ljava/lang/String;

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    .line 826
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    .line 827
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    .line 828
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    .line 829
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    .line 824
    return-void
.end method
