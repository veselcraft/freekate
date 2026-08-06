.class Lcom/perm/kate/VideoFragment$9$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment$9;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoFragment$9;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/VideoFragment$9;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$000(Lcom/perm/kate/VideoFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$1000(Lcom/perm/kate/VideoFragment;Ljava/lang/String;)V

    .line 342
    return-void
.end method
