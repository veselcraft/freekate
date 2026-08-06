.class Lcom/perm/kate/PhotoViewerActrivity$16$1;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity$16;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoViewerActrivity$16;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotoViewerActrivity$16;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$16$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$16;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2200(Lcom/perm/kate/PhotoViewerActrivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$16;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1800(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$16;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2300(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1011
    return-void
.end method
