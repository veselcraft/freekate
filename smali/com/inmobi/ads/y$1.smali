.class Lcom/inmobi/ads/y$1;
.super Ljava/lang/Object;
.source "NativeStrandDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/y;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/inmobi/ads/y;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/y;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/inmobi/ads/y$1;->b:Lcom/inmobi/ads/y;

    iput-object p2, p0, Lcom/inmobi/ads/y$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/ads/y$1;->b:Lcom/inmobi/ads/y;

    invoke-static {v0}, Lcom/inmobi/ads/y;->a(Lcom/inmobi/ads/y;)Lcom/inmobi/ads/ac;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/ads/y$1;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ac;->a(Landroid/view/View;)V

    .line 116
    return-void
.end method
