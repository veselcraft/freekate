.class Lcom/inmobi/ads/InMobiStrandAdapter$6;
.super Landroid/database/DataSetObserver;
.source "InMobiStrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->initWithoutPlacer(Landroid/widget/Adapter;)V
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
    .line 187
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$6;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$6;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$6;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->notifyDataSetInvalidated()V

    .line 196
    return-void
.end method
