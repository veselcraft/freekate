.class Lcom/perm/kate/music/MusicIntentReceiver$1;
.super Ljava/lang/Object;
.source "MusicIntentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/music/MusicIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/music/MusicIntentReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/music/MusicIntentReceiver;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iput-object p2, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    sget v0, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iget-object v1, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/music/MusicIntentReceiver;->access$000(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 44
    sput v2, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget v0, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iget-object v1, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/music/MusicIntentReceiver;->access$100(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 47
    sput v2, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    goto :goto_0
.end method
