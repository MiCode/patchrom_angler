.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field debugFlags:I

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 317
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 330
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v3, 0x0

    .line 397
    .local v3, "curArg":I
    const/4 v9, 0x0

    .line 399
    .local v9, "seenRuntimeArgs":Z
    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_0

    .line 400
    aget-object v0, p1, v3

    .line 402
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v10, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 403
    add-int/lit8 v3, v3, 0x1

    .line 537
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v10, :cond_25

    .line 538
    array-length v10, p1

    sub-int/2addr v10, v3

    if-lez v10, :cond_27

    .line 539
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Unexpected arguments after --query-abi-list."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 405
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "--setuid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 406
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v10, :cond_2

    .line 407
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 408
    const-string/jumbo v11, "Duplicate arg specified"

    .line 407
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 410
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 412
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 399
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    :cond_4
    const-string/jumbo v10, "--setgid="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 414
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-eqz v10, :cond_5

    .line 415
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 416
    const-string/jumbo v11, "Duplicate arg specified"

    .line 415
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 418
    :cond_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 420
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 419
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto :goto_1

    .line 421
    :cond_6
    const-string/jumbo v10, "--target-sdk-version="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 422
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-eqz v10, :cond_7

    .line 423
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 424
    const-string/jumbo v11, "Duplicate target-sdk-version specified"

    .line 423
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 426
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 428
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 427
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto :goto_1

    .line 429
    :cond_8
    const-string/jumbo v10, "--enable-debugger"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 430
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 431
    :cond_9
    const-string/jumbo v10, "--enable-safemode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 432
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto :goto_1

    .line 433
    :cond_a
    const-string/jumbo v10, "--enable-checkjni"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 434
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 435
    :cond_b
    const-string/jumbo v10, "--enable-jit"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 436
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 437
    :cond_c
    const-string/jumbo v10, "--generate-debug-info"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 438
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 439
    :cond_d
    const-string/jumbo v10, "--enable-jni-logging"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 440
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 441
    :cond_e
    const-string/jumbo v10, "--enable-assert"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 442
    iget v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    goto/16 :goto_1

    .line 443
    :cond_f
    const-string/jumbo v10, "--runtime-args"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 444
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 445
    :cond_10
    const-string/jumbo v10, "--seinfo="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 446
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    if-eqz v10, :cond_11

    .line 447
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 448
    const-string/jumbo v11, "Duplicate arg specified"

    .line 447
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 450
    :cond_11
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    .line 451
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 452
    :cond_12
    const-string/jumbo v10, "--capabilities="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 453
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-eqz v10, :cond_13

    .line 454
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 455
    const-string/jumbo v11, "Duplicate arg specified"

    .line 454
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 457
    :cond_13
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 458
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "capString":Ljava/lang/String;
    const-string/jumbo v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "capStrings":[Ljava/lang/String;
    array-length v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    .line 463
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 464
    iget-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto/16 :goto_1

    .line 466
    :cond_14
    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 467
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    goto/16 :goto_1

    .line 469
    .end local v1    # "capString":Ljava/lang/String;
    .end local v2    # "capStrings":[Ljava/lang/String;
    :cond_15
    const-string/jumbo v10, "--rlimit="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 472
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_16

    .line 475
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 476
    const-string/jumbo v11, "--rlimit= should have 3 comma-delimited ints"

    .line 475
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 478
    :cond_16
    array-length v10, v6

    new-array v8, v10, [I

    .line 480
    .local v8, "rlimitTuple":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v10, v6

    if-ge v5, v10, :cond_17

    .line 481
    aget-object v10, v6, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v5

    .line 480
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 484
    :cond_17
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v10, :cond_18

    .line 485
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 488
    :cond_18
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 489
    .end local v5    # "i":I
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v8    # "rlimitTuple":[I
    :cond_19
    const-string/jumbo v10, "--setgroups="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 490
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v10, :cond_1a

    .line 491
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 492
    const-string/jumbo v11, "Duplicate arg specified"

    .line 491
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 496
    :cond_1a
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, "params":[Ljava/lang/String;
    array-length v10, v7

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 500
    array-length v10, v7

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_3

    .line 501
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v5

    .line 500
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 503
    .end local v5    # "i":I
    .end local v7    # "params":[Ljava/lang/String;
    :cond_1b
    const-string/jumbo v10, "--invoke-with"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 504
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v10, :cond_1c

    .line 505
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 506
    const-string/jumbo v11, "Duplicate arg specified"

    .line 505
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 509
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-object v10, p1, v3

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 510
    :catch_0
    move-exception v4

    .line 511
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 512
    const-string/jumbo v11, "--invoke-with requires argument"

    .line 511
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 514
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1d
    const-string/jumbo v10, "--nice-name="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 515
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v10, :cond_1e

    .line 516
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 517
    const-string/jumbo v11, "Duplicate arg specified"

    .line 516
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 519
    :cond_1e
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 520
    :cond_1f
    const-string/jumbo v10, "--mount-external-default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 521
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_1

    .line 522
    :cond_20
    const-string/jumbo v10, "--mount-external-read"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 523
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_1

    .line 524
    :cond_21
    const-string/jumbo v10, "--mount-external-write"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 525
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_1

    .line 526
    :cond_22
    const-string/jumbo v10, "--query-abi-list"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 527
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    goto/16 :goto_1

    .line 528
    :cond_23
    const-string/jumbo v10, "--instruction-set="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 529
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 530
    :cond_24
    const-string/jumbo v10, "--app-data-dir="

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 531
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 542
    .end local v0    # "arg":Ljava/lang/String;
    :cond_25
    if-nez v9, :cond_26

    .line 543
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected argument : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 546
    :cond_26
    array-length v10, p1

    sub-int/2addr v10, v3

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 547
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {p1, v3, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    :cond_27
    return-void
.end method
