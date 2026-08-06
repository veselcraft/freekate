.class Lcom/perm/kate/StickersAdapter$1;
.super Ljava/lang/Object;
.source "StickersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StickersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StickersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/StickersAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StickersAdapter;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 103
    .local v0, "sticker":Lcom/perm/kate/api/Product;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-static {v1}, Lcom/perm/kate/StickersAdapter;->access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-virtual {v1}, Lcom/perm/kate/StickersAdapter;->notifyDataSetChanged()V

    .line 106
    iget-object v1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-static {v1}, Lcom/perm/kate/StickersAdapter;->access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    .line 108
    :cond_0
    return-void
.end method
