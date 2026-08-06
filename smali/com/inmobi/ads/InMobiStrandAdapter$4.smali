.class Lcom/inmobi/ads/InMobiStrandAdapter$4;
.super Landroid/database/DataSetObserver;
.source "InMobiStrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->initWithPlacer(Landroid/content/Context;JLandroid/widget/Adapter;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$4;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$4;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$4;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$000(Lcom/inmobi/ads/InMobiStrandAdapter;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ad;->c(I)V

    .line 162
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$4;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$4;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetInvalidated()V

    .line 168
    return-void
.end method
