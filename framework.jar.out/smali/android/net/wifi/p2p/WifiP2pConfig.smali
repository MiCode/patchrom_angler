.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_GROUP_OWNER_INTENT:I = 0xf

.field public static final MIN_GROUP_OWNER_INTENT:I


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public groupOwnerIntent:I

.field public netId:I

.field public wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    .line 141
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 55
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 59
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 60
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 55
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 127
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 128
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 123
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v4, ""

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 52
    const/4 v4, -0x1

    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 55
    const/4 v4, -0x2

    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 70
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-lt v4, v6, :cond_1

    aget-object v4, v3, v7

    const-string/jumbo v5, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    aget-object v4, v3, v8

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 77
    new-instance v4, Landroid/net/wifi/WpsInfo;

    invoke-direct {v4}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 79
    array-length v4, v3

    if-le v4, v6, :cond_0

    .line 80
    aget-object v4, v3, v6

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "nameVal":[Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    .local v0, "devPasswdId":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 102
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    .line 69
    .end local v0    # "devPasswdId":I
    .end local v2    # "nameVal":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Malformed supplicant event"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .restart local v2    # "nameVal":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0    # "devPasswdId":I
    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v8, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 95
    :pswitch_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 99
    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v4, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string/jumbo v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 112
    const-string/jumbo v1, "\n groupOwnerIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    const-string/jumbo v1, "\n persist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
