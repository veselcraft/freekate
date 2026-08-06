.class public Lcom/yandex/metrica/impl/e;
.super Lcom/yandex/metrica/impl/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/e$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yandex/metrica/impl/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/utils/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->e:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->e:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    .line 45
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->b:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/e;->a:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/yandex/metrica/impl/e;->c:I

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->e:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/e;->d:Z

    .line 57
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->e:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    const/16 v1, 0x3e8

    const-string v2, "event name"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 62
    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    const v1, 0x3c000

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/e;->f:Lcom/yandex/metrica/impl/utils/b;

    const/16 v1, 0x2710

    const-string v2, "UserInfo"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/e$a;)V

    .line 74
    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/g;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0
.end method
