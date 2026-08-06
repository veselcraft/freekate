.class Lcom/my/target/nativeads/views/ContentStreamAdView$1;
.super Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;
.source "ContentStreamAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/nativeads/views/ContentStreamAdView;->createPromoCardAdapter(Ljava/util/List;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/views/ContentStreamAdView;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/views/ContentStreamAdView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/my/target/nativeads/views/ContentStreamAdView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamAdView;

    invoke-direct {p0, p2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentStreamAdView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/ContentStreamAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentStreamCardView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamCardView;

    move-result-object v0

    return-object v0
.end method
