.class Lcom/perm/kate/FavePostsFragment$4;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePostsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$4;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 163
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$4;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/FavePostsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    .line 165
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
