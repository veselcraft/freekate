.class Lcom/perm/kate/FriendsFragment$19;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->diplayFriendsList(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$all:Z

.field final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/FriendsFragment$19;->val$all:Z

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment$19;->val$friends:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 734
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p1, v1, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 735
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 736
    iget-boolean v1, p0, Lcom/perm/kate/FriendsFragment$19;->val$all:Z

    if-eqz v1, :cond_0

    .line 737
    iget-object v8, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-boolean v5, v5, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget-object v6, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget v6, v6, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v8, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 750
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 751
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    return-object v1

    .line 739
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v0, "filtred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->val$friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/User;

    .line 743
    .local v7, "u":Lcom/perm/kate/api/User;
    iget-object v2, v7, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v7, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 744
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v7, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    .line 745
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    :cond_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 748
    .end local v7    # "u":Lcom/perm/kate/api/User;
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    new-instance v2, Lcom/perm/kate/UserCursor;

    invoke-direct {v2, v0}, Lcom/perm/kate/UserCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, v1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    goto :goto_0
.end method
