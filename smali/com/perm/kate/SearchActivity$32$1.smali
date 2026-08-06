.class Lcom/perm/kate/SearchActivity$32$1;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$32;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$32;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/SearchActivity$32;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1194
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1195
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1196
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1197
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$32;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$7100(Lcom/perm/kate/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1185
    check-cast v0, Ljava/util/ArrayList;

    .line 1186
    .local v0, "iteams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/SearchDialogItem;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/SearchActivity;->access$7300(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    .line 1187
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1188
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$32$1;->this$1:Lcom/perm/kate/SearchActivity$32;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1190
    .end local v0    # "iteams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/SearchDialogItem;>;"
    :cond_0
    return-void
.end method
