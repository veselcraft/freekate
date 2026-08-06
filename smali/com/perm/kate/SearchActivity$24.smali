.class Lcom/perm/kate/SearchActivity$24;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->performMessagesSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$24;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 955
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 956
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$24;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$5700(Lcom/perm/kate/SearchActivity;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$5800(Lcom/perm/kate/SearchActivity;)I

    move-result v4

    iget-object v6, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v6}, Lcom/perm/kate/SearchActivity;->access$6300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/SearchActivity$24;->this$0:Lcom/perm/kate/SearchActivity;

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 957
    return-void
.end method
