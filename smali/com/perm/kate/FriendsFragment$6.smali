.class Lcom/perm/kate/FriendsFragment$6;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->displayData()V
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
    .line 279
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p1, v0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 282
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 284
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-boolean v5, v5, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget-object v6, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget v6, v6, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 285
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 286
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$6;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method
