.class public Lcom/my/target/da;
.super Lcom/my/target/cv;
.source "MediaSection.java"


# instance fields
.field private final banners:Ljava/util/ArrayList;

.field private final dL:Ljava/util/ArrayList;

.field private final dM:Ljava/util/ArrayList;

.field private final dN:Ljava/util/ArrayList;

.field private dO:I

.field private dP:I

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/my/target/cv;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/da;->dN:Ljava/util/ArrayList;

    const/16 v0, 0xa

    .line 50
    iput v0, p0, Lcom/my/target/da;->dO:I

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/my/target/da;->dP:I

    .line 55
    iput-object p1, p0, Lcom/my/target/da;->name:Ljava/lang/String;

    return-void
.end method

.method public static A(Ljava/lang/String;)Lcom/my/target/da;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/my/target/da;->B(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object p0

    return-object p0
.end method

.method private static B(Ljava/lang/String;)Lcom/my/target/da;
    .locals 1

    .line 39
    new-instance v0, Lcom/my/target/da;

    invoke-direct {v0, p0}, Lcom/my/target/da;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/my/target/co;I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p2, :cond_2

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/my/target/da;->dN:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/bz;

    .line 100
    invoke-virtual {v0}, Lcom/my/target/bz;->getPosition()I

    move-result v1

    if-lt v1, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/my/target/bz;->setPosition(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/my/target/da;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v0, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {p1}, Lcom/my/target/cv;->bf()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/my/target/cv;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bX()Ljava/util/List;
    .locals 2

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bY()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/my/target/da;->dO:I

    return v0
.end method

.method public bZ()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/my/target/da;->dP:I

    return v0
.end method

.method public c(Lcom/my/target/bz;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Lcom/my/target/bz;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/bz;->aZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/my/target/da;->dN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public ca()Ljava/util/ArrayList;
    .locals 2

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public cb()Lcom/my/target/bz;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/bz;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cc()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/my/target/da;->dN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public cd()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/da;->dL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(F)Ljava/util/ArrayList;
    .locals 4

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/bz;

    .line 138
    invoke-virtual {v2}, Lcom/my/target/bz;->getPoint()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/my/target/da;->dM:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public g(Lcom/my/target/co;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBannersCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/my/target/da;->banners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/my/target/da;->name:Ljava/lang/String;

    return-object v0
.end method

.method public u(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/my/target/da;->dO:I

    return-void
.end method

.method public v(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/my/target/da;->dP:I

    return-void
.end method
