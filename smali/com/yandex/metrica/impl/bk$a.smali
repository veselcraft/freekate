.class public final Lcom/yandex/metrica/impl/bk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/bk;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->d(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->b:Ljava/lang/Integer;

    .line 264
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->e(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->c:Ljava/lang/Integer;

    .line 265
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->f(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->d:Ljava/lang/Integer;

    .line 266
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->g(Lcom/yandex/metrica/impl/bk;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->e:Ljava/lang/Integer;

    .line 267
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->h(Lcom/yandex/metrica/impl/bk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->f:Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->i(Lcom/yandex/metrica/impl/bk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->g:Ljava/lang/String;

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bk$a;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk$a;->a:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$a;->g:Ljava/lang/String;

    return-object v0
.end method
