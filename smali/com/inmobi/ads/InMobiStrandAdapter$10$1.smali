.class Lcom/inmobi/ads/InMobiStrandAdapter$10$1;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter$10;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiStrandAdapter$10;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter$10;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10$1;->a:Lcom/inmobi/ads/InMobiStrandAdapter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10$1;->a:Lcom/inmobi/ads/InMobiStrandAdapter$10;

    iget-object v0, v0, Lcom/inmobi/ads/InMobiStrandAdapter$10;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10$1;->a:Lcom/inmobi/ads/InMobiStrandAdapter$10;

    iget v1, v1, Lcom/inmobi/ads/InMobiStrandAdapter$10;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 718
    return-void
.end method
