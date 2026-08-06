.class Lcom/perm/kate/PhotoViewerActrivity$33;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$33;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1480
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 1481
    .local v0, "photo_id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$33;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3800(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/Long;)V

    .line 1482
    return-void
.end method
