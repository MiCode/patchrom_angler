.class public Landroid/net/wifi/WifiScanner$HotlistSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotlistSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$HotlistSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apLostThreshold:I

.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 677
    new-instance v0, Landroid/net/wifi/WifiScanner$HotlistSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$HotlistSettings$1;-><init>()V

    .line 676
    sput-object v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 648
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 659
    iget v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 664
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v1, v2, v0

    .line 665
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    :cond_1
    return-void
.end method
