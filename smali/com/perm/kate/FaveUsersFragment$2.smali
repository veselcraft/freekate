.class Lcom/perm/kate/FaveUsersFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FaveUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveUsersFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->showProgressBar(Z)V

    .line 88
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 77
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveUsersFragment;->access$100(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteFaveUsers(J)Z

    .line 79
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveUsersFragment;->access$100(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFaveUsers(Ljava/util/ArrayList;J)V

    .line 80
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FaveUsersFragment;->showProgressBar(Z)V

    .line 81
    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$2;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)V

    .line 82
    return-void
.end method
