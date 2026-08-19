.class Lcom/perm/kate/AudioFragment$32;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$32;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1185
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$32;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$32;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$4000(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;ILcom/perm/kate/session/Callback;)V

    return-void
.end method
