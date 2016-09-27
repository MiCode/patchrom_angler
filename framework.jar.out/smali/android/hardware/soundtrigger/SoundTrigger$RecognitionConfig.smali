.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowMultipleTriggers:Z

.field public final captureRequested:Z

.field public final data:[B

.field public final keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 683
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    .line 682
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 658
    return-void
.end method

.method public constructor <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .locals 0
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    .line 677
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 678
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 679
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    .line 675
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    .line 694
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 695
    .local v1, "captureRequested":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 697
    .local v0, "allowMultipleTriggers":Z
    :goto_1
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 698
    .local v3, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    .line 699
    .local v2, "data":[B
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    return-object v4

    .line 694
    .end local v0    # "allowMultipleTriggers":Z
    .end local v1    # "captureRequested":Z
    .end local v2    # "data":[B
    .end local v3    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "captureRequested":Z
    goto :goto_0

    .line 695
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowMultipleTriggers":Z
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RecognitionConfig [captureRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    const-string/jumbo v1, ", allowMultipleTriggers="

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    const-string/jumbo v1, ", keyphrases="

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    const-string/jumbo v1, ", data="

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "]"

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 705
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 706
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 707
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 703
    return-void

    :cond_0
    move v0, v2

    .line 704
    goto :goto_0

    :cond_1
    move v1, v2

    .line 705
    goto :goto_1
.end method
