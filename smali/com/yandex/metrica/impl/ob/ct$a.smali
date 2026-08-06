.class Lcom/yandex/metrica/impl/ob/ct$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/db;

.field private final b:Lcom/yandex/metrica/impl/ob/da;

.field private volatile c:[Lcom/yandex/metrica/impl/ob/co;

.field private volatile d:Lcom/yandex/metrica/impl/ob/cz;

.field private volatile e:Lcom/yandex/metrica/impl/ob/cr;

.field private volatile f:Lcom/yandex/metrica/impl/ob/cg;

.field private volatile g:Lcom/yandex/metrica/impl/ob/cn;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ct$a;->a:Lcom/yandex/metrica/impl/ob/db;

    .line 229
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ct$a;->b:Lcom/yandex/metrica/impl/ob/da;

    .line 230
    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/cn;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->g:Lcom/yandex/metrica/impl/ob/cn;

    if-nez v0, :cond_1

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->g:Lcom/yandex/metrica/impl/ob/cn;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/yandex/metrica/impl/ob/cn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct$a;->a:Lcom/yandex/metrica/impl/ob/db;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct$a;->b:Lcom/yandex/metrica/impl/ob/da;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/cn;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->g:Lcom/yandex/metrica/impl/ob/cn;

    .line 238
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->g:Lcom/yandex/metrica/impl/ob/cn;

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cz;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->d()Lcom/yandex/metrica/impl/ob/cz;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/yandex/metrica/impl/ob/cg;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->f:Lcom/yandex/metrica/impl/ob/cg;

    if-nez v0, :cond_1

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->f:Lcom/yandex/metrica/impl/ob/cg;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/ob/cg;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cg;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->f:Lcom/yandex/metrica/impl/ob/cg;

    .line 249
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->f:Lcom/yandex/metrica/impl/ob/cg;

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cr;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->c()Lcom/yandex/metrica/impl/ob/cr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cn;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->a()Lcom/yandex/metrica/impl/ob/cn;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/yandex/metrica/impl/ob/cr;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->e:Lcom/yandex/metrica/impl/ob/cr;

    if-nez v0, :cond_1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->e:Lcom/yandex/metrica/impl/ob/cr;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/yandex/metrica/impl/ob/cr;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->b()Lcom/yandex/metrica/impl/ob/cg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cg;->b()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cr;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->e:Lcom/yandex/metrica/impl/ob/cr;

    .line 260
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->e:Lcom/yandex/metrica/impl/ob/cr;

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Lcom/yandex/metrica/impl/ob/cz;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->d:Lcom/yandex/metrica/impl/ob/cz;

    if-nez v0, :cond_1

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->d:Lcom/yandex/metrica/impl/ob/cz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 270
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cz;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cz;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->d:Lcom/yandex/metrica/impl/ob/cz;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->d:Lcom/yandex/metrica/impl/ob/cz;

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t get system trust manager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/ct$a;)[Lcom/yandex/metrica/impl/ob/co;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->e()[Lcom/yandex/metrica/impl/ob/co;

    move-result-object v0

    return-object v0
.end method

.method private e()[Lcom/yandex/metrica/impl/ob/co;
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->c:[Lcom/yandex/metrica/impl/ob/co;

    if-nez v0, :cond_1

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->c:[Lcom/yandex/metrica/impl/ob/co;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->a()Lcom/yandex/metrica/impl/ob/cn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/cv;)V

    .line 285
    new-instance v1, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ct$a;->b()Lcom/yandex/metrica/impl/ob/cg;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Lcom/yandex/metrica/impl/ob/cv;)V

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/co;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ct$a;->c:[Lcom/yandex/metrica/impl/ob/co;

    .line 288
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct$a;->c:[Lcom/yandex/metrica/impl/ob/co;

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
