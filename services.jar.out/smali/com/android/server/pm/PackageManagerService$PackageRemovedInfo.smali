.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedAppId:I

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 12871
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12873
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 12874
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 12875
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 12876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 12878
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 12871
    return-void
.end method


# virtual methods
.method sendBroadcast(ZZZ)V
    .locals 7
    .param p1, "fullRemove"    # Z
    .param p2, "replacing"    # Z
    .param p3, "removedForAllUsers"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 12881
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 12882
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12883
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12884
    if-eqz p2, :cond_0

    .line 12885
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12887
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12888
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 12889
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 12890
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v5, v4

    .line 12889
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 12891
    if-eqz p1, :cond_1

    if-eqz p2, :cond_4

    .line 12896
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_2

    .line 12897
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    .line 12898
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v2, v4

    move-object v5, v4

    .line 12897
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 12880
    :cond_2
    return-void

    .line 12882
    :cond_3
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0

    .line 12892
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 12893
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v5, v4

    .line 12892
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto :goto_1
.end method
