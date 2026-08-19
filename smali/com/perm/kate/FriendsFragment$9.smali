.class Lcom/perm/kate/FriendsFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$city_ids:Ljava/util/ArrayList;

.field final synthetic val$city_names:Ljava/util/ArrayList;

.field final synthetic val$missing_cities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment$9;->val$city_ids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/perm/kate/FriendsFragment$9;->val$city_names:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/FriendsFragment$9;->val$missing_cities:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 482
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    .line 483
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, v0, Lcom/perm/kate/api/City;->cid:J

    iget-object v0, v0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/db/DataHelper;->createCity(JLjava/lang/String;)J

    goto :goto_0

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$9;->val$city_ids:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->val$city_names:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$9;->val$missing_cities:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/FriendsFragment;->access$2200(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
