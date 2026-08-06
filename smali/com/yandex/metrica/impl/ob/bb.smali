.class public final Lcom/yandex/metrica/impl/ob/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bb$d;,
        Lcom/yandex/metrica/impl/ob/bb$c;,
        Lcom/yandex/metrica/impl/ob/bb$b;,
        Lcom/yandex/metrica/impl/ob/bb$a;,
        Lcom/yandex/metrica/impl/ob/bb$l;,
        Lcom/yandex/metrica/impl/ob/bb$k;,
        Lcom/yandex/metrica/impl/ob/bb$g;,
        Lcom/yandex/metrica/impl/ob/bb$f;,
        Lcom/yandex/metrica/impl/ob/bb$e;,
        Lcom/yandex/metrica/impl/ob/bb$j;,
        Lcom/yandex/metrica/impl/ob/bb$i;,
        Lcom/yandex/metrica/impl/ob/bb$n;,
        Lcom/yandex/metrica/impl/ob/bb$m;,
        Lcom/yandex/metrica/impl/ob/bb$h;,
        Lcom/yandex/metrica/impl/ob/bb$p;,
        Lcom/yandex/metrica/impl/ob/bb$o;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:I

.field static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ob/bb$h;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1d

    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bb;->a:Ljava/lang/Boolean;

    .line 50
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    sput v0, Lcom/yandex/metrica/impl/ob/bb;->b:I

    .line 321
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 322
    sput-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$m;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$m;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$n;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$n;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$i;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$i;-><init>(B)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$j;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$j;-><init>(B)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    const/16 v1, 0x25

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$k;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$k;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    const/16 v1, 0x26

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$l;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$l;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 330
    sput-object v0, Lcom/yandex/metrica/impl/ob/bb;->d:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$e;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$e;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$f;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$f;-><init>(B)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->d:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$g;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$g;-><init>(B)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    sput-object v0, Lcom/yandex/metrica/impl/ob/bb;->e:Ljava/util/HashMap;

    const-string v1, "reports"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bb$o;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/yandex/metrica/impl/ob/bb;->e:Ljava/util/HashMap;

    const-string v1, "sessions"

    sget-object v2, Lcom/yandex/metrica/impl/ob/bb$p;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/be;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 340
    new-instance v0, Lcom/yandex/metrica/impl/ob/be;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$a;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$a;-><init>(B)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$b;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$b;-><init>(B)V

    sget-object v3, Lcom/yandex/metrica/impl/ob/bb;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/yandex/metrica/impl/ob/bg;

    sget-object v5, Lcom/yandex/metrica/impl/ob/bb;->e:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/bg;-><init>(Ljava/util/HashMap;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/be;-><init>(Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bf;)V

    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/be;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 350
    new-instance v0, Lcom/yandex/metrica/impl/ob/be;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bb$c;

    invoke-direct {v1, v3}, Lcom/yandex/metrica/impl/ob/bb$c;-><init>(B)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/bb$d;

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/bb$d;-><init>(B)V

    sget-object v3, Lcom/yandex/metrica/impl/ob/bb;->d:Landroid/util/SparseArray;

    new-instance v4, Lcom/yandex/metrica/impl/ob/ba;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ba;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/be;-><init>(Lcom/yandex/metrica/impl/ob/bb$h;Lcom/yandex/metrica/impl/ob/bb$h;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bf;)V

    return-object v0
.end method
