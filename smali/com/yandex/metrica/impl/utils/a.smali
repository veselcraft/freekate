.class public abstract Lcom/yandex/metrica/impl/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/utils/a;->a:Z

    .line 29
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/utils/a;->a:Z

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/utils/a;->a:Z

    .line 22
    return-void
.end method

.method varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/utils/a;->a:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/utils/a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/utils/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/utils/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/utils/a;->a:Z

    return v0
.end method

.method abstract c()Ljava/lang/String;
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/utils/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method
