.class public final Lcom/yandex/metrica/c$a$g;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/c$a$g;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 310
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$g;->e()Lcom/yandex/metrica/c$a$g;

    .line 311
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$g;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    if-nez v0, :cond_1

    .line 290
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$g;

    sput-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    .line 295
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$g;->e:[Lcom/yandex/metrica/c$a$g;

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/yandex/metrica/c$a$g;->c:I

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$a$g;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 331
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 332
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 337
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    iget v1, p0, Lcom/yandex/metrica/c$a$g;->c:I

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$a$g;->c:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_1
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$g;
    .locals 1

    .prologue
    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g;->b:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a$g;->c:I

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$g;->d:Ljava/lang/String;

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$g;->a:I

    .line 318
    return-object p0
.end method
