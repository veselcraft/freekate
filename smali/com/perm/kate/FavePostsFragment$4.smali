.class Lcom/perm/kate/FavePostsFragment$4;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$4;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 177
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-eqz p1, :cond_1

    .line 181
    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$4;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/FavePostsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
