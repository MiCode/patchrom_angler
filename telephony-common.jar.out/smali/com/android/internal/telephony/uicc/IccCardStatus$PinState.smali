.class public final enum Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_ENABLED_NOT_VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_ENABLED_VERIFIED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_ENABLED_BLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string/jumbo v1, "PINSTATE_ENABLED_PERM_BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object v0
.end method


# virtual methods
.method isPermBlocked()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPinRequired()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPukRequired()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
