.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;
.super Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientInfoLocal"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .prologue
    const/4 v2, 0x0

    .line 1754
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .line 1755
    iget-object v0, p1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .line 1754
    return-void
.end method


# virtual methods
.method deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 2
    .param p1, "handler"    # I
    .param p2, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    const/4 v1, 0x0

    .line 1760
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0, v1, v1, v1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1758
    return-void
.end method

.method reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 0
    .param p1, "handler"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "newPeriodInMs"    # I

    .prologue
    .line 1763
    return-void
.end method
