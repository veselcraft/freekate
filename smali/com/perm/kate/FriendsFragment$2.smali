.class Lcom/perm/kate/FriendsFragment$2;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v2}, Lcom/perm/kate/FriendsFragment;->access$000(Lcom/perm/kate/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/BaseActivity;

    const v3, 0x7f0704c9

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v2}, Lcom/perm/kate/FriendsFragment;->access$000(Lcom/perm/kate/FriendsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    .local v1, "y":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v1    # "y":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v0}, Lcom/perm/kate/FriendsFragment;->access$100(Lcom/perm/kate/FriendsFragment;JLjava/util/Set;)V

    goto :goto_0
.end method
