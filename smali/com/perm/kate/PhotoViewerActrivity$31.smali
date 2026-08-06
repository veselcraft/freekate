.class Lcom/perm/kate/PhotoViewerActrivity$31;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$2300(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1368
    return-void
.end method
