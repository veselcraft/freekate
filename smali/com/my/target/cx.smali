.class public Lcom/my/target/cx;
.super Lcom/my/target/cv;
.source "InstreamAudioAdSection.java"


# instance fields
.field private final dH:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/my/target/cv;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/cx;->dH:Ljava/util/HashMap;

    const-string v1, "preroll"

    .line 30
    invoke-static {v1}, Lcom/my/target/da;->A(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pauseroll"

    .line 31
    invoke-static {v1}, Lcom/my/target/da;->A(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "midroll"

    .line 32
    invoke-static {v1}, Lcom/my/target/da;->A(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postroll"

    .line 33
    invoke-static {v1}, Lcom/my/target/da;->A(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bQ()Lcom/my/target/cx;
    .locals 1

    .line 23
    new-instance v0, Lcom/my/target/cx;

    invoke-direct {v0}, Lcom/my/target/cx;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bP()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/my/target/cx;->dH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/da;

    .line 61
    invoke-virtual {v1}, Lcom/my/target/da;->getBannersCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v1}, Lcom/my/target/da;->cd()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bR()Ljava/util/ArrayList;
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/cx;->dH:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBannersCount()I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/my/target/cx;->dH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/da;

    .line 52
    invoke-virtual {v2}, Lcom/my/target/da;->getBannersCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public y(Ljava/lang/String;)Lcom/my/target/da;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/my/target/cx;->dH:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/my/target/da;

    return-object p1
.end method
