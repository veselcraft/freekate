.class Lcom/perm/kate/WallMessageActivity$20;
.super Ljava/lang/Thread;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$retweet_owner_id:Ljava/lang/String;

.field final synthetic val$retweet_post_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$20;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/WallMessageActivity$20;->val$retweet_owner_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/WallMessageActivity$20;->val$retweet_post_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v0, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$20;->val$retweet_owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$20;->val$retweet_post_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$20;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v2}, Lcom/perm/kate/WallMessageActivity;->access$1000(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/WallMessageActivity$20;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 787
    return-void
.end method
