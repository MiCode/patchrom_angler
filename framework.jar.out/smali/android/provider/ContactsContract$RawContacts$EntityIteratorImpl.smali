.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2923
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 2924
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2925
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2926
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2927
    const-string/jumbo v1, "data4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2928
    const-string/jumbo v1, "data5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2929
    const-string/jumbo v1, "data6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2930
    const-string/jumbo v1, "data7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2931
    const-string/jumbo v1, "data8"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2932
    const-string/jumbo v1, "data9"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2933
    const-string/jumbo v1, "data10"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2934
    const-string/jumbo v1, "data11"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2935
    const-string/jumbo v1, "data12"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2936
    const-string/jumbo v1, "data13"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2937
    const-string/jumbo v1, "data14"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2938
    const-string/jumbo v1, "data15"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2939
    const-string/jumbo v1, "data_sync1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2940
    const-string/jumbo v1, "data_sync2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2941
    const-string/jumbo v1, "data_sync3"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2942
    const-string/jumbo v1, "data_sync4"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2923
    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .line 2922
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2945
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 2944
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2951
    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2952
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2955
    .local v6, "rawContactId":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2956
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "account_name"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2957
    const-string/jumbo v5, "account_type"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2958
    const-string/jumbo v5, "data_set"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2959
    const-string/jumbo v5, "_id"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2960
    const-string/jumbo v5, "dirty"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2961
    const-string/jumbo v5, "version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2962
    const-string/jumbo v5, "sourceid"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2963
    const-string/jumbo v5, "sync1"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2964
    const-string/jumbo v5, "sync2"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2965
    const-string/jumbo v5, "sync3"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2966
    const-string/jumbo v5, "sync4"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2967
    const-string/jumbo v5, "deleted"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2968
    const-string/jumbo v5, "contact_id"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2969
    const-string/jumbo v5, "starred"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2970
    new-instance v2, Landroid/content/Entity;

    invoke-direct {v2, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 2974
    .local v2, "contact":Landroid/content/Entity;
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 3012
    :cond_0
    return-object v2

    .line 2978
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cv":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2979
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "_id"

    const-string/jumbo v8, "data_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2981
    const-string/jumbo v5, "res_package"

    .line 2980
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2982
    const-string/jumbo v5, "mimetype"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2983
    const-string/jumbo v5, "is_primary"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2985
    const-string/jumbo v5, "is_super_primary"

    .line 2984
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2986
    const-string/jumbo v5, "data_version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2988
    const-string/jumbo v5, "group_sourceid"

    .line 2987
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2990
    const-string/jumbo v5, "data_version"

    .line 2989
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2991
    sget-object v8, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v9, v8

    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v4, v8, v5

    .line 2992
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2993
    .local v0, "columnIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 3006
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Invalid or unhandled data type"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3000
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2991
    :goto_2
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3003
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    .line 3009
    .end local v0    # "columnIndex":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3010
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    .line 2993
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
