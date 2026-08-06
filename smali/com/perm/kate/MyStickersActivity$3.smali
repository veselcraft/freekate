.class Lcom/perm/kate/MyStickersActivity$3;
.super Ljava/lang/Object;
.source "MyStickersActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MyStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MyStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MyStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MyStickersActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 92
    .local v0, "p":Lcom/perm/kate/api/Product;
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$100(Lcom/perm/kate/MyStickersActivity;)Lcom/perm/kate/StickersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/StickersAdapter;->notifyDataSetChanged()V

    .line 95
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$3;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
