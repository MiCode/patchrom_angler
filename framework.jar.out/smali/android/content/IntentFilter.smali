.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$MalformedMimeTypeException;,
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$1;
    }
.end annotation


# static fields
.field private static final ACTION_STR:Ljava/lang/String; = "action"

.field private static final AUTH_STR:Ljava/lang/String; = "auth"

.field private static final AUTO_VERIFY_STR:Ljava/lang/String; = "autoVerify"

.field private static final CAT_STR:Ljava/lang/String; = "cat"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOST_STR:Ljava/lang/String; = "host"

.field private static final LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final MATCH_CATEGORY_HOST:I = 0x300000

.field public static final MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final MATCH_CATEGORY_PATH:I = 0x500000

.field public static final MATCH_CATEGORY_PORT:I = 0x400000

.field public static final MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final NAME_STR:Ljava/lang/String; = "name"

.field public static final NO_MATCH_ACTION:I = -0x3

.field public static final NO_MATCH_CATEGORY:I = -0x4

.field public static final NO_MATCH_DATA:I = -0x2

.field public static final NO_MATCH_TYPE:I = -0x1

.field private static final PATH_STR:Ljava/lang/String; = "path"

.field private static final PORT_STR:Ljava/lang/String; = "port"

.field private static final PREFIX_STR:Ljava/lang/String; = "prefix"

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static final SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final SSP_STR:Ljava/lang/String; = "ssp"

.field private static final STATE_NEED_VERIFY:I = 0x10

.field private static final STATE_NEED_VERIFY_CHECKED:I = 0x100

.field private static final STATE_VERIFIED:I = 0x1000

.field private static final STATE_VERIFY_AUTO:I = 0x1

.field public static final SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final TYPE_STR:Ljava/lang/String; = "type"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPartialTypes:Z

.field private mPriority:I

