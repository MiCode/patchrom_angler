.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public stopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 45
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 46
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 47
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 3
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 53
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 54
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 55
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 56
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 57
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 58
    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 60
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 60
    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 62
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 63
    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 64
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 51
    return-void

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0
.end method
