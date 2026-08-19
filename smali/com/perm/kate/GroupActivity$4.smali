.class Lcom/perm/kate/GroupActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 470
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 445
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 446
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 447
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 450
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$300(Lcom/perm/kate/GroupActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 454
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v3}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    .line 455
    :cond_1
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 456
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/perm/kate/GroupActivity;->access$602(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 457
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/perm/kate/GroupActivity;->access$702(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 458
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->status_audio:Lcom/perm/kate/api/Audio;

    invoke-static {v2, v3}, Lcom/perm/kate/GroupActivity;->access$802(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 459
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->is_favorite:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/perm/kate/GroupActivity;->access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 460
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    iget-object p1, p1, Lcom/perm/kate/api/Group;->is_messages_blocked:Ljava/lang/Integer;

    iput-object p1, v2, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    .line 461
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    .line 462
    iget-object p1, v0, Lcom/perm/kate/api/Group;->ban_info_end_date:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, v0, Lcom/perm/kate/api/Group;->ban_info_comment:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->ban_info_reason:Ljava/lang/Integer;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/perm/kate/GroupActivity;->access$1100(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method
