.class final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StrictModeViolationDialog$1;
    }
.end annotation


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    .local v1, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 49
    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 50
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 52
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 54
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 55
    const v3, 0x104036c

    .line 54
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    .line 67
    const v2, 0x10403da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 66
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 70
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 72
    const v2, 0x1040363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 71
    const/4 v4, -0x2

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 76
    :cond_0
    const v2, 0x104035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Strict Mode Violation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 82
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 83
    const-wide/32 v4, 0xea60

    .line 81
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    return-void

    .line 58
    .end local v0    # "name":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 59
    .restart local v0    # "name":Ljava/lang/CharSequence;
    new-array v2, v6, [Ljava/lang/Object;

    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 60
    const v3, 0x104036d

    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
