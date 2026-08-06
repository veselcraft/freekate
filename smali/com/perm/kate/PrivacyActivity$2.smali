.class Lcom/perm/kate/PrivacyActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PrivacyActivity;->showProgressBar(Z)V

    .line 80
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 52
    move-object v2, p1

    check-cast v2, Lcom/perm/kate/api/PrivacySettings;

    .line 53
    .local v2, "privacySettings":Lcom/perm/kate/api/PrivacySettings;
    iget-object v5, v2, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 55
    iget-object v5, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v5}, Lcom/perm/utils/FriendsListsHelper;->checkFriendsLists(Lcom/perm/kate/BaseActivity;)V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v4, "users_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, v2, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PrivacyItem;

    .line 59
    .local v1, "item":Lcom/perm/kate/api/PrivacyItem;
    iget-object v6, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "str_id":Ljava/lang/String;
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 62
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->getId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 65
    .local v0, "id":Ljava/lang/Long;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "item":Lcom/perm/kate/api/PrivacyItem;
    .end local v3    # "str_id":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 71
    .end local v4    # "users_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    iget-object v5, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/perm/kate/PrivacyActivity;->showProgressBar(Z)V

    .line 72
    iget-object v5, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v5, v2}, Lcom/perm/kate/PrivacyActivity;->access$100(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V

    .line 73
    return-void
.end method
