.class final Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
.super Ljava/lang/Object;
.source "HdmiMhlLocalDeviceStub.java"


# static fields
.field private static final INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;


# instance fields
.field private final mPortId:I

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 11
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 12
    const v1, 0xffff

    .line 11
    invoke-direct {v0, v1, v2, v2, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "portId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    iput p2, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    .line 16
    return-void
.end method


# virtual methods
.method getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method getPortId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return v0
.end method

.method onBusOvercurrentDetected(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 31
    return-void
.end method

.method onDeviceRemoved()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method sendKeyEvent(IZ)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "isPressed"    # Z

    .prologue
    .line 44
    return-void
.end method

.method sendStandby()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method setBusMode(I)V
    .locals 0
    .param p1, "cbusmode"    # I

    .prologue
    .line 28
    return-void
.end method

.method setDeviceStatusChange(II)V
    .locals 0
    .param p1, "adopterId"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 34
    return-void
.end method

.method turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 41
    return-void
.end method
