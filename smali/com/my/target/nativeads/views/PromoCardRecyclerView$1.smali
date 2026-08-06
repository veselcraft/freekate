.class Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;
.super Ljava/lang/Object;
.source "PromoCardRecyclerView.java"

# interfaces
.implements Lcom/my/target/core/net/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/nativeads/views/PromoCardRecyclerView;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "images loaded to cards"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$000(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$000(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->notifyDataSetChanged()V

    .line 111
    :cond_0
    return-void
.end method
