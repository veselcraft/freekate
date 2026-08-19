.class final Lcom/google/common/collect/MultimapBuilder$3;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.source "MultimapBuilder.java"


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method createMap()Ljava/util/Map;
    .locals 2

    .line 159
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$3;->val$comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
