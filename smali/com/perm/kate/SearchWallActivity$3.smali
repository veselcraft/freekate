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

    .line 184
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 187
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 191
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$200(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$300(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$400(Lcom/perm/kate/SearchWallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$500(Lcom/perm/kate/SearchWallActivity;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$600(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/SearchWallActivity$3;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
