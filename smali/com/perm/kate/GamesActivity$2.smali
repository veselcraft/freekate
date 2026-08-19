.class Lcom/perm/kate/GamesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GamesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GamesActivity;Landroid/app/Activity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 51
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GamesActivity;->access$100(Lcom/perm/kate/GamesActivity;Ljava/util/ArrayList;)V

    .line 53
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 54
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    new-instance v1, Lcom/perm/kate/GamesActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GamesActivity$2$1;-><init>(Lcom/perm/kate/GamesActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
