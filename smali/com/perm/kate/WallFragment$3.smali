.class Lcom/perm/kate/WallFragment$3;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/perm/kate/WallFragment$3;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 308
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 309
    iget-object p3, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 310
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-boolean p1, p1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    const/4 p4, 0x1

    iget-object p5, p0, Lcom/perm/kate/WallFragment$3;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-static {p2, p3, p1, p4, p5}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/WallFragment$3;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/WallFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :goto_0
    return-void
.end method
