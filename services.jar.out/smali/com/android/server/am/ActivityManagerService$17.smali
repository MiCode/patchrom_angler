.class Lcom/android/server/am/ActivityManagerService$17;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$app:Landroid/os/IBinder;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$callingUid"    # I
    .param p3, "val$callingPid"    # I
    .param p4, "val$app"    # Landroid/os/IBinder;
    .param p5, "val$tag"    # Ljava/lang/String;
    .param p6, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 12326
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 12328
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->handleApplicationWtfInner(IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/android/server/am/ProcessRecord;

    .line 12327
    return-void
.end method
