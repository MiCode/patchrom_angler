.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 735
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 736
    const v1, 0x10e0053

    .line 735
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 737
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 738
    const v1, 0x10e0054

    .line 737
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 739
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 740
    const v1, 0x10e0055

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 741
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 742
    const v1, 0x10e0056

    .line 741
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 743
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 744
    const v1, 0x10e0057

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 732
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 751
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 752
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get1(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 753
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 754
    if-ne v1, v3, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 750
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 760
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 759
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 762
    :cond_1
    if-eq v1, v3, :cond_2

    .line 763
    if-ne v1, v4, :cond_5

    .line 764
    :cond_2
    if-eq v1, v4, :cond_3

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_4

    .line 766
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 769
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 773
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method
