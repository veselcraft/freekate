.class Lcom/perm/kate/PodcastsActivity$1;
.super Ljava/lang/Thread;
.source "PodcastsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PodcastsActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PodcastsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 63
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v0}, Lcom/perm/kate/PodcastsActivity;->access$000(Lcom/perm/kate/PodcastsActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v0}, Lcom/perm/kate/PodcastsActivity;->access$100(Lcom/perm/kate/PodcastsActivity;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x1

    mul-long v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {v0}, Lcom/perm/kate/PodcastsActivity;->access$200(Lcom/perm/kate/PodcastsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/PodcastsActivity$1;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getPodcasts(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
