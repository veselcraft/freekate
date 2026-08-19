.class Lcom/perm/kate/GroupTopicsActivity$21;
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

    .line 473
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 499
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 500
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 501
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget v2, v1, Lcom/perm/kate/GroupTopicsActivity;->offset:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/perm/kate/GroupTopicsActivity;->offset:I

    .line 482
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateCroupTopics(Ljava/util/ArrayList;)V

    .line 483
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 484
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 486
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 488
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupTopicsActivity;->access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V

    .line 490
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 493
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$21;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    :cond_2
    :goto_0
    return-void
.end method
