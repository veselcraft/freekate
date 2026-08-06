.class public Lcom/yandex/mobile/ads/nativeads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lcom/yandex/mobile/ads/nativeads/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/i;)V
    .locals 1

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    .line 71
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->d:Z

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/nativeads/c;->e:Z

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/yandex/mobile/ads/nativeads/c;, "Lcom/yandex/mobile/ads/nativeads/c<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 85
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 76
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

    .line 78
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/c;

    .line 80
    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->d:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->d:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 81
    :cond_4
    iget-boolean v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->e:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->e:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 82
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 83
    :cond_8
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 84
    :cond_b
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 85
    :cond_e
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    if-nez v2, :cond_f

    goto :goto_0
.end method

.method public f()Lcom/yandex/mobile/ads/nativeads/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 92
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 93
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 94
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/c;->d:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/yandex/mobile/ads/nativeads/c;->e:Z

    if-eqz v3, :cond_5

    :goto_4
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/c;->f:Lcom/yandex/mobile/ads/nativeads/i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 97
    return v0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0

    :cond_2
    move v0, v1

    .line 92
    goto :goto_1

    :cond_3
    move v0, v1

    .line 93
    goto :goto_2

    :cond_4
    move v0, v1

    .line 94
    goto :goto_3

    :cond_5
    move v2, v1

    .line 95
    goto :goto_4
.end method
