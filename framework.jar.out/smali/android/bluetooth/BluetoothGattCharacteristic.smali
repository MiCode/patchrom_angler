.class public Landroid/bluetooth/BluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "BluetoothGattCharacteristic.java"


# static fields
.field public static final FORMAT_FLOAT:I = 0x34

.field public static final FORMAT_SFLOAT:I = 0x32

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT8:I = 0x11

.field public static final PERMISSION_READ:I = 0x1

.field public static final PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final PERMISSION_WRITE:I = 0x10

.field public static final PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final PERMISSION_WRITE_SIGNED_MITM:I = 0x100

.field public static final PROPERTY_BROADCAST:I = 0x1

.field public static final PROPERTY_EXTENDED_PROPS:I = 0x80

.field public static final PROPERTY_INDICATE:I = 0x20

.field public static final PROPERTY_NOTIFY:I = 0x10

.field public static final PROPERTY_READ:I = 0x2

.field public static final PROPERTY_SIGNED_WRITE:I = 0x40

.field public static final PROPERTY_WRITE:I = 0x8

.field public static final PROPERTY_WRITE_NO_RESPONSE:I = 0x4

.field public static final WRITE_TYPE_DEFAULT:I = 0x2

.field public static final WRITE_TYPE_NO_RESPONSE:I = 0x1

.field public static final WRITE_TYPE_SIGNED:I = 0x4


# instance fields
.field protected mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstance:I

.field protected mKeySize:I

.field protected mPermissions:I

.field protected mProperties:I

.field protected mService:Landroid/bluetooth/BluetoothGattService;

.field protected mUuid:Ljava/util/UUID;

.field protected mValue:[B

.field protected mWriteType:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 242
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 232
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    .line 231
    return-void
.end method

.method private bytesToFloat(BB)F
    .locals 8
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    .prologue
    .line 659
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    .line 660
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    .line 659
    add-int/2addr v2, v3

    .line 660
    const/16 v3, 0xc

    .line 659
    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v1

    .line 661
    .local v1, "mantissa":I
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 662
    .local v0, "exponent":I
    int-to-double v2, v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private bytesToFloat(BBBB)F
    .locals 8
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    .prologue
    .line 669
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    .line 670
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    .line 669
    add-int/2addr v1, v2

    .line 671
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    .line 669
    add-int/2addr v1, v2

    .line 671
    const/16 v2, 0x18

    .line 669
    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    .line 672
    .local v0, "mantissa":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method private getTypeLen(I)I
    .locals 1
    .param p1, "formatType"    # I

    .prologue
    .line 630
    and-int/lit8 v0, p1, 0xf

    return v0
.end method

.method private initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "properties"    # I
    .param p5, "permissions"    # I

    .prologue
    .line 248
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    .line 249
    iput p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    .line 250
    iput p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    .line 251
    iput p5, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    .line 252
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    .line 256
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 247
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    goto :goto_0
.end method

.method private intToSignedBits(II)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 690
    if-gez p1, :cond_0

    .line 691
    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    add-int p1, v0, v1

    .line 693
    :cond_0
    return p1
.end method

.method private unsignedByteToInt(B)I
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 637
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private unsignedBytesToInt(BB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B

    .prologue
    .line 644
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private unsignedBytesToInt(BBBB)I
    .locals 2
    .param p1, "b0"    # B
    .param p2, "b1"    # B
    .param p3, "b2"    # B
    .param p4, "b3"    # B

    .prologue
    .line 651
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 652
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    .line 651
    add-int/2addr v0, v1

    .line 652
    invoke-direct {p0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 651
    add-int/2addr v0, v1

    return v0
.end method

.method private unsignedToSigned(II)I
    .locals 3
    .param p1, "unsigned"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 680
    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 681
    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, v0, -0x1

    .line 683
    :cond_0
    return p1
.end method


# virtual methods
.method public addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 407
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 408
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    return-object v0

    .line 412
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .prologue
    .line 289
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 290
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 292
    return-object v0

    .line 295
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getFloatValue(II)Ljava/lang/Float;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    return-object v2

    .line 485
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 494
    :pswitch_0
    return-object v2

    .line 487
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 490
    :pswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    .line 491
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    .line 490
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BBBB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    return v0
.end method

.method public getIntValue(II)Ljava/lang/Integer;
    .locals 5
    .param p1, "formatType"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    return-object v2

    .line 447
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 469
    return-object v2

    .line 449
    :sswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 452
    :sswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 455
    :sswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    .line 456
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    .line 455
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 458
    :sswitch_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 461
    :sswitch_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    .line 462
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    .line 461
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    .line 462
    const/16 v1, 0x10

    .line 461
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 465
    :sswitch_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    .line 466
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    .line 465
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    .line 466
    const/16 v1, 0x20

    .line 465
    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 447
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x24 -> :sswitch_5
    .end sparse-switch
.end method

.method getKeySize()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    return v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    return v0
.end method

.method public getService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le p1, v2, :cond_1

    :cond_0
    return-object v3

    .line 506
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    new-array v1, v2, [B

    .line 507
    .local v1, "strBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    return-object v0
.end method

.method public getWriteType()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    return v0
.end method

.method public setKeySize(I)V
    .locals 0
    .param p1, "keySize"    # I

    .prologue
    .line 387
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    .line 386
    return-void
.end method

.method setService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 311
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 310
    return-void
.end method

.method public setValue(III)Z
    .locals 4
    .param p1, "value"    # I
    .param p2, "formatType"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v2

    add-int v0, p3, v2

    .line 539
    .local v0, "len":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v2, :cond_0

    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 540
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    return v3

    .line 542
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 569
    return v3

    .line 544
    :sswitch_0
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 547
    :sswitch_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    .line 571
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 551
    :sswitch_2
    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 554
    :sswitch_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "offset":I
    .local v1, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    .line 555
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p3, v1

    .line 556
    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0

    .line 559
    :sswitch_4
    const/16 v2, 0x20

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 562
    :sswitch_5
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    .line 563
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 p3, v1, 0x1

    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 564
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    .line 565
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p3, v1

    .line 566
    .end local v1    # "offset":I
    .restart local p3    # "offset":I
    goto :goto_0

    .line 542
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_3
        0x14 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_2
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method public setValue(IIII)Z
    .locals 5
    .param p1, "mantissa"    # I
    .param p2, "exponent"    # I
    .param p3, "formatType"    # I
    .param p4, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 585
    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v2

    add-int v0, p4, v2

    .line 586
    .local v0, "len":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v2, :cond_0

    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 587
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    return v3

    .line 589
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 608
    :pswitch_0
    return v3

    .line 591
    :pswitch_1
    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 592
    const/4 v2, 0x4

    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 593
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    .end local p4    # "offset":I
    .local v1, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    .line 594
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 595
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v3, v2, v1

    and-int/lit8 v4, p2, 0xf

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p4, v1

    .line 611
    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 599
    :pswitch_2
    const/16 v2, 0x18

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    .line 600
    const/16 v2, 0x8

    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    .line 601
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    .end local p4    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    .line 602
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 p4, v1, 0x1

    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 603
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    .end local p4    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    .line 604
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v3, v2, v1

    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p4, v1

    .line 605
    .end local v1    # "offset":I
    .restart local p4    # "offset":I
    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 524
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public setWriteType(I)V
    .locals 0
    .param p1, "writeType"    # I

    .prologue
    .line 379
    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    .line 378
    return-void
.end method
