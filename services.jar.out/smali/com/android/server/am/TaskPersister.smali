.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$WriteQueueItem;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"

.field static sImagesDir:Ljava/io/File;

.field static sTasksDir:Ljava/io/File;


# instance fields
.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/TaskPersister;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/TaskPersister;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "persistentTaskIds"    # Landroid/util/ArraySet;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;)V
    .locals 3
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    .line 124
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure creating tasks directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    .line 132
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string/jumbo v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure creating images directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 140
    iget-object v0, p2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 141
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 142
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string/jumbo v1, "LazyTaskWriterThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 122
    return-void
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 303
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "newline":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 306
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 308
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v8

    .line 311
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 459
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 457
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .locals 9
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 432
    const-string/jumbo v6, "TaskPersister"

    const-string/jumbo v7, "File error accessing recents directory (too many files open?)."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 435
    :cond_0
    const/4 v2, 0x0

    .local v2, "fileNdx":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_2

    .line 436
    aget-object v1, p1, v2

    .line 437
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 439
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_1

    .line 442
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 449
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 435
    .end local v4    # "taskId":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeObsoleteFile: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "taskIdEnd":I
    :cond_2
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 152
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "taskString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 155
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v3, :cond_0

    .line 156
    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 155
    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 282
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 283
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 284
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 290
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 294
    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 297
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 299
    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .line 320
    if-gez p1, :cond_0

    .line 321
    return-object v5

    .line 323
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 324
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 325
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_1

    .line 326
    return-object v0

    .line 323
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 329
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restore affiliation error looking for taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v5
.end method

.method private yieldIfQueueTooDeep()V
    .locals 6

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "stall":Z
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 168
    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 164
    :cond_1
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method flush()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 213
    monitor-enter p0

    .line 214
    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 212
    return-void

    .line 219
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "queueNdx":I
    :goto_0
    if-ltz v3, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 269
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_0

    .line 270
    move-object v0, v2

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v1, v0

    .line 271
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 267
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 276
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_1
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 266
    .end local v3    # "queueNdx":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method restoreTasksLocked()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 337
    .local v10, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 338
    .local v9, "recentFiles":[Ljava/io/File;
    if-nez v9, :cond_0

    .line 339
    const-string/jumbo v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to list files from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-object v15

    .line 343
    :cond_0
    const/4 v14, 0x0

    .local v14, "taskNdx":I
    :goto_0
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 344
    aget-object v12, v9, v14

    .line 346
    .local v12, "taskFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 347
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 349
    .local v2, "deleteFile":Z
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 351
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 354
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    .line 355
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    .line 356
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 359
    const-string/jumbo v17, "task"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 364
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_3

    .line 365
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 370
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget v13, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 372
    .local v13, "taskId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskId(I)V

    .line 383
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "taskId":I
    :cond_1
    :goto_2
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v7, v8

    .line 386
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string/jumbo v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ". Error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const-string/jumbo v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failing file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 388
    const/4 v2, 0x1

    .line 390
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    if-eqz v2, :cond_2

    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 343
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 375
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    :try_start_3
    const-string/jumbo v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to restore taskFile="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 376
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    .line 375
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 389
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v17

    move-object v7, v8

    .line 390
    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    if-eqz v2, :cond_4

    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 389
    :cond_4
    throw v17

    .line 379
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    const-string/jumbo v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restoreTasksLocked Unknown xml event="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 380
    const-string/jumbo v19, " name="

    .line 379
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 390
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 391
    if-eqz v2, :cond_7

    .line 393
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 399
    .end local v2    # "deleteFile":Z
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "taskFile":Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    .line 403
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v14, v17, -0x1

    :goto_6
    if-ltz v14, :cond_9

    .line 404
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 405
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 406
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 403
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 409
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    .line 410
    .local v16, "tasksArray":[Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 411
    new-instance v17, Lcom/android/server/am/TaskPersister$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 425
    new-instance v17, Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v17

    .line 389
    .end local v16    # "tasksArray":[Lcom/android/server/am/TaskRecord;
    .restart local v2    # "deleteFile":Z
    .restart local v12    # "taskFile":Ljava/io/File;
    :catchall_1
    move-exception v17

    goto/16 :goto_5

    .line 385
    .local v7, "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 226
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "queueNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 229
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 230
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v5, :cond_3

    .line 231
    move-object v0, v3

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v2, v0

    .line 232
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 239
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_0
    if-gez v4, :cond_1

    .line 240
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_4

    .line 243
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 250
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 253
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 225
    return-void

    .line 228
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 244
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_4
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 226
    .end local v4    # "queueNdx":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method startPersisting()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    .line 145
    :cond_0
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    if-eqz p1, :cond_5

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "queueNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 182
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_4

    .line 183
    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4

    .line 184
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    .line 191
    :cond_0
    if-gez v1, :cond_1

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "queueNdx":I
    :cond_1
    :goto_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_6

    .line 199
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 206
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 209
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 176
    return-void

    .line 180
    .restart local v1    # "queueNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 196
    .end local v1    # "queueNdx":I
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 200
    :cond_6
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
