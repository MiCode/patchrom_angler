.class Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/firewall/IntentFirewall$AMSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentFirewallInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 7072
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIIZ)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    .prologue
    .line 7076
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public getAMSLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7082
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method
