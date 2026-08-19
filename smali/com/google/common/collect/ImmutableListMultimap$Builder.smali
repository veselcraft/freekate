.class public final Lcom/google/common/collect/ImmutableListMultimap$Builder;
.super Lcom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->build()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 174
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
