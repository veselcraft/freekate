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
    .param p1, "this$0"    # Lcom/perm/kate/GamesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .local v0, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Game;>;"
    iget-object v1, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GamesActivity;->showProgressBar(Z)V

    .line 53
    iget-object v1, p0, Lcom/perm/kate/GamesActivity$2;->this$0:Lcom/perm/kate/GamesActivity;

    new-instance v2, Lcom/perm/kate/GamesActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/GamesActivity$2$1;-><init>(Lcom/perm/kate/GamesActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/GamesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
