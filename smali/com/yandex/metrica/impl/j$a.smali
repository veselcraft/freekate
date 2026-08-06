.class Lcom/yandex/metrica/impl/j$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/be;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 102
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bb;->b()Lcom/yandex/metrica/impl/ob/be;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/j$a;->a:Lcom/yandex/metrica/impl/ob/be;

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/j$a;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/be;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/j$a;->a:Lcom/yandex/metrica/impl/ob/be;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/be;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 113
    return-void
.end method
