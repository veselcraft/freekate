.class Lcom/inmobi/ads/v$a;
.super Ljava/lang/Object;
.source "NativeStrandContainerAsset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/inmobi/ads/NativeStrandAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/v;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/v;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/inmobi/ads/v$a;->a:Lcom/inmobi/ads/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/v$a;->b:I

    .line 90
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/NativeStrandAsset;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/v$a;->a:Lcom/inmobi/ads/v;

    invoke-static {v0}, Lcom/inmobi/ads/v;->b(Lcom/inmobi/ads/v;)[Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/v$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/ads/v$a;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/inmobi/ads/v$a;->b:I

    iget-object v1, p0, Lcom/inmobi/ads/v$a;->a:Lcom/inmobi/ads/v;

    invoke-static {v1}, Lcom/inmobi/ads/v;->a(Lcom/inmobi/ads/v;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/inmobi/ads/v$a;->a()Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
