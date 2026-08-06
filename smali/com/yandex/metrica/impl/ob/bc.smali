.class public Lcom/yandex/metrica/impl/ob/bc;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bc$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Lcom/yandex/metrica/impl/ob/bc$a;

.field private final e:Lcom/yandex/metrica/impl/ob/be;

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/ContentValues;

.field private final i:Landroid/content/Context;

.field private j:Lcom/yandex/metrica/impl/ob/j;

.field private volatile k:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 4

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->m()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "db_metrica_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/yandex/metrica/impl/ob/bb;->b:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->f:Ljava/lang/Object;

    .line 78
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->i:Landroid/content/Context;

    .line 79
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/ob/j;)V

    .line 80
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bb;->a()Lcom/yandex/metrica/impl/ob/be;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->e:Lcom/yandex/metrica/impl/ob/be;

    .line 81
    return-void
.end method

.method private static a(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 133
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 139
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    :goto_0
    return-wide v0

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    :try_start_0
    const-string v0, "SELECT count() FROM reports"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->a(Landroid/database/Cursor;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-wide v0

    .line 168
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 301
    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 304
    const-string v1, "reports"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " AND "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 469
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 422
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->p()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :cond_0
    return-void

    .line 422
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bc;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 51
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sessions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bc;Ljava/util/List;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "reports"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v3, "Event saved to db"

    invoke-direct {p0, v0, v3}, Lcom/yandex/metrica/impl/ob/bc;->a(Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/bc;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 428
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bc;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bc;->c()Z

    move-result v0

    return v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bc;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bc;->h:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bc;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/bc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->g:Ljava/util/List;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->h:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/bc;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->h:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/bc;)Lcom/yandex/metrica/impl/ob/j;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 195
    .line 196
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_0
    sget-object v2, Lcom/yandex/metrica/impl/ob/bb;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, " SELECT DISTINCT id From sessions order by id asc "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "All sessions in db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 201
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 202
    const-string v2, "sessions"

    sget-object v3, Lcom/yandex/metrica/impl/ob/bb$p;->c:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    :goto_3
    return v0

    .line 199
    :cond_1
    :try_start_4
    const-string v4, " SELECT DISTINCT session_id From reports order by session_id asc "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "All sessions in reports db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v3}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 209
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    .line 199
    :cond_2
    :try_start_7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v2}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 209
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 199
    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v2, v1

    goto/16 :goto_1
.end method

.method public a()J
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 500
    :try_start_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JLjava/util/Map;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 336
    .line 338
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 341
    const-string v1, "sessions"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    invoke-static {v3, p3}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, p3}, Lcom/yandex/metrica/impl/ob/bc;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 353
    :goto_0
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 351
    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/Map;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 314
    .line 316
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 319
    const-string v1, "sessions"

    const/4 v2, 0x0

    const-string v3, "id >= ?"

    invoke-static {v3, p1}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, p1}, Lcom/yandex/metrica/impl/ob/bc;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 331
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 329
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 443
    const-string v2, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id >= 0"

    .line 444
    if-eqz p1, :cond_0

    .line 445
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 449
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 451
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 459
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 462
    :goto_1
    return-object v0

    .line 458
    :cond_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 459
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 459
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    if-gtz p4, :cond_0

    .line 282
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 255
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "session_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "session_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "reports"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    add-int/lit8 v6, p4, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/j;->p()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/e;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 269
    :goto_3
    :try_start_2
    const-string v4, "reports"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 272
    if-eqz v1, :cond_2

    .line 273
    const-string v3, "Event removed from db"

    invoke-direct {p0, v1, v3}, Lcom/yandex/metrica/impl/ob/bc;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 275
    :cond_2
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J

    int-to-long v2, v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 280
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 280
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Landroid/database/Cursor;)V

    .line 281
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 280
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method

.method public a(JLcom/yandex/metrica/impl/ob/az;)V
    .locals 7

    .prologue
    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v1, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "server_time_offset"

    invoke-static {}, Lcom/yandex/metrica/impl/utils/h;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "type"

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/az;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    new-instance v1, Lcom/yandex/metrica/impl/k;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/k;->a()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bc;->a(Landroid/content/ContentValues;)V

    .line 114
    return-void
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bc;->h:Landroid/content/ContentValues;

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    monitor-enter v1

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 181
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/ax;Lcom/yandex/metrica/impl/b$a;)V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 118
    const-string v1, "number"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ax;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v1, "time"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ax;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v1, "session_id"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ax;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v1, "session_type"

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ax;->b()Lcom/yandex/metrica/impl/ob/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/az;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    new-instance v1, Lcom/yandex/metrica/impl/k;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 124
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/b$a;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bc;->b(Landroid/content/ContentValues;)V

    .line 129
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->g:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/yandex/metrica/impl/ob/bc$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/bc$a;-><init>(Lcom/yandex/metrica/impl/ob/bc;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DatabaseWorker ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/j;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bc$a;->setName(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bc$a;->start()V

    .line 90
    return-void
.end method

.method public b(JLcom/yandex/metrica/impl/ob/az;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 358
    .line 360
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 363
    const-string v1, "reports"

    const/4 v2, 0x0

    const-string v3, "session_id = ? AND session_type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/az;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "number ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v9

    .line 373
    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/j;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->j:Lcom/yandex/metrica/impl/ob/j;

    return-object v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    monitor-enter v1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 187
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 191
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 555
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->d:Lcom/yandex/metrica/impl/ob/bc$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bc$a;->a()V

    .line 557
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->e:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/be;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 580
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 572
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->e:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/be;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 573
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bc;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/bc;->k:J

    .line 575
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc;->e:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/be;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 585
    return-void
.end method
