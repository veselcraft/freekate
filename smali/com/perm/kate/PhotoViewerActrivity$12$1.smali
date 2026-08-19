.class Lcom/perm/kate/PhotoViewerActrivity$12$1;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity$12;->error(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoViewerActrivity$12;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$12;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$12$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$12$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$12;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v1, 0x7f0f053c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
