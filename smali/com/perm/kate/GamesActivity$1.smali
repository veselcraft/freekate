.class Lcom/perm/kate/GamesActivity$1;
.super Ljava/lang/Thread;
.source "GamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GamesActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GamesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GamesActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$1;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/perm/kate/GamesActivity$1;->this$0:Lcom/perm/kate/GamesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 42
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GamesActivity$1;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {v1}, Lcom/perm/kate/GamesActivity;->access$000(Lcom/perm/kate/GamesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GamesActivity$1;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getGames(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
