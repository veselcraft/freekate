.class Lcom/perm/kate/GroupTopicsActivity$12;
.super Lcom/perm/kate/session/Callback;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 318
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 319
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 320
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/GroupTopicsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 298
    check-cast v0, Ljava/util/ArrayList;

    .line 299
    .local v0, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 300
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateCroupTopics(Ljava/util/ArrayList;)V

    .line 301
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 302
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 304
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 306
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V

    .line 308
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 311
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$12;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    goto :goto_0
.end method
