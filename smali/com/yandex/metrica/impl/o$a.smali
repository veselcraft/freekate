.class Lcom/yandex/metrica/impl/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field volatile a:Lcom/yandex/metrica/impl/o;

.field private b:Landroid/net/LocalServerSocket;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/o;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/yandex/metrica/impl/o$a;->a:Lcom/yandex/metrica/impl/o;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/o;B)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/o$a;-><init>(Lcom/yandex/metrica/impl/o;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 275
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "com.yandex.metrica.synchronization.deviceid"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/o$a;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string p2, ""

    .line 323
    :cond_0
    :goto_0
    return-object p2

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/o$a;->a:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/by;-><init>(I)V

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/yandex/metrica/impl/o$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    iget-object v0, p0, Lcom/yandex/metrica/impl/o$a;->a:Lcom/yandex/metrica/impl/o;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    iget-object v0, p0, Lcom/yandex/metrica/impl/o$a;->a:Lcom/yandex/metrica/impl/o;

    invoke-static {v0, p1, p2}, Lcom/yandex/metrica/impl/o;->a(Lcom/yandex/metrica/impl/o;Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/o$a;->b:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/o$a;->b:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/impl/o$a;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->a()V

    .line 319
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->c()V

    .line 321
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->b()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move-object p2, v0

    goto :goto_0

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method
