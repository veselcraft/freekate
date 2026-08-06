.class Lcom/inmobi/ads/n$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Lcom/inmobi/ads/ap$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/n;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/ap;Landroid/os/Handler;Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/n;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/n;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-static {v1}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/n$b;

    .line 100
    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-static {v2}, Lcom/inmobi/ads/n;->b(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/n$b;

    .line 107
    if-eqz v2, :cond_2

    iget-object v4, v1, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    iget-object v2, v2, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Lcom/inmobi/ads/n$b;->a()V

    .line 113
    iget-object v2, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-static {v2}, Lcom/inmobi/ads/n;->b(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-static {v2}, Lcom/inmobi/ads/n;->b(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/n$1;->a:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->f()V

    .line 120
    return-void
.end method
