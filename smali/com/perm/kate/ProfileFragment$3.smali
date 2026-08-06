.class Lcom/perm/kate/ProfileFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 290
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 246
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 252
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const-string v2, ""

    iput-object v2, v1, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 256
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 257
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    const-string v2, ""

    iput-object v2, v1, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$300(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    iput-object v1, v2, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    iput-object v1, v2, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    .line 264
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 265
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    iput-object v1, v2, Lcom/perm/kate/ProfileFragment;->relation_partner_first_name:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    iput-object v1, v2, Lcom/perm/kate/ProfileFragment;->relation_partner_last_name:Ljava/lang/String;

    .line 269
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$402(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 271
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 272
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$602(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 273
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    invoke-static {v2, v1}, Lcom/perm/kate/ProfileFragment;->access$702(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 275
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 276
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v3, v3, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$802(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;

    .line 277
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$900(Lcom/perm/kate/ProfileFragment;)V

    .line 278
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1000(Lcom/perm/kate/ProfileFragment;)V

    .line 279
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 280
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklistedInUiThread(Landroid/app/Activity;)V

    .line 281
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1100(Lcom/perm/kate/ProfileFragment;)V

    .line 282
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$1200(Lcom/perm/kate/ProfileFragment;)V

    .line 283
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$3;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1, v6}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    goto/16 :goto_0
.end method
