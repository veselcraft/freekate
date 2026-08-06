.class Lcom/perm/kate/GroupTopicsActivity$2;
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
    .line 75
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 100
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 101
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 80
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 81
    .local v0, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteGroupTopics(J)Z

    .line 82
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v5

    if-ge v4, v5, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 84
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createCroupTopics(Ljava/util/ArrayList;)V

    .line 86
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 88
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V

    .line 90
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 94
    return-void

    :cond_0
    move v1, v2

    .line 83
    goto :goto_0

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v3, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    goto :goto_1
.end method
