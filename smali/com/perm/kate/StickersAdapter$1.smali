.class Lcom/perm/kate/StickersAdapter$1;
.super Ljava/lang/Object;
.source "StickersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StickersAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/StickersAdapter;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Product;

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-static {v0}, Lcom/perm/kate/StickersAdapter;->access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object p1, p0, Lcom/perm/kate/StickersAdapter$1;->this$0:Lcom/perm/kate/StickersAdapter;

    invoke-static {p1}, Lcom/perm/kate/StickersAdapter;->access$000(Lcom/perm/kate/StickersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
