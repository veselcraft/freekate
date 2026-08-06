.class public Lcom/yandex/metrica/impl/ob/da;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/dg;

.field private b:Z

.field private c:Z

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->b:Z

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->c:Z

    .line 14
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/da;->d:J

    .line 15
    const-string v0, "https://certificate.mobile.yandex.net/api/v1/pins"

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->e:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->b:Z

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->c:Z

    .line 14
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/da;->d:J

    .line 15
    const-string v0, "https://certificate.mobile.yandex.net/api/v1/pins"

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->e:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Lcom/yandex/metrica/impl/ob/dg;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dg;ZZ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/da;-><init>(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 28
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/da;->b:Z

    .line 29
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/da;->c:Z

    .line 30
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/da;->d:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/da;->e:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/da;->f:Ljava/util/List;

    .line 49
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->e:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->f:Ljava/util/List;

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/dg;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->a:Lcom/yandex/metrica/impl/ob/dg;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->c:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/da;->b:Z

    return v0
.end method
