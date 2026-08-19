.class Lcom/perm/kate/AudioFragment$4;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;ILcom/perm/kate/session/Callback;)V

    return-void
.end method
