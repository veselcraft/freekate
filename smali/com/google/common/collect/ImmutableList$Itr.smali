.class Lcom/google/common/collect/ImmutableList$Itr;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Itr"
.end annotation


# instance fields
.field private final list:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .locals 1

    .line 379
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 380
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$Itr;->list:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Itr;->list:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
