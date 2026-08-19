.class public final Lcom/my/target/i;
.super Lcom/my/target/b;
.source "InstreamAudioAdFactory.java"


# instance fields
.field private final i:Ljava/util/List;

.field private final j:Lcom/my/target/is;

.field private k:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/my/target/a;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/i;-><init>(Ljava/util/List;Lcom/my/target/a;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/my/target/a;I)V
    .locals 2

    .line 56
    new-instance v0, Lcom/my/target/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/my/target/i$a;-><init>(Lcom/my/target/i$1;)V

    invoke-direct {p0, v0, p2}, Lcom/my/target/b;-><init>(Lcom/my/target/b$a;Lcom/my/target/a;)V

    .line 57
    iput-object p1, p0, Lcom/my/target/i;->i:Ljava/util/List;

    mul-int/lit16 p3, p3, 0x3e8

    .line 58
    invoke-static {p3}, Lcom/my/target/is;->N(I)Lcom/my/target/is;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/i;->j:Lcom/my/target/is;

    return-void
.end method

.method public static a(Lcom/my/target/a;I)Lcom/my/target/b;
    .locals 1

    .line 26
    new-instance v0, Lcom/my/target/i;

    invoke-direct {v0, p0, p1}, Lcom/my/target/i;-><init>(Lcom/my/target/a;I)V

    return-object v0
.end method

.method public static a(Lcom/my/target/bz;Lcom/my/target/a;I)Lcom/my/target/b;
    .locals 1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance p0, Lcom/my/target/i;

    invoke-direct {p0, v0, p1, p2}, Lcom/my/target/i;-><init>(Ljava/util/List;Lcom/my/target/a;I)V

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/my/target/a;I)Lcom/my/target/b;
    .locals 1

    .line 42
    new-instance v0, Lcom/my/target/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/i;-><init>(Ljava/util/List;Lcom/my/target/a;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/i;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/my/target/i;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/my/target/i;)Lcom/my/target/is;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/my/target/i;->j:Lcom/my/target/is;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/my/target/b;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/my/target/i;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/my/target/i$1;

    invoke-direct {v0, p0}, Lcom/my/target/i$1;-><init>(Lcom/my/target/i;)V

    iput-object v0, p0, Lcom/my/target/i;->k:Ljava/lang/Runnable;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/my/target/i;->j:Lcom/my/target/is;

    iget-object v1, p0, Lcom/my/target/i;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/my/target/is;->d(Ljava/lang/Runnable;)V

    .line 77
    invoke-super {p0, p1}, Lcom/my/target/b;->a(Landroid/content/Context;)Lcom/my/target/b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Landroid/content/Context;)Lcom/my/target/cv;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/my/target/i;->d(Landroid/content/Context;)Lcom/my/target/cx;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;)Lcom/my/target/cx;
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/my/target/i;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/my/target/dk;->cD()Lcom/my/target/dk;

    move-result-object v5

    .line 86
    iget-object v2, p0, Lcom/my/target/i;->i:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    invoke-interface {v0}, Lcom/my/target/b$a;->b()Lcom/my/target/c;

    move-result-object v4

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/b;->a(Ljava/util/List;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v0

    check-cast v0, Lcom/my/target/cx;

    .line 87
    invoke-virtual {p0, v0, p1}, Lcom/my/target/b;->a(Lcom/my/target/cv;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object p1

    check-cast p1, Lcom/my/target/cx;

    return-object p1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/my/target/b;->b(Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object p1

    check-cast p1, Lcom/my/target/cx;

    return-object p1
.end method
