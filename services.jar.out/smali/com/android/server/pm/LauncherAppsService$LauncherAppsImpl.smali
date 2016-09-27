.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList",
            "<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/LauncherAppsService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->this$0:Lcom/android/server/pm/LauncherAppsService;

    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 76
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    .line 75
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 78
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 81
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 80
    return-void
.end method

.method private ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 8
    .param p1, "userToCheck"    # Landroid/os/UserHandle;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 158
    .local v0, "callingUserId":I
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 160
    .local v4, "targetUserId":I
    if-ne v4, v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 164
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 165
    .local v1, "callingUserInfo":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 166
    .local v5, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_1

    .line 167
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 169
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    .line 172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw v6

    .line 168
    .restart local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v7, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v7, :cond_1

    .line 172
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return-void
.end method

.method private isUserEnabled(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 182
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 183
    .local v2, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 185
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 184
    .end local v2    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw v3
.end method

.method private startWatchingPackageBroadcasts()V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 128
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    .line 135
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkCallbackCount()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot retrieve activities for unrelated profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 197
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 202
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 203
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 202
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 206
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return-object v0

    .line 205
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v4

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v4
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot check component for unrelated profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    return v4

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 255
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 256
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 257
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 259
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return v4

    .line 258
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    throw v4
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot check package for unrelated profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    return v4

    .line 235
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 237
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 238
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 239
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    return v4

    .line 240
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    throw v4
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot resolve activity for unrelated profile "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const/4 v1, 0x0

    return-object v1

    .line 218
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 220
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 223
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    return-object v0

    .line 222
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v1

    .line 223
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw v1
.end method

.method public showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot show app details for unrelated profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot show app details for disabled profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 324
    const-string/jumbo v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 323
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x10808000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 328
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return-void

    .line 329
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw v4
.end method

.method public startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot start activity for unrelated profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 268
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot start activity for disabled profile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 271
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v8, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 274
    const/high16 v11, 0x10200000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 280
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 281
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v9, p1, v12, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 282
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-boolean v11, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v11, :cond_1

    .line 283
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot launch non-exported components "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v11

    .line 307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    throw v11

    .line 290
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 291
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v13, 0x0

    .line 290
    invoke-virtual {v11, v8, v13, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 293
    .local v10, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_3

    .line 294
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 295
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 296
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 295
    if-eqz v11, :cond_2

    .line 299
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 300
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v8, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    return-void

    .line 293
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
