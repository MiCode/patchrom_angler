.class public final Landroid/print/PrintJobId;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintJobId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/print/PrintJobId$1;

    invoke-direct {v0}, Landroid/print/PrintJobId$1;-><init>()V

    .line 110
    sput-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Landroid/print/PrintJobId;

    invoke-direct {v0, p0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    if-ne p0, p1, :cond_0

    .line 62
    return v4

    .line 64
    :cond_0
    if-nez p1, :cond_1

    .line 65
    return v3

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintJobId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 68
    return v3

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Landroid/print/PrintJobId;

    .line 71
    .local v0, "other":Landroid/print/PrintJobId;
    iget-object v1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    iget-object v2, v0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    return v3

    .line 74
    :cond_3
    return v4
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1f

    .line 55
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 56
    .local v1, "result":I
    return v1

    .line 55
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
