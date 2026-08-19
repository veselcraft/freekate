.class Lcom/perm/kate/FaveUsersFragment$13;
.super Lcom/perm/kate/session/Callback;
.source "FaveUsersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;Landroid/app/Activity;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 301
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 302
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FaveUsersFragment;->access$902(Lcom/perm/kate/FaveUsersFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 290
    check-cast p1, Ljava/util/ArrayList;

    .line 291
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createFaveUsers(Ljava/util/ArrayList;J)V

    .line 292
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 293
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$600(Lcom/perm/kate/FaveUsersFragment;)V

    .line 294
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->access$712(Lcom/perm/kate/FaveUsersFragment;I)I

    .line 295
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$13;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/FaveUsersFragment;->access$800(Lcom/perm/kate/FaveUsersFragment;I)V

    return-void
.end method
