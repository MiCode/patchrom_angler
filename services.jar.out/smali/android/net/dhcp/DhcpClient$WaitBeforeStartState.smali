.class Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;
.super Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeStartState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;
    .param p2, "otherState"    # Lcom/android/internal/util/State;

    .prologue
    .line 592
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 593
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 594
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;->mOtherState:Lcom/android/internal/util/State;

    .line 592
    return-void
.end method
