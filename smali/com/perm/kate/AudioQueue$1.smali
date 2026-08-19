.class Lcom/perm/kate/AudioQueue$1;
.super Ljava/lang/Object;
.source "AudioQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioQueue;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioQueue;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/AudioQueue$1;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/perm/kate/AudioQueue$1;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v0}, Lcom/perm/kate/AudioQueue;->access$000(Lcom/perm/kate/AudioQueue;)V

    return-void
.end method
