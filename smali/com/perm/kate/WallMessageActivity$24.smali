.class Lcom/perm/kate/WallMessageActivity$24;
.super Lcom/perm/kate/session/Callback;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->getCommentCanPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method public static synthetic $r8$lambda$4Olvgj7J4hp0pqWCHDP2h2Cvp1E(Lcom/perm/kate/WallMessageActivity$24;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/WallMessageActivity$24;->lambda$ready$0(Z)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$24;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Z)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$24;->this$0:Lcom/perm/kate/WallMessageActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/perm/kate/WallMessageActivity;->access$1000(Lcom/perm/kate/WallMessageActivity;Z)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 935
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    iget-boolean p1, p1, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    .line 937
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$24;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iput-boolean p1, v1, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    .line 939
    new-instance v1, Lcom/perm/kate/WallMessageActivity$24$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/WallMessageActivity$24$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/WallMessageActivity$24;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
