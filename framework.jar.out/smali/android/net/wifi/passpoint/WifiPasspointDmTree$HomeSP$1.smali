.class final Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 925
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    invoke-direct {v0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 929
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    move-result-object v0

    return-object v0
.end method
