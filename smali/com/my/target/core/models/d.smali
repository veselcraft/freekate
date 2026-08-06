.class public final Lcom/my/target/core/models/d;
.super Lcom/my/target/core/models/b;
.source "AdService.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/my/target/core/models/d;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;

.field private o:F

.field private p:F

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 194
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 27
    iput v1, p0, Lcom/my/target/core/models/d;->b:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/my/target/core/models/d;->f:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    .line 195
    iput-object p1, p0, Lcom/my/target/core/models/d;->a:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/my/target/core/models/d;->o:F

    .line 163
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/my/target/core/models/d;->f:I

    .line 138
    return-void
.end method

.method public final a(Lcom/my/target/core/models/d;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/my/target/core/models/d;->g:Lcom/my/target/core/models/d;

    .line 158
    return-void
.end method

.method public final a(Lcom/my/target/core/models/k;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/my/target/core/models/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/my/target/core/models/d;->n:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/my/target/core/models/d;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/my/target/core/models/d;->q:Ljava/util/ArrayList;

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/models/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/my/target/core/models/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/my/target/core/models/d;->c:Z

    .line 148
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/my/target/core/models/d;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/my/target/core/models/d;->p:F

    .line 168
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/my/target/core/models/d;->b:I

    .line 143
    return-void
.end method

.method public final b(Lcom/my/target/core/models/d;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public final b(Lcom/my/target/core/models/k;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/my/target/core/models/d;->h:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/my/target/core/models/d;->d:Z

    .line 153
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/my/target/core/models/d;->f:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/my/target/core/models/d;->m:I

    .line 173
    return-void
.end method

.method public final c(Lcom/my/target/core/models/k;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/my/target/core/models/d;->b:I

    return v0
.end method

.method public final e()Lcom/my/target/core/models/d;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/my/target/core/models/d;->g:Lcom/my/target/core/models/d;

    return-object v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/my/target/core/models/d;->o:F

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/my/target/core/models/d;->p:F

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/my/target/core/models/d;->m:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/my/target/core/models/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/my/target/core/models/d;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/my/target/core/models/d;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/my/target/core/models/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/my/target/core/models/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/my/target/core/models/d;->c:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/my/target/core/models/d;->d:Z

    return v0
.end method

.method public final p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/my/target/core/models/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
