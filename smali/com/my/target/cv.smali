.class public abstract Lcom/my/target/cv;
.super Ljava/lang/Object;
.source "AdSection.java"


# instance fields
.field private final cK:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/cv;->cK:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bf()Ljava/util/ArrayList;
    .locals 2

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/cv;->cK:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/my/target/cv;->cK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public abstract getBannersCount()I
.end method

.method public w(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/my/target/cv;->cK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/dh;

    .line 40
    invoke-virtual {v2}, Lcom/my/target/dh;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
