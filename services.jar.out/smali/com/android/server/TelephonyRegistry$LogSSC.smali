.class Lcom/android/server/TelephonyRegistry$LogSSC;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSSC"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mS:Ljava/lang/String;

.field private mState:Landroid/telephony/ServiceState;

.field private mSubId:I

.field private mTime:Landroid/text/format/Time;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$LogSSC;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "t"    # Landroid/text/format/Time;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "phoneId"    # I
    .param p5, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:I

    iput p4, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    .line 1661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mPhoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    const-string/jumbo v1, "  mState "

    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    .line 1667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
