.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field owner:Ljava/lang/String;

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p1, "error"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 615
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 616
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    .line 617
    iput-boolean p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    .line 618
    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    .line 620
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 735
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    return v5

    .line 737
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    if-nez p1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap7(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 738
    :cond_1
    return v4

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendAcquired:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    if-nez p1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap7(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 741
    :cond_2
    return v5

    .line 743
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 745
    if-nez p1, :cond_3

    .line 746
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap7(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 743
    :cond_3
    throw v1
.end method

.method private sendAuthenticated(II)Z
    .locals 9
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 692
    const/4 v8, 0x0

    .line 693
    .local v8, "result":Z
    if-eqz p1, :cond_1

    const/4 v6, 0x1

    .line 694
    .local v6, "authenticated":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_4

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 698
    if-nez v6, :cond_2

    .line 699
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_1
    if-nez p1, :cond_5

    .line 717
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 728
    .local v8, "result":Z
    :goto_2
    return v8

    .line 693
    .end local v6    # "authenticated":Z
    .local v8, "result":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "authenticated":Z
    goto :goto_0

    .line 702
    :cond_2
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated(owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 703
    const-string/jumbo v3, ", id="

    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 703
    const-string/jumbo v3, ", gp="

    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 703
    const-string/jumbo v3, ")"

    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    if-nez v1, :cond_3

    .line 706
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 707
    :goto_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 709
    :catch_0
    move-exception v7

    .line 710
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify Authenticated:"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 706
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v0, 0x0

    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_3

    .line 714
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 722
    :cond_5
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_6

    .line 723
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 725
    :cond_6
    const/4 v1, 0x1

    or-int/2addr v8, v1

    .line 726
    .local v8, "result":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap6(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_2
.end method

.method private sendEnrollResult(III)Z
    .locals 9
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 676
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    return v7

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 678
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    if-nez p3, :cond_1

    move v1, v7

    :goto_0
    return v1

    :cond_1
    move v1, v8

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    return v7
.end method

.method private sendError(I)Z
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v3, :cond_0

    return v1

    .line 664
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->-get3(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    if-nez p1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v3, "Failed to notify Removed:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    return v2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 641
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 642
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap4(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 643
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 640
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 636
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 626
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 650
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap4(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 647
    return-void

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 653
    throw v0
.end method
