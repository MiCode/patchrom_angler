.class public Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
.super Ljava/lang/Object;
.source "DcTesterFailBringUpAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DcTesterFailBrinupAll"


# instance fields
.field private mActionFailBringUp:Ljava/lang/String;

.field private mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->INTENT_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "action_fail_bringup"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    .line 53
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 79
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mActionFailBringUp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->log(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v0, "DcTesterFailBrinupAll"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    :cond_0
    return-void
.end method

.method getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->mFailBringUp:Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    return-object v0
.end method
