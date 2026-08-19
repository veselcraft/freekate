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

    .line 40
    iput-object p1, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iput-object p2, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    sget v0, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iget-object v2, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/perm/kate/music/MusicIntentReceiver;->access$000(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 45
    sput v1, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 47
    iget-object v0, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->this$0:Lcom/perm/kate/music/MusicIntentReceiver;

    iget-object v2, p0, Lcom/perm/kate/music/MusicIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/perm/kate/music/MusicIntentReceiver;->access$100(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 48
    sput v1, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    :cond_1
    :goto_0
    return-void
.end method
