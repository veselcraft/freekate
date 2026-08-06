.class Lcom/perm/kate/FollowersFragment$7;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FollowersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "user_id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 195
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    .local v0, "item_id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v3, v2}, Lcom/perm/kate/FollowersFragment;->ShowProfile(Ljava/lang/String;)V

    .line 201
    .end local v0    # "item_id":J
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v0    # "item_id":J
    :cond_1
    neg-long v4, v0

    iget-object v3, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0
.end method
