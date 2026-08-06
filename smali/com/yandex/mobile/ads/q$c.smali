.class Lcom/yandex/mobile/ads/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/os/ResultReceiver;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/yandex/mobile/ads/nativeads/b;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/yandex/mobile/ads/report/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;Lcom/yandex/mobile/ads/nativeads/b;Lcom/yandex/mobile/ads/report/b$a;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/q$c;->c:Ljava/lang/ref/WeakReference;

    .line 222
    iput-object p5, p0, Lcom/yandex/mobile/ads/q$c;->e:Lcom/yandex/mobile/ads/nativeads/b;

    .line 223
    iput-object p6, p0, Lcom/yandex/mobile/ads/q$c;->g:Lcom/yandex/mobile/ads/report/b$a;

    .line 225
    iput-object p4, p0, Lcom/yandex/mobile/ads/q$c;->b:Landroid/os/ResultReceiver;

    .line 226
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/n;->i()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/q$c;->a:I

    .line 227
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/q$c;->d:Z

    .line 228
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/q$c;->f:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/yandex/mobile/ads/report/b$a;)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "block_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    if-eqz p2, :cond_0

    .line 297
    invoke-interface {p2}, Lcom/yandex/mobile/ads/report/b$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->k:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/q$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v0, p0, Lcom/yandex/mobile/ads/q$c;->e:Lcom/yandex/mobile/ads/nativeads/b;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yandex/mobile/ads/q$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/q$c;->d:Z

    iget-object v3, p0, Lcom/yandex/mobile/ads/q$c;->b:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/b;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/ResultReceiver;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/q$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/mobile/ads/q$c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/mobile/ads/q$c;->g:Lcom/yandex/mobile/ads/report/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/yandex/mobile/ads/q$c;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/report/b$a;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V

    .line 241
    :cond_1
    return-void
.end method

.method a(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    .line 280
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 244
    const/4 v1, 0x0

    move v3, v0

    move-object v2, p1

    move-object v0, v1

    .line 245
    :goto_0
    iget v1, p0, Lcom/yandex/mobile/ads/q$c;->a:I

    if-ge v3, v1, :cond_1

    .line 247
    :try_start_0
    invoke-static {v2}, Lcom/yandex/mobile/ads/utils/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/yandex/mobile/ads/utils/j;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 267
    :cond_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/net/HttpURLConnection;)V

    .line 270
    :cond_1
    :goto_1
    return-object v2

    .line 252
    :cond_2
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/q$c;->c(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 254
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 256
    sget-object v1, Lcom/yandex/mobile/ads/al;->n:Lcom/yandex/mobile/ads/al;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 259
    invoke-virtual {p0, v4, v1}, Lcom/yandex/mobile/ads/q$c;->a(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/net/HttpURLConnection;)V

    .line 245
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/net/HttpURLConnection;)V

    move-object v1, v2

    .line 268
    goto :goto_2

    .line 267
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    invoke-static {v1}, Lcom/yandex/mobile/ads/s;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method

.method c(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    sget v0, Lcom/yandex/mobile/ads/h$a;->a:I

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/ak;->a(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v0
.end method
