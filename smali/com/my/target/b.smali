.class public abstract Lcom/my/target/b;
.super Ljava/lang/Object;
.source "AdFactory.java"


# instance fields
.field protected final adConfig:Lcom/my/target/a;

.field protected final b:Lcom/my/target/b$a;

.field protected c:Ljava/lang/String;

.field private d:Lcom/my/target/b$b;


# direct methods
.method public constructor <init>(Lcom/my/target/b$a;Lcom/my/target/a;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    .line 36
    iput-object p2, p0, Lcom/my/target/b;->adConfig:Lcom/my/target/a;

    return-void
.end method

.method static synthetic a(Lcom/my/target/b;)Lcom/my/target/b$b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    return-object p0
.end method

.method static synthetic a(Lcom/my/target/b;Lcom/my/target/b$b;)Lcom/my/target/b$b;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/my/target/b;
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/my/target/b$1;

    invoke-direct {v0, p0, p1}, Lcom/my/target/b$1;-><init>(Lcom/my/target/b;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/my/target/ai;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final a(Lcom/my/target/b$b;)Lcom/my/target/b;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    return-object p0
.end method

.method protected a(Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;
    .locals 12

    move-object v6, p1

    move-object/from16 v7, p5

    .line 133
    invoke-virtual {p1}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p4

    invoke-virtual {v8, v0, v7}, Lcom/my/target/dn;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 134
    invoke-virtual/range {p4 .. p4}, Lcom/my/target/dn;->cH()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "serviceRequested"

    .line 139
    invoke-virtual {p1, v0}, Lcom/my/target/bz;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/my/target/cv;->getBannersCount()I

    move-result v0

    move v10, v0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 148
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/my/target/dn;->cI()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v11, p0

    if-eqz v1, :cond_2

    .line 151
    iget-object v4, v11, Lcom/my/target/b;->adConfig:Lcom/my/target/a;

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/c;->a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/my/target/bz;->be()Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/b;->a(Ljava/util/List;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {v2}, Lcom/my/target/cv;->getBannersCount()I

    move-result v9

    :cond_3
    if-ne v10, v9, :cond_4

    const-string v0, "serviceAnswerEmpty"

    .line 162
    invoke-virtual {p1, v0}, Lcom/my/target/bz;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 163
    invoke-virtual {p1}, Lcom/my/target/bz;->bc()Lcom/my/target/bz;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v0, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/my/target/b;->a(Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method protected a(Lcom/my/target/cv;Landroid/content/Context;)Lcom/my/target/cv;
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    invoke-interface {v0}, Lcom/my/target/b$a;->c()Lcom/my/target/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/my/target/b;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0, p1, v1, p2}, Lcom/my/target/d;->a(Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected a(Ljava/util/List;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;
    .locals 6

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/my/target/bz;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/my/target/b;->a(Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :cond_1
    return-object p2
.end method

.method protected a(Lcom/my/target/bz;Lcom/my/target/dk;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p1}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/my/target/dn;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p2}, Lcom/my/target/dn;->cH()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/my/target/dn;->cI()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/my/target/dn;->aL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcom/my/target/cv;Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    invoke-interface {v0, p1, p2}, Lcom/my/target/b$b;->onResult(Lcom/my/target/cv;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/my/target/b;->d:Lcom/my/target/b$b;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/my/target/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/b$2;-><init>(Lcom/my/target/b;Lcom/my/target/cv;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/my/target/ai;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/content/Context;)Lcom/my/target/cv;
    .locals 10

    .line 64
    invoke-static {p1}, Lcom/my/target/in;->N(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    invoke-interface {v0}, Lcom/my/target/b$a;->d()Lcom/my/target/e;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/my/target/b;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0, v1, p1}, Lcom/my/target/e;->a(Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/bz;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/my/target/dk;->cD()Lcom/my/target/dk;

    move-result-object v8

    .line 68
    invoke-virtual {p0, v0, v8, p1}, Lcom/my/target/b;->a(Lcom/my/target/bz;Lcom/my/target/dk;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    invoke-interface {v1}, Lcom/my/target/b$a;->b()Lcom/my/target/c;

    move-result-object v9

    const/4 v5, 0x0

    .line 74
    iget-object v6, p0, Lcom/my/target/b;->adConfig:Lcom/my/target/a;

    move-object v2, v9

    move-object v4, v0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/my/target/c;->a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v3

    .line 75
    iget-object v1, p0, Lcom/my/target/b;->b:Lcom/my/target/b$a;

    invoke-interface {v1}, Lcom/my/target/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/my/target/bz;->be()Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, p0

    move-object v4, v9

    move-object v5, v8

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/b;->a(Ljava/util/List;Lcom/my/target/cv;Lcom/my/target/c;Lcom/my/target/dk;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object v3

    .line 79
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/my/target/b;->a(Lcom/my/target/cv;Landroid/content/Context;)Lcom/my/target/cv;

    move-result-object p1

    return-object p1
.end method
