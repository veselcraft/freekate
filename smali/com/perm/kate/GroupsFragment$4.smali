.class Lcom/perm/kate/GroupsFragment$4;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 10

    .line 190
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupsFragment;->access$702(Lcom/perm/kate/GroupsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, v0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 192
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0}, Lcom/perm/kate/GroupsFragment;->access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$800(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$900(Lcom/perm/kate/GroupsFragment;)Z

    move-result v6

    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1000(Lcom/perm/kate/GroupsFragment;)Z

    move-result v7

    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1100(Lcom/perm/kate/GroupsFragment;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZLjava/lang/Long;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 193
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v0, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 194
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$4;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method
