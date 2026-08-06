.class public Lcom/yandex/metrica/impl/ob/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/bz;->a:I

    .line 16
    iput p1, p0, Lcom/yandex/metrica/impl/ob/bz;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yandex/metrica/impl/ob/bz;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/bz;->a:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bz;->c:Z

    .line 27
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bz;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yandex/metrica/impl/ob/bz;->a:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/bz;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bz;->c:Z

    .line 31
    return-void
.end method
