.class public final Lcom/my/target/core/models/sections/b;
.super Lcom/my/target/core/models/sections/a;
.source "AppwallSection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/models/sections/a",
        "<",
        "Lcom/my/target/core/models/banners/b;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 154
    const-string v0, "appwall"

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/core/models/sections/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/models/sections/b;->j:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/sections/b;->t:Ljava/util/ArrayList;

    .line 155
    return-void
.end method


# virtual methods
.method public final a(ILcom/my/target/core/models/banners/d;)Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p2}, Lcom/my/target/core/models/sections/b;->a(Lcom/my/target/core/models/banners/d;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 163
    instance-of v1, p1, Lcom/my/target/core/models/banners/b;

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {p1}, Lcom/my/target/core/models/banners/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/my/target/core/models/sections/b;->b(Ljava/lang/String;)Lcom/my/target/core/models/banners/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 167
    check-cast p1, Lcom/my/target/core/models/banners/b;

    .line 168
    iget-object v1, p0, Lcom/my/target/core/models/sections/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget v1, p0, Lcom/my/target/core/models/sections/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/my/target/core/models/sections/b;->d:I

    .line 170
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/b;->isHasNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/my/target/core/models/sections/b;->j:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/my/target/core/models/sections/b;->j:Z

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/models/g;)Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/my/target/core/models/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/models/sections/b;->o(Ljava/lang/String;)Lcom/my/target/core/models/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->i:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->k:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->l:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->m:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->n:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->r:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->s:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->o:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->p:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/my/target/core/models/sections/b;->q:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/b;

    .line 187
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->isHasNotification()Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 195
    .line 196
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/b;

    .line 198
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/b;->a(Z)V

    .line 199
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/b;->isHasNotification()Z

    move-result v0

    :goto_1
    move v1, v0

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/my/target/core/models/sections/b;->j:Z

    if-eq v1, v0, :cond_2

    .line 203
    iput-boolean v1, p0, Lcom/my/target/core/models/sections/b;->j:Z

    .line 204
    const/4 v2, 0x1

    .line 206
    :cond_2
    return v2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final o(Ljava/lang/String;)Lcom/my/target/core/models/g;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/my/target/core/models/sections/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/g;

    .line 223
    invoke-virtual {v0}, Lcom/my/target/core/models/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
