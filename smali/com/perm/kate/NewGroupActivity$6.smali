.class Lcom/perm/kate/NewGroupActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "NewGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewGroupActivity;->showProgressBar(Z)V

    .line 115
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/perm/kate/NewGroupActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/perm/kate/api/Group;

    .line 103
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 104
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createGroup(Lcom/perm/kate/api/Group;)J

    .line 105
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 106
    .local v2, "owner_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v0, Lcom/perm/kate/api/Group;->gid:J

    iget-object v6, v0, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    .line 107
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const v4, 0x7f0704e3

    invoke-virtual {v1, v4}, Lcom/perm/kate/NewGroupActivity;->displayToast(I)V

    .line 108
    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual {v1}, Lcom/perm/kate/NewGroupActivity;->finish()V

    .line 110
    .end local v2    # "owner_id":J
    :cond_0
    return-void
.end method
