.class Lcom/perm/kate/ProfileFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 295
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 296
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 250
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iput-object v2, v1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 261
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 262
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iput-object v2, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$300(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    iput-object v2, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    .line 269
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_first_name:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_last_name:Ljava/lang/String;

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$402(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 276
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 277
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$602(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 278
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$702(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 280
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 281
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$802(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 282
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$900(Lcom/perm/kate/ProfileFragment;)V

    .line 283
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1000(Lcom/perm/kate/ProfileFragment;)V

    .line 284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 285
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklistedInUiThread(Landroid/app/Activity;)V

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1100(Lcom/perm/kate/ProfileFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->is_closed:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    iget-object p1, p1, Lcom/perm/kate/api/User;->is_closed:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object p1, p1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 287
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    const v1, 0x7f0f008d

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 288
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$1200(Lcom/perm/kate/ProfileFragment;)V

    .line 289
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$1300(Lcom/perm/kate/ProfileFragment;)V

    .line 290
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$2;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_6
    :goto_0
    return-void
.end method
