.class Lcom/android/server/pm/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostInstallData"
.end annotation


# instance fields
.field public args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "_a"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p3, "_r"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 944
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 942
    return-void
.end method
