.class Lcom/inmobi/ads/y$2;
.super Ljava/lang/Object;
.source "NativeStrandDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/y;->a(ILandroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/inmobi/ads/v;

.field final synthetic e:Lcom/inmobi/ads/y;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/y;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/inmobi/ads/y$2;->e:Lcom/inmobi/ads/y;

    iput p2, p0, Lcom/inmobi/ads/y$2;->a:I

    iput-object p3, p0, Lcom/inmobi/ads/y$2;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/inmobi/ads/y$2;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/inmobi/ads/y$2;->d:Lcom/inmobi/ads/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/y$2;->e:Lcom/inmobi/ads/y;

    invoke-static {v0}, Lcom/inmobi/ads/y;->b(Lcom/inmobi/ads/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/y$2;->e:Lcom/inmobi/ads/y;

    invoke-static {v0}, Lcom/inmobi/ads/y;->c(Lcom/inmobi/ads/y;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/y$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/inmobi/ads/y$2;->e:Lcom/inmobi/ads/y;

    invoke-static {v0}, Lcom/inmobi/ads/y;->a(Lcom/inmobi/ads/y;)Lcom/inmobi/ads/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/y$2;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/inmobi/ads/y$2;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/ads/y$2;->d:Lcom/inmobi/ads/v;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ac;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;

    goto :goto_0
.end method
