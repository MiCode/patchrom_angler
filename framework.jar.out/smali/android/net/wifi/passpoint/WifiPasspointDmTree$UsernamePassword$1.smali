.class final Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;
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
        "Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 790
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    invoke-direct {v0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 794
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    move-result-object v0

    return-object v0
.end method
