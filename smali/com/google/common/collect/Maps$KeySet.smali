.class abstract Lcom/google/common/collect/Maps$KeySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# instance fields
.field final map:Ljava/util/Map;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 3516
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    .line 3517
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3541
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 3536
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method map()Ljava/util/Map;
    .locals 1

    .line 3521
    iget-object v0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 3531
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
