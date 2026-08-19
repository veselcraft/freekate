.class Lcom/perm/kate/FavePostsFragment$3;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 166
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 167
    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    iget-object p5, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-static {p2, p1, p3, p4, p5}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/FavePostsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :goto_0
    return-void
.end method
