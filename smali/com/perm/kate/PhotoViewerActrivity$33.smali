.class Lcom/perm/kate/PhotoViewerActrivity$33;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->displayCountsInUiThread(Lcom/perm/kate/api/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$33;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$33;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2500(Lcom/perm/kate/PhotoViewerActrivity;)V

    return-void
.end method
