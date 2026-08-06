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
    .param p1, "this$0"    # Lcom/perm/kate/LyricsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    iget-boolean v0, v0, Lcom/perm/kate/LyricsActivity;->has_cache:Z

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/LyricsActivity;->showProgressBar(Z)V

    .line 69
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/LyricsActivity;->access$202(Lcom/perm/kate/LyricsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/LyricsActivity;->showProgressBar(Z)V

    .line 60
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$3;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$300(Lcom/perm/kate/LyricsActivity;)V

    .line 61
    return-void
.end method
