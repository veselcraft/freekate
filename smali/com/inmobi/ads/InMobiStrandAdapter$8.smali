.class Lcom/inmobi/ads/InMobiStrandAdapter$8;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->setOnItemLongClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemLongClickListener;

.field final synthetic b:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$500(Lcom/inmobi/ads/InMobiStrandAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0, p3}, Lcom/inmobi/ads/InMobiStrandAdapter;->isStrand(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$8;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    .line 618
    invoke-static {v1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 617
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
