.class Lcom/perm/kate/SearchActivity$28;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method public static synthetic $r8$lambda$184Vg18l6b36tAt2IS6MFHmNlDU(Lcom/perm/kate/SearchActivity$28;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity$28;->lambda$ready$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1091
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5100(Lcom/perm/kate/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1102
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1103
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1104
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 1077
    check-cast p1, Ljava/util/ArrayList;

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 1081
    iget-wide v2, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 1085
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5702(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$6800(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    .line 1088
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Lcom/perm/kate/SearchActivity$28$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchActivity$28$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchActivity$28;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1093
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 1094
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1

    .line 1096
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1097
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$28;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
