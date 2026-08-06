.class Lcom/perm/kate/MessageThreadFragment$31;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1616
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 1617
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 1620
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v3}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 1621
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/MessageThreadFragment$31$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/MessageThreadFragment$31$1;-><init>(Lcom/perm/kate/MessageThreadFragment$31;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
