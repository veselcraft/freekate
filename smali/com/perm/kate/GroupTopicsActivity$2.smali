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

    .line 92
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 117
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 118
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 97
    check-cast p1, Ljava/util/ArrayList;

    .line 98
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->deleteGroupTopics(J)Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/perm/kate/GroupTopicsActivity;->offset:I

    .line 101
    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 102
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1}, Lcom/perm/kate/db/DataHelper;->createCroupTopics(Ljava/util/ArrayList;)V

    .line 104
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 106
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1, p1}, Lcom/perm/kate/GroupTopicsActivity;->access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupTopicsActivity;->access$400(Lcom/perm/kate/GroupTopicsActivity;)V

    goto :goto_1

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 111
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$2;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
