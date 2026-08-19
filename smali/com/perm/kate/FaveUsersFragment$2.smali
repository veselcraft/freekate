.class Lcom/perm/kate/FaveUsersFragment$2;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/FaveUsersFragment;->access$102(Lcom/perm/kate/FaveUsersFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/perm/kate/db/DataHelper;->fetchFaveUsers(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/FaveUsersFragment;->access$202(Lcom/perm/kate/FaveUsersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 93
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 94
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
