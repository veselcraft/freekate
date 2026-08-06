.class public Lcom/inmobi/signals/p$a;
.super Ljava/lang/Object;
.source "SignalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/p$a;->a:Z

    .line 278
    const-string v0, "http://dock.inmobi.com/carb/v1/i"

    iput-object v0, p0, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 279
    const-string v0, "http://dock.inmobi.com/carb/v1/o"

    iput-object v0, p0, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 280
    const v0, 0x15180

    iput v0, p0, Lcom/inmobi/signals/p$a;->d:I

    .line 281
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/signals/p$a;->e:I

    .line 282
    iput v1, p0, Lcom/inmobi/signals/p$a;->f:I

    .line 283
    iput v1, p0, Lcom/inmobi/signals/p$a;->g:I

    .line 284
    const-wide/32 v0, 0x4b000

    iput-wide v0, p0, Lcom/inmobi/signals/p$a;->h:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/p$a;I)I
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/inmobi/signals/p$a;->d:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/signals/p$a;J)J
    .locals 1

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/inmobi/signals/p$a;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/signals/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/signals/p$a;)Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/inmobi/signals/p$a;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/inmobi/signals/p$a;Z)Z
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/inmobi/signals/p$a;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/signals/p$a;I)I
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/inmobi/signals/p$a;->e:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/signals/p$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/signals/p$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/signals/p$a;I)I
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/inmobi/signals/p$a;->f:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/signals/p$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/signals/p$a;)I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/inmobi/signals/p$a;->d:I

    return v0
.end method

.method static synthetic d(Lcom/inmobi/signals/p$a;I)I
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/inmobi/signals/p$a;->g:I

    return p1
.end method

.method static synthetic e(Lcom/inmobi/signals/p$a;)I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/inmobi/signals/p$a;->e:I

    return v0
.end method

.method static synthetic f(Lcom/inmobi/signals/p$a;)I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/inmobi/signals/p$a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/inmobi/signals/p$a;)I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/inmobi/signals/p$a;->g:I

    return v0
.end method

.method static synthetic h(Lcom/inmobi/signals/p$a;)J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/inmobi/signals/p$a;->h:J

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/inmobi/signals/p$a;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/inmobi/signals/p$a;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/inmobi/signals/p$a;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/inmobi/signals/p$a;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/inmobi/signals/p$a;->g:I

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/inmobi/signals/p$a;->h:J

    return-wide v0
.end method
