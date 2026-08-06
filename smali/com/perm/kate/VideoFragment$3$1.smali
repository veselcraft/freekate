.class Lcom/perm/kate/VideoFragment$3$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment$3;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoFragment$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/VideoFragment$3;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$3$1;->this$1:Lcom/perm/kate/VideoFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3$1;->this$1:Lcom/perm/kate/VideoFragment$3;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$400(Lcom/perm/kate/VideoFragment;)V

    .line 153
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3$1;->this$1:Lcom/perm/kate/VideoFragment$3;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3$1;->this$1:Lcom/perm/kate/VideoFragment$3;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3$1;->this$1:Lcom/perm/kate/VideoFragment$3;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    goto :goto_0
.end method
