.class Lcom/perm/kate/BannedActivity$5;
.super Ljava/lang/Thread;
.source "BannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BannedActivity;->deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedActivity;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$5;->this$0:Lcom/perm/kate/BannedActivity;

    iput-object p2, p0, Lcom/perm/kate/BannedActivity$5;->val$uid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/BannedActivity$5;->val$gid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/perm/kate/BannedActivity$5;->this$0:Lcom/perm/kate/BannedActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/BannedActivity;->showProgressBar(Z)V

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "gids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/perm/kate/BannedActivity$5;->val$uid:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/perm/kate/BannedActivity$5;->val$uid:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/BannedActivity$5;->val$gid:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/perm/kate/BannedActivity$5;->val$gid:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/BannedActivity$5;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v3}, Lcom/perm/kate/BannedActivity;->access$700(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/BannedActivity$5;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/perm/kate/session/Session;->deleteBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 165
    return-void
.end method
