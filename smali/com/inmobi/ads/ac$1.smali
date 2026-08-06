.class Lcom/inmobi/ads/ac$1;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ag;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/inmobi/ads/ac$1;->c:Lcom/inmobi/ads/ac;

    iput-object p2, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ag;

    iput-object p3, p0, Lcom/inmobi/ads/ac$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->c:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->c:Lcom/inmobi/ads/ac;

    iget-object v1, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ag;

    iget-object v2, p0, Lcom/inmobi/ads/ac$1;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/ads/ac$1;->c:Lcom/inmobi/ads/ac;

    invoke-static {v3}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ac;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;

    .line 105
    :cond_0
    return-void
.end method
