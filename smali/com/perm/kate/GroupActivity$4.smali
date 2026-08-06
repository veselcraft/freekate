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
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 442
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 443
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 417
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v1, v9}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    move-object v8, p1

    .line 418
    check-cast v8, Ljava/util/ArrayList;

    .line 419
    .local v8, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 420
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 422
    .local v0, "g":Lcom/perm/kate/api/Group;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$300(Lcom/perm/kate/GroupActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    .line 427
    :cond_0
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 428
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupActivity;->access$602(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 429
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupActivity;->access$702(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 430
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->status_audio:Lcom/perm/kate/api/Audio;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupActivity;->access$802(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 431
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->is_favorite:Ljava/lang/Integer;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupActivity;->access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 432
    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->is_messages_blocked:Ljava/lang/Integer;

    iput-object v1, v2, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    .line 433
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    .line 434
    iget-object v1, v0, Lcom/perm/kate/api/Group;->ban_info_end_date:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    iget-object v2, v0, Lcom/perm/kate/api/Group;->ban_info_end_date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcom/perm/kate/api/Group;->ban_info_comment:Ljava/lang/String;

    iget-object v5, v0, Lcom/perm/kate/api/Group;->ban_info_reason:Ljava/lang/Integer;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/GroupActivity;->access$1100(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    .line 437
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :cond_1
    return-void

    .line 425
    .restart local v0    # "g":Lcom/perm/kate/api/Group;
    :cond_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$4;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteUserGroup(JJ)Z

    goto/16 :goto_0
.end method
