.class public final Landroid/print/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintJobStateChangeListener;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate;,
        Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_PRINT_DIALOG:Ljava/lang/String; = "android.print.PRINT_DIALOG"

.field public static final APP_ID_ANY:I = -0x2

.field private static final DEBUG:Z = false

.field public static final EXTRA_PRINT_DIALOG_INTENT:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

.field public static final EXTRA_PRINT_DOCUMENT_ADAPTER:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

.field public static final EXTRA_PRINT_JOB:Ljava/lang/String; = "android.print.intent.extra.EXTRA_PRINT_JOB"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintManager"

.field private static final MSG_NOTIFY_PRINT_JOB_STATE_CHANGED:I = 0x1


# instance fields
.field private final mAppId:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobStateChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            "Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/print/IPrintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/print/IPrintManager;
    .param p3, "userId"    # I
    .param p4, "appId"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    .line 188
    iput p3, p0, Landroid/print/PrintManager;->mUserId:I

    .line 189
    iput p4, p0, Landroid/print/PrintManager;->mAppId:I

    .line 190
    new-instance v0, Landroid/print/PrintManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/print/PrintManager$1;-><init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    .line 185
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    .prologue
    .line 242
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v2, :cond_0

    .line 243
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Feature android.software.print not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    .line 251
    :cond_1
    new-instance v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    iget-object v2, p0, Landroid/print/PrintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;-><init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V

    .line 253
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v3, p0, Landroid/print/PrintManager;->mAppId:I

    iget v4, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v2, v1, v3, v4}, Landroid/print/IPrintManager;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    .line 254
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error adding print job state change listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method cancelPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 342
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v1, :cond_0

    .line 343
    const-string/jumbo v1, "PrintManager"

    const-string/jumbo v2, "Feature android.software.print not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 347
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->cancelPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error canceling a print job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    .line 502
    const-string/jumbo v0, "PrintManager"

    const-string/jumbo v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v2

    .line 505
    :cond_0
    new-instance v0, Landroid/print/PrinterDiscoverySession;

    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/print/PrinterDiscoverySession;-><init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V

    return-object v0
.end method

.method public getEnabledPrintServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v2, :cond_0

    .line 461
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Feature android.software.print not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 465
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getEnabledPrintServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 466
    .local v0, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v0, :cond_1

    .line 467
    return-object v0

    .line 469
    .end local v0    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catch_0
    move-exception v1

    .line 470
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error getting the enabled print services"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "PrintManager"

    const-string/jumbo v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v2

    .line 223
    :cond_0
    new-instance v0, Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V

    return-object v0
.end method

.method public getInstalledPrintServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v2, :cond_0

    .line 483
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Feature android.software.print not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 487
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v2, v3}, Landroid/print/IPrintManager;->getInstalledPrintServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-eqz v0, :cond_1

    .line 489
    return-object v0

    .line 491
    .end local v0    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catch_0
    move-exception v1

    .line 492
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error getting the installed print services"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v2, :cond_0

    .line 299
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Feature android.software.print not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v5

    .line 303
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v3, p0, Landroid/print/PrintManager;->mAppId:I

    iget v4, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v2, p1, v3, v4}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 304
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    .line 305
    new-instance v2, Landroid/print/PrintJob;

    invoke-direct {v2, v0, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 307
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error getting print job"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v5
.end method

.method getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error getting a print job info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPrintJobs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v5, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v5, :cond_0

    .line 321
    const-string/jumbo v5, "PrintManager"

    const-string/jumbo v6, "Feature android.software.print not available"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 325
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v6, p0, Landroid/print/PrintManager;->mAppId:I

    iget v7, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v5, v6, v7}, Landroid/print/IPrintManager;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object v2

    .line 326
    .local v2, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v2, :cond_1

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 329
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 330
    .local v1, "printJobCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 332
    new-instance v6, Landroid/print/PrintJob;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    invoke-direct {v6, v5, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_2
    return-object v3

    .line 335
    .end local v0    # "i":I
    .end local v1    # "printJobCount":I
    .end local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    :catch_0
    move-exception v4

    .line 336
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "PrintManager"

    const-string/jumbo v6, "Error getting print jobs"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
    .locals 13
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 416
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v0, :cond_0

    .line 417
    const-string/jumbo v0, "PrintManager"

    const-string/jumbo v1, "Feature android.software.print not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can print only from an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printJobName cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    if-nez p2, :cond_3

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "documentAdapter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_3
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 430
    iget-object v0, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 429
    invoke-direct {v2, v0, p2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;-><init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V

    .line 432
    .local v2, "delegate":Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    .line 433
    iget-object v1, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/print/PrintManager;->mAppId:I

    iget v6, p0, Landroid/print/PrintManager;->mUserId:I

    move-object v1, p1

    move-object/from16 v3, p3

    .line 432
    invoke-interface/range {v0 .. v6}, Landroid/print/IPrintManager;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v11

    .line 434
    .local v11, "result":Landroid/os/Bundle;
    if-eqz v11, :cond_6

    .line 435
    const-string/jumbo v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/print/PrintJobInfo;

    .line 436
    .local v9, "printJob":Landroid/print/PrintJobInfo;
    const-string/jumbo v0, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 437
    .local v4, "intent":Landroid/content/IntentSender;
    if-eqz v9, :cond_4

    if-nez v4, :cond_5

    .line 438
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 441
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/print/PrintManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 442
    new-instance v0, Landroid/print/PrintJob;

    invoke-direct {v0, v9, p0}, Landroid/print/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 443
    :catch_0
    move-exception v12

    .line 444
    .local v12, "sie":Landroid/content/IntentSender$SendIntentException;
    :try_start_2
    const-string/jumbo v0, "PrintManager"

    const-string/jumbo v1, "Couldn\'t start print job config activity."

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    .end local v4    # "intent":Landroid/content/IntentSender;
    .end local v9    # "printJob":Landroid/print/PrintJobInfo;
    .end local v11    # "result":Landroid/os/Bundle;
    .end local v12    # "sie":Landroid/content/IntentSender$SendIntentException;
    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 447
    :catch_1
    move-exception v10

    .line 448
    .local v10, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "PrintManager"

    const-string/jumbo v1, "Error creating a print job"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v2, :cond_0

    .line 268
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Feature android.software.print not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_0
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 272
    return-void

    .line 275
    :cond_1
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    .line 276
    .local v1, "wrappedListener":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    if-nez v1, :cond_2

    .line 277
    return-void

    .line 279
    :cond_2
    iget-object v2, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    iput-object v3, p0, Landroid/print/PrintManager;->mPrintJobStateChangeListeners:Ljava/util/Map;

    .line 282
    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->destroy()V

    .line 284
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/print/IPrintManager;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error removing print job state change listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method restartPrintJob(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 354
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    if-nez v1, :cond_0

    .line 355
    const-string/jumbo v1, "PrintManager"

    const-string/jumbo v2, "Feature android.software.print not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 359
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager;->mService:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrintManager;->mAppId:I

    iget v3, p0, Landroid/print/PrintManager;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/print/IPrintManager;->restartPrintJob(Landroid/print/PrintJobId;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error restarting a print job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