.field private mVerifyState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1750
    new-instance v0, Landroid/content/IntentFilter$1;

    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    .line 1749
    sput-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 275
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 380
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "o"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 427
    iget v0, p1, Landroid/content/IntentFilter;->mPriority:I

    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 429
    iget-object v0, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 432
    :cond_0
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 435
    :cond_1
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 438
    :cond_2
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 441
    :cond_3
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 444
    :cond_4
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 447
    :cond_5
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 448
    iget v0, p1, Landroid/content/IntentFilter;->mVerifyState:I

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 426
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 270
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 271
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 272
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 273
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 274
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 275
    iput-boolean v4, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 1843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 1844
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1846
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 1847
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1849
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1851
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1853
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1855
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1857
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1858
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 1859
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1861
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    new-instance v5, Landroid/os/PatternMatcher;

    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1865
    if-lez v0, :cond_4

    .line 1866
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1867
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1868
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-direct {v5, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1871
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1872
    if-lez v0, :cond_5

    .line 1873
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1874
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 1875
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    new-instance v5, Landroid/os/PatternMatcher;

    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1878
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 1879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 1880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_7

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 1842
    return-void

    :cond_6
    move v2, v4

    .line 1879
    goto :goto_3

    :cond_7
    move v3, v4

    .line 1880
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 275
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 392
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 394
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 275
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 415
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private static addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v2

    if-ltz v2, :cond_0

    return-object p0

    .line 300
    :cond_0
    if-nez p0, :cond_1

    .line 301
    const/4 v2, 0x2

    new-array p0, v2, [Ljava/lang/String;

    .line 302
    aput-object p1, p0, v3

    .line 303
    const/4 v2, 0x1

    aput v2, p2, p3

    .line 304
    return-object p0

    .line 306
    :cond_1
    aget v0, p2, p3

    .line 307
    .local v0, "N":I
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 308
    aput-object p1, p0, v0

    .line 309
    add-int/lit8 v2, v0, 0x1

    aput v2, p2, p3

    .line 310
    return-object p0

    .line 313
    :cond_2
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 314
    .local v1, "newSet":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    move-object p0, v1

    .line 316
    aput-object p1, p0, v0

    .line 317
    add-int/lit8 v2, v0, 0x1

    aput v2, p2, p3

    .line 318
    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Bad MIME type"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final findMimeType(Ljava/lang/String;)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1884
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1886
    .local v3, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1887
    return v6

    .line 1890
    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1891
    return v7

    .line 1895
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1896
    .local v4, "typeLength":I
    const/4 v8, 0x3

    if-ne v4, v8, :cond_3

    const-string/jumbo v8, "*/*"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1897
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 1901
    :cond_3
    iget-boolean v8, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "*"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1902
    return v7

    .line 1905
    :cond_4
    const/16 v8, 0x2f

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1906
    .local v2, "slashpos":I
    if-lez v2, :cond_7

    .line 1907
    iget-boolean v8, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    if-eqz v8, :cond_5

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1908
    return v7

    .line 1910
    :cond_5
    add-int/lit8 v8, v2, 0x2

    if-ne v4, v8, :cond_7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_7

    .line 1913
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1914
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_7

    .line 1915
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1916
    .local v5, "v":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v6, v5, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1917
    return v7

    .line 1914
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1923
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_7
    return v6
.end method

.method private static findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v3, -0x1

    .line 289
    if-nez p0, :cond_0

    return v3

    .line 290
    :cond_0
    aget v0, p2, p3

    .line 291
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 292
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    return v3
.end method

.method private static removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 6
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v5, 0x0

    .line 323
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v3

    .line 324
    .local v3, "pos":I
    if-gez v3, :cond_0

    return-object p0

    .line 325
    :cond_0
    aget v0, p2, p3

    .line 326
    .local v0, "N":I
    array-length v4, p0

    div-int/lit8 v4, v4, 0x4

    if-le v0, v4, :cond_2

    .line 327
    add-int/lit8 v4, v3, 0x1

    sub-int v1, v0, v4

    .line 328
    .local v1, "copyLen":I
    if-lez v1, :cond_1

    .line 329
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    :cond_1
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    aput-object v5, p0, v4

    .line 332
    add-int/lit8 v4, v0, -0x1

    aput v4, p2, p3

    .line 333
    return-object p0

    .line 336
    .end local v1    # "copyLen":I
    :cond_2
    array-length v4, p0

    div-int/lit8 v4, v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 337
    .local v2, "newSet":[Ljava/lang/String;
    if-lez v3, :cond_3

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    :cond_3
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x1

    sub-int v5, v0, v5

    invoke-static {p0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_4
    return-object v2
.end method


# virtual methods
.method public final actionsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final addAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    .line 1349
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_1
    return-void
.end method

.method public final addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .locals 1
    .param p1, "ent"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1049
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method public final addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 1041
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1042
    :cond_0
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 1040
    return-void
.end method

.method public final addDataPath(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .prologue
    .line 1133
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1134
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    return-void
.end method

.method public final addDataPath(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1128
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 1127
    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 793
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_1
    return-void
.end method

.method public final addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .prologue
    .line 953
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 956
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    return-void
.end method

.method public final addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 948
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 947
    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 717
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 718
    .local v0, "slashpos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 719
    .local v2, "typelen":I
    if-lez v0, :cond_4

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_4

    .line 720
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 721
    :cond_0
    add-int/lit8 v3, v0, 0x2

    if-ne v2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_3

    .line 722
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 724
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    .line 732
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 728
    :cond_3
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 729
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_4
    new-instance v3, Landroid/content/IntentFilter$MalformedMimeTypeException;

    invoke-direct {v3, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final authoritiesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1098
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final categoriesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1385
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final countActions()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countCategories()I
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countDataAuthorities()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countDataPaths()I
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countDataSchemeSpecificParts()I
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countDataSchemes()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countDataTypes()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public debugCheck()Z
    .locals 1

    .prologue
    .line 1823
    const/4 v0, 0x1

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8
    .param p1, "du"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1667
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1668
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1669
    iget-object v6, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1670
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1671
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1672
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Action: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1677
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1678
    iget-object v6, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1679
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1680
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1681
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Category: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1686
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1687
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1688
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1689
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1690
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Scheme: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1695
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1696
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1697
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1698
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1699
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1700
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Ssp: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1705
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_3
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 1706
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1707
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1708
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1709
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1710
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Authority: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get0(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get1(Landroid/content/IntentFilter$AuthorityEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1713
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get2(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, " WILD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1717
    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_5
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 1718
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1719
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1720
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1721
    .restart local v4    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1722
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Path: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1727
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_6
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 1728
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1729
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1730
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1731
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Type: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1736
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    iget v6, p0, Landroid/content/IntentFilter;->mPriority:I

    if-nez v6, :cond_8

    iget-boolean v6, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    if-eqz v6, :cond_9

    .line 1737
    :cond_8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1738
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mPriority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1739
    const-string/jumbo v6, ", mHasPartialTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1743
    :cond_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1744
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "AutoVerify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public final getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 661
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAutoVerify()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 517
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCategory(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    return-object v0
.end method

.method public final getDataPath(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final getDataScheme(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 810
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 970
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final getDataType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 766
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHosts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1946
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getHostsList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1930
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1932
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_0

    .line 1933
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1934
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1935
    .local v0, "entry":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1938
    .end local v0    # "entry":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_0
    return-object v2
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    return v0
.end method

.method public final handleAllWebDataURI()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 536
    const-string/jumbo v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-nez v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 537
    goto :goto_0
.end method

.method public final handlesWebUris(Z)Z
    .locals 6
    .param p1, "onlyWebSchemes"    # Z

    .prologue
    const/4 v5, 0x0

    .line 558
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    const-string/jumbo v4, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 562
    :cond_0
    return v5

    .line 561
    :cond_1
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 568
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 571
    :goto_1
    if-eqz p1, :cond_3

    .line 575
    if-nez v2, :cond_4

    .line 576
    return v5

    .line 570
    :cond_2
    const/4 v2, 0x1

    .local v2, "isWebScheme":Z
    goto :goto_1

    .line 581
    .end local v2    # "isWebScheme":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 582
    const/4 v4, 0x1

    return v4

    .line 567
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_5
    return p1
.end method

.method public final hasAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 673
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 4
    .param p1, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    const/4 v3, 0x0

    .line 1082
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1083
    return v3

    .line 1085
    :cond_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1086
    .local v1, "numDataAuthorities":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1087
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    const/4 v2, 0x1

    return v2

    .line 1086
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1091
    :cond_2
    return v3
.end method

.method public final hasDataAuthority(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hasDataPath(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .prologue
    const/4 v5, 0x0

    .line 1178
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1179
    return v5

    .line 1181
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1182
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1183
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 1184
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1185
    const/4 v3, 0x1

    return v3

    .line 1182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1188
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v5
.end method

.method public final hasDataPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1163
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1164
    return v4

    .line 1166
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1167
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1168
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 1169
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1170
    const/4 v3, 0x1

    return v3

    .line 1167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v4
.end method

.method public final hasDataScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .prologue
    const/4 v5, 0x0

    .line 999
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1000
    return v5

    .line 1002
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1003
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1004
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 1005
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1006
    const/4 v3, 0x1

    return v3

    .line 1003
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v5
.end method

.method public final hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 984
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 985
    return v4

    .line 987
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 988
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 989
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 990
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    const/4 v3, 0x1

    return v3

    .line 988
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v4
.end method

.method public final hasDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 747
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasExactDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVerified()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 618
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    .line 619
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 621
    :cond_1
    return v0
.end method

.method public final match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolve"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 1440
    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1442
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v6, p4

    .line 1441
    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1440
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public final match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1475
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1481
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    .line 1482
    .local v1, "dataMatch":I
    if-gez v1, :cond_2

    .line 1493
    return v1

    .line 1478
    .end local v1    # "dataMatch":I
    :cond_1
    const/4 v2, -0x3

    return v2

    .line 1496
    .restart local v1    # "dataMatch":I
    :cond_2
    invoke-virtual {p0, p5}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "categoryMismatch":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1501
    const/4 v2, -0x4

    return v2

    .line 1512
    :cond_3
    return v1
.end method

.method public final matchAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1400
    if-nez p1, :cond_0

    .line 1401
    return-object v2

    .line 1404
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1406
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 1407
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    return-object v2

    .line 1410
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1411
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1412
    .local v0, "category":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1413
    return-object v0

    .line 1417
    .end local v0    # "category":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public final matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v9, -0x1

    const/4 v7, -0x2

    .line 1262
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    .line 1263
    .local v6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    .line 1265
    .local v5, "schemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v2, 0x100000

    .line 1267
    .local v2, "match":I
    if-nez v6, :cond_1

    if-nez v5, :cond_1

    .line 1268
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 1269
    const v7, 0x108000

    .line 1268
    :cond_0
    return v7

    .line 1272
    :cond_1
    if-eqz v5, :cond_a

    .line 1273
    if-eqz p2, :cond_4

    .end local p2    # "scheme":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1274
    const/high16 v2, 0x200000

    .line 1279
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1280
    .local v4, "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 1281
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1282
    const/high16 v2, 0x580000

    .line 1284
    :cond_2
    :goto_1
    const/high16 v8, 0x580000

    if-eq v2, v8, :cond_3

    .line 1286
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    .line 1287
    .local v1, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_3

    .line 1288
    invoke-virtual {p0, p3}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result v0

    .line 1289
    .local v0, "authMatch":I
    if-ltz v0, :cond_9

    .line 1290
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    .line 1291
    .local v3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-nez v3, :cond_7

    .line 1292
    move v2, v0

    .line 1304
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_3
    :goto_2
    if-ne v2, v7, :cond_b

    .line 1305
    return v7

    .line 1273
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_4
    const-string/jumbo p2, ""

    goto :goto_0

    .line 1276
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_5
    return v7

    .line 1282
    .restart local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_6
    const/4 v2, -0x2

    goto :goto_1

    .line 1293
    .restart local v0    # "authMatch":I
    .restart local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_7
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1294
    const/high16 v2, 0x500000

    goto :goto_2

    .line 1296
    :cond_8
    return v7

    .line 1299
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_9
    return v7

    .line 1313
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_a
    if-eqz p2, :cond_b

    const-string/jumbo v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1320
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_f

    .line 1321
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1322
    const/high16 v2, 0x600000

    .line 1334
    :cond_c
    const v7, 0x8000

    add-int/2addr v7, v2

    return v7

    .line 1314
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_d
    const-string/jumbo v8, "content"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1315
    const-string/jumbo v8, "file"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1316
    return v7

    .line 1324
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_e
    return v9

    .line 1329
    :cond_f
    if-eqz p1, :cond_c

    .line 1330
    return v9
.end method

.method public final matchDataAuthority(Landroid/net/Uri;)I
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x2

    .line 1209
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1210
    :cond_0
    return v5

    .line 1212
    :cond_1
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1213
    .local v3, "numDataAuthorities":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1214
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1215
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1216
    .local v2, "match":I
    if-ltz v2, :cond_2

    .line 1217
    return v2

    .line 1213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1220
    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v2    # "match":I
    :cond_3
    return v5
.end method

.method public final needsVerification()Z
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pathsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1195
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1598
    const-string/jumbo v10, "autoVerify"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "autoVerify":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {p0, v10}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 1601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1603
    .local v4, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    .line 1604
    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 1605
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_f

    .line 1606
    :cond_1
    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    .line 1607
    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 1611
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1612
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "action"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1613
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1614
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1615
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1662
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1599
    .end local v4    # "outerDepth":I
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 1617
    .restart local v4    # "outerDepth":I
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_4
    const-string/jumbo v10, "cat"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1618
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1619
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1620
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .line 1622
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1623
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1624
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1626
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1627
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    goto :goto_2

    .line 1630
    .end local v1    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "scheme"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1631
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1632
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1633
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_2

    .line 1635
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    const-string/jumbo v10, "ssp"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1636
    const-string/jumbo v10, "literal"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1637
    .local v7, "ssp":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 1638
    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_2

    .line 1639
    :cond_8
    const-string/jumbo v10, "prefix"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1640
    const/4 v10, 0x1

    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_2

    .line 1641
    :cond_9
    const-string/jumbo v10, "sglob"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1642
    const/4 v10, 0x2

    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1644
    .end local v7    # "ssp":Ljava/lang/String;
    :cond_a
    const-string/jumbo v10, "auth"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1645
    const-string/jumbo v10, "host"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1646
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v10, "port"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1647
    .local v6, "port":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1648
    invoke-virtual {p0, v2, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1650
    .end local v2    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "path"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1651
    const-string/jumbo v10, "literal"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1652
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1653
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1654
    :cond_c
    const-string/jumbo v10, "prefix"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1655
    const/4 v10, 0x1

    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1656
    :cond_d
    const-string/jumbo v10, "sglob"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1657
    const/4 v10, 0x2

    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1660
    .end local v5    # "path":Ljava/lang/String;
    :cond_e
    const-string/jumbo v10, "IntentFilter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1597
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public final schemeSpecificPartsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1016
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final schemesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 830
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final setAutoVerify(Z)V
    .locals 1
    .param p1, "autoVerify"    # Z

    .prologue
    .line 503
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 504
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 502
    :cond_0
    return-void
.end method

.method public final setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 465
    iput p1, p0, Landroid/content/IntentFilter;->mPriority:I

    .line 464
    return-void
.end method

.method public setVerified(Z)V
    .locals 1
    .param p1, "verified"    # Z

    .prologue
    .line 632
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 633
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 634
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    .line 631
    :cond_0
    return-void
.end method

.method public final typesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 773
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1765
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1766
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1767
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1772
    :goto_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1773
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1778
    :goto_1
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1779
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1784
    :goto_2
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1785
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1786
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 1788
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1787
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1770
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1776
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1782
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1791
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    :cond_4
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 1794
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1795
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1796
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_6

    .line 1797
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 1796
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1800
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    :cond_6
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 1803
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1804
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_8

    .line 1806
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1805
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1809
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    :cond_8
    iget v2, p0, Landroid/content/IntentFilter;->mPriority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    iget-boolean v2, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    return-void

    :cond_9
    move v2, v4

    .line 1812
    goto :goto_6

    :cond_a
    move v3, v4

    .line 1813
    goto :goto_7
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1520
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1521
    const-string/jumbo v5, "autoVerify"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    :cond_0
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 1525
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1526
    const-string/jumbo v5, "action"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    const-string/jumbo v6, "name"

    iget-object v5, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1528
    const-string/jumbo v5, "action"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 1531
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1532
    const-string/jumbo v5, "cat"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1533
    const-string/jumbo v6, "name"

    iget-object v5, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1534
    const-string/jumbo v5, "cat"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1531
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1536
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 1537
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 1538
    const-string/jumbo v5, "type"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1539
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1540
    .local v4, "type":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1541
    :cond_3
    const-string/jumbo v5, "name"

    invoke-interface {p1, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    const-string/jumbo v5, "type"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1537
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1544
    .end local v4    # "type":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 1545
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 1546
    const-string/jumbo v5, "scheme"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    const-string/jumbo v6, "name"

    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1548
    const-string/jumbo v5, "scheme"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1545
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1550
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 1551
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    .line 1552
    const-string/jumbo v5, "ssp"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1553
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1554
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1565
    :goto_5
    const-string/jumbo v5, "ssp"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1556
    :pswitch_0
    const-string/jumbo v5, "literal"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 1559
    :pswitch_1
    const-string/jumbo v5, "prefix"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 1562
    :pswitch_2
    const-string/jumbo v5, "sglob"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 1567
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_6
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 1568
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_8

    .line 1569
    const-string/jumbo v5, "auth"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1570
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1571
    .local v1, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    const-string/jumbo v5, "host"

    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1572
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v5

    if-ltz v5, :cond_7

    .line 1573
    const-string/jumbo v5, "port"

    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    :cond_7
    const-string/jumbo v5, "auth"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1577
    .end local v1    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 1578
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_9

    .line 1579
    const-string/jumbo v5, "path"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1580
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1581
    .restart local v3    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1592
    :goto_8
    const-string/jumbo v5, "path"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1578
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1583
    :pswitch_3
    const-string/jumbo v5, "literal"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 1586
    :pswitch_4
    const-string/jumbo v5, "prefix"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 1589
    :pswitch_5
    const-string/jumbo v5, "sglob"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 1518
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_9
    return-void

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1581
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
