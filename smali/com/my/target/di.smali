.class public Lcom/my/target/di;
.super Ljava/lang/Object;
.source "StatHolder.java"


# instance fields
.field private final ed:Ljava/util/Set;

.field private final ee:Ljava/util/Set;

.field private final ef:Ljava/util/ArrayList;

.field private final eg:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/di;->ed:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/di;->eg:Ljava/util/ArrayList;

    return-void
.end method

.method public static cw()Lcom/my/target/di;
    .locals 1

    .line 16
    new-instance v0, Lcom/my/target/di;

    invoke-direct {v0}, Lcom/my/target/di;-><init>()V

    return-object v0
.end method


# virtual methods
.method public N(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/my/target/di;->ed:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/dh;

    .line 88
    invoke-virtual {v2}, Lcom/my/target/dh;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Lcom/my/target/di;F)V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/my/target/di;->ed:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/my/target/di;->cA()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p0, Lcom/my/target/di;->eg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/my/target/di;->cy()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    .line 116
    iget-object p2, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/my/target/di;->cz()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object p2, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/my/target/di;->cx()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/di;->cz()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/dg;

    .line 123
    invoke-virtual {v2}, Lcom/my/target/dg;->cv()F

    move-result v5

    cmpl-float v6, v5, v0

    if-ltz v6, :cond_1

    mul-float v5, v5, p2

    div-float/2addr v5, v4

    .line 126
    invoke-virtual {v2, v5}, Lcom/my/target/dg;->h(F)V

    .line 127
    invoke-virtual {v2, v3}, Lcom/my/target/dg;->i(F)V

    .line 129
    :cond_1
    invoke-virtual {p0, v2}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/my/target/di;->cx()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/df;

    .line 134
    invoke-virtual {v1}, Lcom/my/target/dj;->cv()F

    move-result v2

    cmpl-float v5, v2, v0

    if-ltz v5, :cond_3

    mul-float v2, v2, p2

    div-float/2addr v2, v4

    .line 137
    invoke-virtual {v1, v2}, Lcom/my/target/dj;->h(F)V

    .line 138
    invoke-virtual {v1, v3}, Lcom/my/target/dj;->i(F)V

    .line 140
    :cond_3
    invoke-virtual {p0, v1}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    new-instance v0, Lcom/my/target/di$1;

    invoke-direct {v0, p0}, Lcom/my/target/di$1;-><init>(Lcom/my/target/di;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public b(Lcom/my/target/dh;)V
    .locals 3

    .line 31
    instance-of v0, p1, Lcom/my/target/dg;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    check-cast p1, Lcom/my/target/dg;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/my/target/df;

    if-eqz v0, :cond_3

    .line 37
    check-cast p1, Lcom/my/target/df;

    .line 38
    iget-object v0, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    .line 46
    iget-object v1, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/df;

    invoke-virtual {v1}, Lcom/my/target/dj;->cu()F

    move-result v1

    invoke-virtual {p1}, Lcom/my/target/dj;->cu()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 53
    :cond_3
    instance-of v0, p1, Lcom/my/target/de;

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/my/target/di;->eg:Ljava/util/ArrayList;

    check-cast p1, Lcom/my/target/de;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/my/target/di;->ed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public cA()Ljava/util/Set;
    .locals 2

    .line 80
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/my/target/di;->ed:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public cx()Ljava/util/ArrayList;
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/di;->ef:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public cy()Ljava/util/ArrayList;
    .locals 2

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/di;->eg:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public cz()Ljava/util/Set;
    .locals 2

    .line 75
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/dh;

    .line 149
    invoke-virtual {p0, v0}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/my/target/di;->ee:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
