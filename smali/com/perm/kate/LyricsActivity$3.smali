.class Lcom/perm/kate/LyricsActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "LyricsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LyricsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LyricsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LyricsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    iget-boolean v0, v0, Lcom/perm/kate/LyricsActivity;->has_cache:Z

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/LyricsActivity;->access$302(Lcom/perm/kate/LyricsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 62
    iget-object p1, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {p1}, Lcom/perm/kate/LyricsActivity;->access$400(Lcom/perm/kate/LyricsActivity;)V

    return-void
.end method
