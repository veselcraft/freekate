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

    .line 98
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 115
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 102
    check-cast p1, Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_0

    .line 104
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createGroup(Lcom/perm/kate/api/Group;)J

    .line 105
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 106
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p1, Lcom/perm/kate/api/Group;->gid:J

    iget-object v6, p1, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v7, p1, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    .line 107
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    const v0, 0x7f0f0566

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/NewGroupActivity$6;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
