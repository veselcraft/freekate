.class Lcom/inmobi/ads/n$c;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/n;

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


# direct methods
.method constructor <init>(Lcom/inmobi/ads/n;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/n$c;->b:Ljava/util/ArrayList;

    .line 218
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-static {v0}, Lcom/inmobi/ads/n;->b(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n$b;

    .line 226
    iget-wide v4, v0, Lcom/inmobi/ads/n$b;->d:J

    iget v3, v0, Lcom/inmobi/ads/n$b;->c:I

    invoke-static {v4, v5, v3}, Lcom/inmobi/ads/n;->a(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-static {v3}, Lcom/inmobi/ads/n;->c(Lcom/inmobi/ads/n;)Lcom/inmobi/ads/n$a;

    move-result-object v3

    iget-object v0, v0, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    invoke-interface {v3, v1, v0}, Lcom/inmobi/ads/n$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 235
    iget-object v2, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-static {v0}, Lcom/inmobi/ads/n;->b(Lcom/inmobi/ads/n;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/inmobi/ads/n$c;->a:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->f()V

    .line 241
    :cond_3
    return-void
.end method
