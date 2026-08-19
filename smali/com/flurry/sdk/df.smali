.class public Lcom/flurry/sdk/df;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Landroid/location/Location;

.field private k:I

.field private l:B

.field private m:Ljava/lang/Long;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cu$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cy;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/flurry/sdk/df;->b:J

    .line 15
    iput-wide v0, p0, Lcom/flurry/sdk/df;->c:J

    .line 16
    iput-wide v0, p0, Lcom/flurry/sdk/df;->d:J

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/flurry/sdk/df;->h:I

    .line 25
    iput v0, p0, Lcom/flurry/sdk/df;->k:I

    .line 26
    iput-byte v0, p0, Lcom/flurry/sdk/df;->l:B

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/flurry/sdk/df;->p:Z

    .line 33
    iput v0, p0, Lcom/flurry/sdk/df;->q:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/flurry/sdk/df;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(B)V
    .locals 0

    .line 125
    iput-byte p1, p0, Lcom/flurry/sdk/df;->l:B

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/flurry/sdk/df;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/flurry/sdk/df;->b:J

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/flurry/sdk/df;->j:Landroid/location/Location;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/flurry/sdk/df;->m:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/flurry/sdk/df;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cy;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/df;->o:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cu$a;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/flurry/sdk/df;->n:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/flurry/sdk/df;->p:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/flurry/sdk/df;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/flurry/sdk/df;->k:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/flurry/sdk/df;->c:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/flurry/sdk/df;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cx;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/flurry/sdk/df;->r:Ljava/util/List;

    return-void
.end method

.method public c()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/flurry/sdk/df;->c:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/flurry/sdk/df;->q:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/flurry/sdk/df;->d:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/flurry/sdk/df;->g:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/flurry/sdk/df;->d:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/flurry/sdk/df;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/df;->e:Ljava/util/Map;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/df;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/df;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/flurry/sdk/df;->h:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/df;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/location/Location;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/df;->j:Landroid/location/Location;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/flurry/sdk/df;->k:I

    return v0
.end method

.method public l()B
    .locals 1

    .line 129
    iget-byte v0, p0, Lcom/flurry/sdk/df;->l:B

    return v0
.end method

.method public m()Ljava/lang/Long;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/flurry/sdk/df;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/cu$a;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/df;->n:Ljava/util/Map;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cy;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/df;->o:Ljava/util/List;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/flurry/sdk/df;->p:Z

    return v0
.end method

.method public q()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/flurry/sdk/df;->q:I

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/cx;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/df;->r:Ljava/util/List;

    return-object v0
.end method
