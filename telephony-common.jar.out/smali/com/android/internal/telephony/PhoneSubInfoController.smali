.class public Lcom/android/internal/telephony/PhoneSubInfoController;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoController"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 42
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 43
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_2

    .line 44
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    check-cast v0, Landroid/app/AppOpsManager;

    .line 49
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    .line 51
    const-string/jumbo v3, "iphonesubinfo"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    .line 52
    const-string/jumbo v3, "iphonesubinfo"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    :cond_1
    return-void

    .line 42
    .restart local v0    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v1, "context":Landroid/content/Context;
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v4

    .line 61
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    .line 62
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 61
    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return v5

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x33

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    return v4

    .line 78
    :cond_1
    return v5
.end method

.method private getDefaultSubscription()I
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 276
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 277
    :cond_0
    const/4 p1, 0x0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method private getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 264
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 267
    .local v1, "phoneId":I
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "PhoneSubInfoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " For subId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 271
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 235
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCompleteVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v4
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    const-string/jumbo v1, "getDeviceId"

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    return-object v4

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhone(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    .line 92
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceIdForPhone phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v4
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 128
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    const-string/jumbo v2, "getDeviceSvn phoneSubInfoProxy is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v3
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 328
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 329
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 332
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGroupIdLevel1 phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v4
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 160
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIccSerialNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v4
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 320
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 113
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v4
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 314
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 294
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 289
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 299
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 304
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 309
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 190
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 193
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLine1AlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v4
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 175
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLine1Number phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v4
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 205
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMsisdn phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v4
.end method

.method public getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 102
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getNai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNai phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v4
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 142
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubscriberId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v4
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 250
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailAlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v4
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfoController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 220
    .local v0, "phoneSubInfoProxy":Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    :cond_0
    const-string/jumbo v1, "PhoneSubInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v4
.end method
