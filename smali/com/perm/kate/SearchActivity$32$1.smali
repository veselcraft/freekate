.class Lcom/perm/kate/SearchActivity$32$1;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$32;


# direct methods
.method public static synthetic $r8$lambda$Xc9H6ghH6UmNoU1GOSGbVmK-9iA(Lcom/perm/kate/SearchActivity$32$1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity$32$1;->lambda$ready$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/SearchActivity$32;Landroid/app/Activity;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$7600(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1244
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1245
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1246
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$32;->val$query:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$7400(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    check-cast p1, Ljava/util/ArrayList;

    .line 1236
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Lcom/perm/kate/SearchActivity$32$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchActivity$32$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchActivity$32$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1237
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1238
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_0
    return-void
.end method
