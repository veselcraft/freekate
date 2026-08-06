.class public Lcom/yandex/metrica/impl/ob/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bb$h;

.field private final b:Lcom/yandex/metrica/impl/ob/bb$h;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/bf;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/be;->a:Lcom/yandex/metrica/impl/ob/bb$h;

    .line 40
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/be;->b:Lcom/yandex/metrica/impl/ob/bb$h;

    .line 41
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/be;->c:Landroid/util/SparseArray;

    .line 42
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/be;->d:Lcom/yandex/metrica/impl/ob/bf;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->d:Lcom/yandex/metrica/impl/ob/bf;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->d:Lcom/yandex/metrica/impl/ob/bf;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/bf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->a:Lcom/yandex/metrica/impl/ob/bb$h;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/be;->b:Lcom/yandex/metrica/impl/ob/bb$h;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/be;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    .line 81
    if-le p3, p2, :cond_4

    .line 84
    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_0
    if-gt v3, p3, :cond_1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bb$h;

    .line 86
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bb$h;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/be;->d:Lcom/yandex/metrica/impl/ob/bf;

    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/bf;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    or-int/2addr v0, v1

    .line 99
    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->a:Lcom/yandex/metrica/impl/ob/bb$h;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/be;->b:Lcom/yandex/metrica/impl/ob/bb$h;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/be;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;)V

    .line 102
    :cond_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 97
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;)V
    .locals 1

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/yandex/metrica/impl/ob/bb$h;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/be;->a(Lcom/yandex/metrica/impl/ob/bb$h;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lcom/yandex/metrica/impl/ob/bb$h;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bb$h;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/be;->a:Lcom/yandex/metrica/impl/ob/bb$h;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/be;->a(Lcom/yandex/metrica/impl/ob/bb$h;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    return-void
.end method
