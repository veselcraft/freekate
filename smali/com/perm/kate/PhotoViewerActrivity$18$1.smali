.class Lcom/perm/kate/PhotoViewerActrivity$18$1;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoViewerActrivity$18;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$18;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$18$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$18;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2400(Lcom/perm/kate/PhotoViewerActrivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$18$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$18;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$2000(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$18$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$18;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2500(Lcom/perm/kate/PhotoViewerActrivity;)V

    return-void
.end method
