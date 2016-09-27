.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CSLegacyTypeTracker"

.field private static final VDBG:Z


# instance fields
.field private mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/util/ArrayList;

    .line 475
    iput-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    .line 474
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string/jumbo v0, "CSLegacyTypeTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I
    .param p4, "isDefaultNetwork"    # Z

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v1, " broadcast for type "

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v1, " "

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    const-string/jumbo v1, " isDefaultNetwork="

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->log(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_1

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "state":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 584
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "null"

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 587
    :cond_1
    const-string/jumbo v1, "???/???"

    .restart local v1    # "state":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    return-void

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 516
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    return-void

    .line 520
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, p2}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 524
    .local v0, "isDefaultNetwork":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_3

    .line 525
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v2, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 526
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v2, p2, v3, p1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 509
    :cond_3
    return-void
.end method

.method public addSupportedType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 479
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 592
    const-string/jumbo v3, "mLegacyTypeTracker:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 594
    const-string/jumbo v3, "Supported types:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 595
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 595
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 599
    const-string/jumbo v3, "Current state:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 601
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 601
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 603
    :cond_3
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nai$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 604
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 607
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "nai$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 591
    return-void
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method public isTypeSupported(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "wasDefault"    # Z

    .prologue
    const/4 v6, 0x0

    .line 532
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v4, p1

    .line 533
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    :cond_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v4, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 539
    .local v3, "wasFirstNetwork":Z
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 540
    return-void

    .line 543
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 545
    .local v2, "state":Landroid/net/NetworkInfo$DetailedState;
    if-nez v3, :cond_3

    if-eqz p3, :cond_4

    .line 546
    :cond_3
    invoke-direct {p0, p2, v2, p1, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 547
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, p2, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 550
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Other network available for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    const-string/jumbo v5, ", sending connected broadcast"

    .line 551
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->log(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 554
    .local v1, "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v4

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 555
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, v1, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 531
    .end local v1    # "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    return-void
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "wasDefault"    # Z

    .prologue
    .line 562
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 563
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v7, 0x0

    .line 570
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, p1}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 571
    .local v1, "isDefault":Z
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 572
    .local v4, "state":Landroid/net/NetworkInfo$DetailedState;
    const/4 v5, 0x0

    .local v5, "type":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 573
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v6, v5

    .line 574
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 575
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_3

    const/4 v2, 0x1

    .line 576
    .local v2, "isFirst":Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 577
    :cond_0
    invoke-direct {p0, p1, v4, v5, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 578
    iget-object v6, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, p1, v4, v5}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 572
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 574
    .end local v2    # "isFirst":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "contains":Z
    goto :goto_1

    .line 575
    .end local v0    # "contains":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isFirst":Z
    goto :goto_2

    .line 569
    .end local v2    # "isFirst":Z
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_4
    return-void
.end method
