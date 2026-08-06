.class Lcom/inmobi/ads/ap$b;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ap;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ap;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ap$b;->c:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ap$b;->b:Ljava/util/ArrayList;

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/ap;->a(Lcom/inmobi/ads/ap;Z)Z

    .line 288
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-static {v0}, Lcom/inmobi/ads/ap;->a(Lcom/inmobi/ads/ap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ap$d;

    iget v4, v2, Lcom/inmobi/ads/ap$d;->a:I

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ap$d;

    iget-object v2, v2, Lcom/inmobi/ads/ap$d;->c:Landroid/view/View;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ap$d;

    iget-object v0, v0, Lcom/inmobi/ads/ap$d;->d:Ljava/lang/Object;

    .line 294
    iget-object v5, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-static {v5}, Lcom/inmobi/ads/ap;->b(Lcom/inmobi/ads/ap;)Lcom/inmobi/ads/ap$a;

    move-result-object v5

    invoke-interface {v5, v2, v1, v4, v0}, Lcom/inmobi/ads/ap$a;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-static {v0}, Lcom/inmobi/ads/ap;->c(Lcom/inmobi/ads/ap;)Lcom/inmobi/ads/ap$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-static {v0}, Lcom/inmobi/ads/ap;->c(Lcom/inmobi/ads/ap;)Lcom/inmobi/ads/ap$c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ap$b;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/inmobi/ads/ap$b;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/ap$c;->a(Ljava/util/List;Ljava/util/List;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v0, p0, Lcom/inmobi/ads/ap$b;->a:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->b()V

    .line 310
    return-void
.end method
