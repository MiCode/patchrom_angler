.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final NETWORK:Z = false

.field private static final SYSTEM:Z = true

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "appUid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 77
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    .line 78
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method private hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 164
    const-string/jumbo v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 155
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private hasSystemPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 168
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 169
    .local v0, "flags":I
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 170
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 168
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flags":I
    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string/jumbo v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string/jumbo v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private declared-synchronized onAppAdded(Ljava/lang/String;I)V
    .locals 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-gez p2, :cond_1

    .line 231
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid app in onAppAdded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 232
    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 237
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 238
    .local v3, "isNetwork":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 239
    .local v4, "isSystem":Z
    if-nez v3, :cond_2

    if-eqz v4, :cond_4

    .line 240
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 243
    .local v5, "permission":Ljava/lang/Boolean;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 244
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v1, v7}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "isNetwork":Z
    .end local v4    # "isSystem":Z
    .end local v5    # "permission":Ljava/lang/Boolean;
    :cond_4
    :goto_0
    monitor-exit p0

    .line 229
    return-void

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NameNotFoundException in onAppAdded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized onAppRemoved(I)V
    .locals 3
    .param p1, "appUid"    # I

    .prologue
    monitor-enter p0

    .line 257
    if-gez p1, :cond_0

    .line 258
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid app in onAppRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 259
    return-void

    .line 261
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 256
    return-void

    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onUserAdded(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    monitor-enter p0

    .line 206
    if-gez p1, :cond_0

    .line 207
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid user in onUserAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 208
    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 205
    return-void

    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    monitor-enter p0

    .line 218
    if-gez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid user in onUserRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 220
    return-void

    .line 222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 177
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 11
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v4, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v5, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v5

    .line 188
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 189
    .local v6, "user":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "user":I
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    move-object v3, v4

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 193
    .end local v0    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz p3, :cond_3

    .line 194
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v9, "NETWORK"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 195
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v9, "SYSTEM"

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 183
    :goto_2
    return-void

    .line 197
    :cond_3
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    .line 198
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->clearPermission([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception when updating permissions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized startMonitoring()V
    .locals 17

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    const-string/jumbo v1, "Monitoring"

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 105
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 117
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v9, :cond_0

    .line 118
    const-string/jumbo v1, "No apps"

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 119
    return-void

    .line 122
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 123
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 124
    .local v13, "uid":I
    :goto_1
    if-ltz v13, :cond_1

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    .line 129
    .local v10, "isNetwork":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->hasSystemPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v11

    .line 131
    .local v11, "isSystem":Z
    if-nez v10, :cond_2

    if-eqz v11, :cond_1

    .line 132
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 135
    .local v12, "permission":Ljava/lang/Boolean;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "isNetwork":Z
    .end local v11    # "isSystem":Z
    .end local v12    # "permission":Ljava/lang/Boolean;
    .end local v13    # "uid":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v7    # "app":Landroid/content/pm/PackageInfo;
    .restart local v8    # "app$iterator":Ljava/util/Iterator;
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    const/4 v13, -0x1

    .restart local v13    # "uid":I
    goto :goto_1

    .line 141
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v13    # "uid":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v16

    .line 142
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v16, :cond_6

    .line 143
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "user$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 144
    .local v14, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v2, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "user$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 102
    return-void
.end method
