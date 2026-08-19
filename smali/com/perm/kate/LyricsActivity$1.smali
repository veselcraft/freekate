.class Lcom/perm/kate/LyricsActivity$1;
.super Ljava/lang/Thread;
.source "LyricsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LyricsActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LyricsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LyricsActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 40
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$000(Lcom/perm/kate/LyricsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$100(Lcom/perm/kate/LyricsActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$200(Lcom/perm/kate/LyricsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/LyricsActivity$1;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getLyrics(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
