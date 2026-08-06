.class Lcom/inmobi/ads/InMobiStrandAdapter$3;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/ap$c;


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
    .line 150
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$3;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$3;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$200(Lcom/inmobi/ads/InMobiStrandAdapter;Ljava/util/List;)V

    .line 154
    return-void
.end method
