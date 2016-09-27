.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCertNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method private manageNotification(Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1871
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1872
    return-void

    .line 1876
    :cond_0
    const/4 v12, 0x0

    .line 1878
    .local v12, "hasCert":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 1880
    .local v13, "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1881
    const/4 v12, 0x1

    .line 1886
    :cond_1
    :try_start_2
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1893
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    if-nez v12, :cond_2

    .line 1894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 1895
    const/4 v2, 0x0

    const v4, 0x10400e9

    .line 1894
    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1896
    return-void

    .line 1883
    .restart local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v9

    .line 1884
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "Could not connect to KeyChain service"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1886
    :try_start_4
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1888
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v10

    .line 1889
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1885
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v1

    .line 1886
    :try_start_5
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1885
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1890
    .end local v13    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v11

    .line 1891
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "Could not connect to KeyChain service"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1902
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v16

    .line 1903
    .local v16, "ownerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1904
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1905
    .local v7, "contentText":Ljava/lang/String;
    const v17, 0x1080660

    .line 1914
    .local v17, "smallIconId":I
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1916
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    .line 1915
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1917
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 1919
    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 1918
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1923
    .local v15, "notifyIntent":Landroid/app/PendingIntent;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v18

    .line 1928
    .local v18, "userContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400e9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1928
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1933
    const/4 v2, 0x1

    .line 1928
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1934
    const/4 v2, 0x0

    .line 1928
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 1936
    const v4, 0x1060059

    .line 1935
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1928
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    .line 1939
    .local v14, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 1940
    const/4 v2, 0x0

    const v4, 0x10400e9

    .line 1939
    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v14, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1870
    return-void

    .line 1906
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v14    # "noti":Landroid/app/Notification;
    .end local v15    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v17    # "smallIconId":I
    .end local v18    # "userContext":Landroid/content/Context;
    :cond_3
    if-eqz v16, :cond_4

    .line 1907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v2, v4

    const v4, 0x10400ec

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1908
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x1080660

    .restart local v17    # "smallIconId":I
    goto/16 :goto_1

    .line 1910
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v17    # "smallIconId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1911
    .restart local v7    # "contentText":Ljava/lang/String;
    const v17, 0x108008a

    .restart local v17    # "smallIconId":I
    goto/16 :goto_1

    .line 1924
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v15    # "notifyIntent":Landroid/app/PendingIntent;
    :catch_3
    move-exception v8

    .line 1925
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Create context as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1857
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1858
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1860
    .local v0, "userHandle":I
    if-ne v0, v5, :cond_0

    .line 1861
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1862
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1865
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;->manageNotification(Landroid/os/UserHandle;)V

    .line 1867
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
