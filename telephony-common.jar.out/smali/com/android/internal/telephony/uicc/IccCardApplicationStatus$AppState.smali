.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public static final enum APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_DETECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_PIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_PUK"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_SUBSCRIPTION_PERSO"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const-string/jumbo v1, "APPSTATE_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object v0
.end method


# virtual methods
.method isAppNotReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq p0, v1, :cond_0

    .line 66
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAppReady()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

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
    .line 49
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

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
    .line 53
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSubscriptionPersoEnabled()Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
