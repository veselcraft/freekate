.class Lcom/perm/kate/VideoDetailsActivity$2;
.super Ljava/lang/Thread;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoDetailsActivity;->getUserInThread()V
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
    .line 109
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$2;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "user_id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity$2;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoDetailsActivity;->access$100(Lcom/perm/kate/VideoDetailsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v4, "nom"

    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity$2;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v3}, Lcom/perm/kate/VideoDetailsActivity;->access$200(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/VideoDetailsActivity$2;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 115
    return-void
.end method
