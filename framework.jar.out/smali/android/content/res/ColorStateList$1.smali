.class final Landroid/content/res/ColorStateList$1;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
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
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .local v0, "N":I
    new-array v3, v0, [[I

    .line 664
    .local v3, "stateSpecs":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    aput-object v4, v3, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 668
    .local v1, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 657
    new-array v0, p1, [Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList$1;->newArray(I)[Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
