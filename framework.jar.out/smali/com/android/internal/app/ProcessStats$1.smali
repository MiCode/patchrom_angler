.class final Lcom/android/internal/app/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
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
        "Lcom/android/internal/app/ProcessStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/ProcessStats;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 414
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ProcessStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/ProcessStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/app/ProcessStats;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 418
    new-array v0, p1, [Lcom/android/internal/app/ProcessStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$1;->newArray(I)[Lcom/android/internal/app/ProcessStats;

    move-result-object v0

    return-object v0
.end method
