.class public Lcom/yandex/metrica/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/metrica/impl/j;

.field private static final c:I


# instance fields
.field private d:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/j;->a:Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    sput v0, Lcom/yandex/metrica/impl/j;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/j$a;

    const-string v1, "metrica_data.db"

    const/4 v2, 0x0

    sget v3, Lcom/yandex/metrica/impl/j;->c:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/yandex/metrica/impl/j$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/j;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/j;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/yandex/metrica/impl/j;->b:Lcom/yandex/metrica/impl/j;

    if-nez v0, :cond_1

    .line 32
    sget-object v1, Lcom/yandex/metrica/impl/j;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/j;->b:Lcom/yandex/metrica/impl/j;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/j;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yandex/metrica/impl/j;->b:Lcom/yandex/metrica/impl/j;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/j;->b:Lcom/yandex/metrica/impl/j;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/j;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    const-string v1, "SELECT * FROM GeoLocationInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method a([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/j;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 54
    const-string v2, "GeoLocation"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 56
    const-string v2, "GeoLocationInfo"

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    return-void
.end method
