.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EAPMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public EAPType:Ljava/lang/String;

.field public InnerEAPType:Ljava/lang/String;

.field public InnerMethod:Ljava/lang/String;

.field public InnerVendorId:Ljava/lang/String;

.field public InnerVendorType:Ljava/lang/String;

.field public VendorId:Ljava/lang/String;

.field public VendorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 847
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 803
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->readFromParcel(Landroid/os/Parcel;)V

    .line 815
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 833
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->EAPType:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorId:Ljava/lang/String;

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorType:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerEAPType:Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorId:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorType:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 824
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->EAPType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerEAPType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    return-void
.end method
