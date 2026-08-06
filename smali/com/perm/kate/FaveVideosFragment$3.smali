.class Lcom/perm/kate/FaveVideosFragment$3;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FaveVideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/lang/Object;

    .line 89
    .local v11, "tags":[Ljava/lang/Object;
    const/4 v0, 0x0

    aget-object v0, v11, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 90
    .local v2, "vid":J
    const/4 v0, 0x1

    aget-object v0, v11, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 91
    .local v4, "oid":J
    const/4 v0, 0x4

    aget-object v8, v11, v0

    check-cast v8, Ljava/lang/Boolean;

    .line 92
    .local v8, "user_likes":Ljava/lang/Boolean;
    new-instance v0, Lcom/perm/kate/VideoMenu;

    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FaveVideosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v7}, Lcom/perm/kate/FaveVideosFragment;->access$300(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/VideoMenuCallback;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V

    .line 93
    return-void
.end method
