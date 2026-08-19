.class Lcom/perm/kate/SearchActivity$32;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->performDialogsSearch()V
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

    .line 1224
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$32;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1227
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1228
    new-instance v6, Lcom/perm/kate/SearchActivity$32$1;

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/SearchActivity$32$1;-><init>(Lcom/perm/kate/SearchActivity$32;Landroid/app/Activity;)V

    .line 1249
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/SearchActivity$32;->val$query:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/SearchActivity$32;->this$0:Lcom/perm/kate/SearchActivity;

    const-string v4, "photo_100,online"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->searchDialogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
