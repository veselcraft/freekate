.class Lcom/perm/kate/AudioFragment$6;
.super Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public audioSelectForDelete(J)V
    .locals 1
    .param p1, "audio_id"    # J

    .prologue
    .line 240
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$6;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, p1, p2}, Lcom/perm/kate/AudioFragment;->access$500(Lcom/perm/kate/AudioFragment;J)V

    .line 241
    return-void
.end method
