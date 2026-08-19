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

    .line 48
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 85
    iget-object p1, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 51
    check-cast p1, Lcom/perm/kate/api/PrivacySettings;

    .line 52
    iget-object v0, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->checkFriendsLists(Lcom/perm/kate/BaseActivity;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p1, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/PrivacyItem;

    .line 58
    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->isBinary(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 65
    :cond_4
    invoke-static {v3}, Lcom/perm/utils/PrivacyHelper;->getId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_5

    .line 68
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_6
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 78
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$2;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PrivacyActivity;->access$100(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacySettings;)V

    return-void
.end method
