.class Lcom/inmobi/ads/InMobiStrandAdapter$9;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->setOnItemSelectedListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final synthetic b:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 650
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$500(Lcom/inmobi/ads/InMobiStrandAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-virtual {v0, p3}, Lcom/inmobi/ads/InMobiStrandAdapter;->isStrand(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->b:Lcom/inmobi/ads/InMobiStrandAdapter;

    .line 654
    invoke-static {v1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$100(Lcom/inmobi/ads/InMobiStrandAdapter;)Lcom/inmobi/ads/ad;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/inmobi/ads/ad;->e(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 653
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$9;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 661
    return-void
.end method
