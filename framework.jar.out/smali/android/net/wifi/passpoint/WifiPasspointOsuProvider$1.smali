.class final Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;
.super Ljava/lang/Object;
.source "WifiPasspointOsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
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
        "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;-><init>()V

    .line 134
    .local v0, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->ssid:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->friendlyName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->serverUri:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuMethod:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconWidth:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconHeight:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconType:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->iconFileName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuNai:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->osuService:Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    move-result-object v0

    return-object v0
.end method
