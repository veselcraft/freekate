.class Lcom/perm/kate/LyricsActivity$2;
.super Ljava/lang/Thread;
.source "LyricsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LyricsActivity;->checkCache()V
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
    .param p1, "this$0"    # Lcom/perm/kate/LyricsActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/perm/kate/LyricsActivity$2;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$2;->this$0:Lcom/perm/kate/LyricsActivity;

    iget-object v1, p0, Lcom/perm/kate/LyricsActivity$2;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v1}, Lcom/perm/kate/LyricsActivity;->access$000(Lcom/perm/kate/LyricsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/audio_cache/LyricsCache;->getLyricsTextFromFile(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/LyricsActivity;->access$202(Lcom/perm/kate/LyricsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/LyricsActivity$2;->this$0:Lcom/perm/kate/LyricsActivity;

    invoke-static {v0}, Lcom/perm/kate/LyricsActivity;->access$300(Lcom/perm/kate/LyricsActivity;)V

    .line 51
    return-void
.end method
