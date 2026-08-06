.class Lcom/perm/kate/VideoDetailsActivity$4;
.super Ljava/lang/Thread;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoDetailsActivity;->getGroupInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoDetailsActivity;->access$100(Lcom/perm/kate/VideoDetailsActivity;)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v3}, Lcom/perm/kate/VideoDetailsActivity;->access$400(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 146
    return-void
.end method
