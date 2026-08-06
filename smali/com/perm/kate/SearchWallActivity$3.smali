.class Lcom/perm/kate/SearchWallActivity$3;
.super Ljava/lang/Thread;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->doSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 186
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {v0, v6}, Lcom/perm/kate/SearchWallActivity;->showProgressBar(Z)V

    .line 190
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$200(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$300(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$400(Lcom/perm/kate/SearchWallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$500(Lcom/perm/kate/SearchWallActivity;)I

    move-result v7

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$600(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 191
    return-void

    :cond_0
    move-object v6, v9

    .line 190
    goto :goto_0
.end method
