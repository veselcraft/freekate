.class public abstract Lcom/yandex/metrica/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ah$b;,
        Lcom/yandex/metrica/impl/ah$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:[B

.field protected h:I

.field protected i:[B

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ah;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/yandex/metrica/impl/ah;->h:I

    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->d:Ljava/lang/String;

    .line 127
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->j:Ljava/util/Map;

    .line 168
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    .line 143
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->g:[B

    .line 144
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->e:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yandex/metrica/impl/ah;->i:[B

    .line 160
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public e()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/yandex/metrica/impl/ah;->f:I

    return v0
.end method

.method public i()[B
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->g:[B

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/yandex/metrica/impl/ah;->h:I

    return v0
.end method

.method k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->j:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ah;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
