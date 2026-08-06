.class Lcom/perm/kate/FollowersFragment$6;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FollowersFragment;->displayInterestingPages(Lcom/perm/kate/api/InterestingPages;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;

.field final synthetic val$ip:Lcom/perm/kate/api/InterestingPages;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$6;->this$0:Lcom/perm/kate/FollowersFragment;

    iput-object p2, p0, Lcom/perm/kate/FollowersFragment$6;->val$ip:Lcom/perm/kate/api/InterestingPages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/perm/kate/InterestingPagesAdapter;

    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$6;->val$ip:Lcom/perm/kate/api/InterestingPages;

    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$6;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v2}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/InterestingPagesAdapter;-><init>(Lcom/perm/kate/api/InterestingPages;Landroid/app/Activity;)V

    .line 179
    .local v0, "adapter":Lcom/perm/kate/InterestingPagesAdapter;
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$6;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$1000(Lcom/perm/kate/FollowersFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void
.end method
