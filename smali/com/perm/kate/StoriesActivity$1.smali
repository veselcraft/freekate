.class Lcom/perm/kate/StoriesActivity$1;
.super Ljava/lang/Thread;
.source "StoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StoriesActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 57
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object v1, v1, Lcom/perm/kate/StoriesActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object v1, v1, Lcom/perm/kate/StoriesActivity;->owner_id:Ljava/lang/Long;

    :goto_0
    iget-object v2, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-static {v2}, Lcom/perm/kate/StoriesActivity;->access$000(Lcom/perm/kate/StoriesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/StoriesActivity$1;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->getStories(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
