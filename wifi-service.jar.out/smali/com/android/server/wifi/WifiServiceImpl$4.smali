.class Lcom/android/server/wifi/WifiServiceImpl$4;
.super Landroid/database/ContentObserver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiScanAlwaysAvailableToggled()V

    .line 1409
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$4;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v0

    const v1, 0x26007

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1407
    return-void
.end method
