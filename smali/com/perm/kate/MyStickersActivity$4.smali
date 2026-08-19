.class Lcom/perm/kate/MyStickersActivity$4;
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

    .line 106
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v0}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 110
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {p1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {p1}, Lcom/perm/kate/MyStickersActivity;->access$100(Lcom/perm/kate/MyStickersActivity;)Lcom/perm/kate/StickersAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity$4;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-static {p1}, Lcom/perm/kate/MyStickersActivity;->access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    return-void
.end method
