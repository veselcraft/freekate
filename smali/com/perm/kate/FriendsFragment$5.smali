.class Lcom/perm/kate/FriendsFragment$5;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9

    .line 264
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p1, v0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 265
    iget-object v1, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-boolean v5, p1, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p1, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    iget-wide v7, p1, Lcom/perm/kate/FriendsFragment;->selected_city:J

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 268
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 269
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$5;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method
