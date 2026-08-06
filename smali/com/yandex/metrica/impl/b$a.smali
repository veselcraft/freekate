.class public final Lcom/yandex/metrica/impl/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    .line 47
    iput-wide p2, p0, Lcom/yandex/metrica/impl/b$a;->b:J

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 58
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 53
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Lcom/yandex/metrica/impl/b$a;

    .line 57
    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/yandex/metrica/impl/b$a;->b:J

    iget-wide v4, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 58
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/yandex/metrica/impl/b$a;->b:J

    iget-wide v4, p0, Lcom/yandex/metrica/impl/b$a;->b:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 66
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
