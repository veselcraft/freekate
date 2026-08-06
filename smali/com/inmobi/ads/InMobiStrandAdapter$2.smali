.class Lcom/inmobi/ads/InMobiStrandAdapter$2;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->smoothScrollToPosition(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:I

.field final synthetic c:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$2;->c:Lcom/inmobi/ads/InMobiStrandAdapter;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiStrandAdapter$2;->a:Landroid/widget/ListView;

    iput p3, p0, Lcom/inmobi/ads/InMobiStrandAdapter$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$2;->a:Landroid/widget/ListView;

    iget v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$2;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 733
    return-void
.end method
