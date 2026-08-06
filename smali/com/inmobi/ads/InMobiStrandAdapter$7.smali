.class Lcom/inmobi/ads/InMobiStrandAdapter$7;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->setOnClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic b:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$500(Lcom/inmobi/ads/InMobiStrandAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->a:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inmobi/ads/ad;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$7;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    .line 578
    invoke-static {v1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 577
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
