.class Lcom/perm/kate/MiniPlayer$6$1;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MiniPlayer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MiniPlayer$6;

.field final synthetic val$buffer:I

.field final synthetic val$dur:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MiniPlayer$6;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MiniPlayer$6;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$6$1;->this$1:Lcom/perm/kate/MiniPlayer$6;

    iput p2, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$dur:I

    iput p3, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$pos:I

    iput p4, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$buffer:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$6$1;->this$1:Lcom/perm/kate/MiniPlayer$6;

    iget-object v0, v0, Lcom/perm/kate/MiniPlayer$6;->this$0:Lcom/perm/kate/MiniPlayer;

    iget v1, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$dur:I

    iget v2, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$pos:I

    iget v3, p0, Lcom/perm/kate/MiniPlayer$6$1;->val$buffer:I

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/MiniPlayer;->access$400(Lcom/perm/kate/MiniPlayer;III)V

    .line 270
    return-void
.end method
