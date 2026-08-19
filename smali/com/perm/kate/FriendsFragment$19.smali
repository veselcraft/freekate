.class Lcom/perm/kate/FriendsFragment$19;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$all:Z

.field final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;ZLjava/util/ArrayList;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/FriendsFragment$19;->val$all:Z

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment$19;->val$friends:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9

    .line 770
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p1, v0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 771
    iget-object v1, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 772
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment$19;->val$all:Z

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-boolean v5, p1, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p1, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    iget-wide v7, p1, Lcom/perm/kate/FriendsFragment;->selected_city:J

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    goto :goto_1

    .line 775
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$19;->val$friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 779
    iget-object v3, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 780
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 781
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 784
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    new-instance v1, Lcom/perm/kate/UserCursor;

    invoke-direct {v1, v0}, Lcom/perm/kate/UserCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 786
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 787
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$19;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method
