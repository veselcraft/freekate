.class Lcom/perm/kate/GroupsFragment$7;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupsFragment;->access$902(Lcom/perm/kate/GroupsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 199
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, v1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 200
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$1000(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v6}, Lcom/perm/kate/GroupsFragment;->access$1100(Lcom/perm/kate/GroupsFragment;)Z

    move-result v6

    iget-object v7, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v7}, Lcom/perm/kate/GroupsFragment;->access$1200(Lcom/perm/kate/GroupsFragment;)Z

    move-result v7

    iget-object v8, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v8}, Lcom/perm/kate/GroupsFragment;->access$1300(Lcom/perm/kate/GroupsFragment;)Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 201
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v1, v1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 202
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$7;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v0, v0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method
