.class Lcom/inmobi/ads/ac$2;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ac;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/v;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandAsset;

.field final synthetic b:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    iput-object p2, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/NativeStrandAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/NativeStrandAsset;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/ac$a;->a(Lcom/inmobi/ads/NativeStrandAsset;)V

    .line 166
    :cond_0
    return-void
.end method
