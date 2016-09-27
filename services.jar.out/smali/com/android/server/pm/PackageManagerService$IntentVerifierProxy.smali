.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "verifierComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 635
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    .line 636
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 634
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .locals 4
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 805
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 806
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 810
    return-object v0

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    const-string/jumbo v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "verificationId"    # I
    .param p3, "ivs"    # Lcom/android/server/pm/IntentFilterVerificationState;

    .prologue
    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v1, "verificationIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    .line 677
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    .line 682
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    .line 685
    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string/jumbo v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    .line 688
    invoke-virtual {p3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 690
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 693
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 674
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .locals 6
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    move-object v4, p4

    .line 784
    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->-wrap4(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    const/4 v1, 0x0

    return v1

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 790
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_1

    .line 791
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 797
    :cond_1
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 798
    const/4 v1, 0x1

    return v1
.end method

.method public receiveVerificationResponse(I)V
    .locals 16
    .param p1, "verificationId"    # I

    .prologue
    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 701
    .local v5, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v12

    .line 703
    .local v12, "verified":Z
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v3

    .line 704
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 710
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 711
    .local v2, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 709
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 720
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 721
    .local v8, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 723
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 724
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    monitor-exit v14

    .line 726
    if-nez v4, :cond_1

    .line 727
    const-string/jumbo v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 728
    const-string/jumbo v15, " packageName:"

    .line 727
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 723
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 735
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 736
    if-eqz v12, :cond_4

    .line 737
    const/4 v13, 0x2

    :try_start_1
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 741
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 743
    invoke-virtual {v5}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v10

    .line 744
    .local v10, "userId":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8, v10}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v11

    .line 748
    .local v11, "userStatus":I
    const/4 v9, 0x0

    .line 749
    .local v9, "updatedStatus":I
    const/4 v7, 0x0

    .line 753
    .local v7, "needUpdate":Z
    packed-switch v11, :pswitch_data_0

    .line 774
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v8, v9, v10}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7    # "needUpdate":Z
    .end local v9    # "updatedStatus":I
    .end local v11    # "userStatus":I
    :cond_3
    monitor-exit v14

    .line 698
    return-void

    .line 739
    .end local v10    # "userId":I
    :cond_4
    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v4, v13}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 735
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .line 755
    .restart local v7    # "needUpdate":Z
    .restart local v9    # "updatedStatus":I
    .restart local v10    # "userId":I
    .restart local v11    # "userStatus":I
    :pswitch_0
    if-eqz v12, :cond_5

    .line 756
    const/4 v9, 0x2

    .line 760
    :goto_3
    const/4 v7, 0x1

    .line 761
    goto :goto_2

    .line 758
    :cond_5
    const/4 v9, 0x1

    goto :goto_3

    .line 764
    :pswitch_1
    if-eqz v12, :cond_2

    .line 765
    const/4 v9, 0x2

    .line 766
    const/4 v7, 0x1

    goto :goto_2

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startVerifications(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 646
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_0
    if-ge v8, v0, :cond_2

    .line 648
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 650
    .local v10, "verificationId":I
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 652
    .local v6, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 655
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 656
    .local v4, "filterCount":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 657
    .local v2, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_1
    if-ge v7, v4, :cond_0

    .line 658
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 659
    .local v3, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 657
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 661
    .end local v3    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    .local v1, "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 663
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v9, v1}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 665
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v12

    .line 668
    invoke-direct {p0, p1, v10, v6}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(IILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 647
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 670
    .end local v1    # "domainsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "filterCount":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v7    # "m":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "verificationId":I
    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 644
    return-void
.end method
