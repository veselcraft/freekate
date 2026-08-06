.class Lcom/perm/kate/PhotoViewerActrivity$36;
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
    .line 1514
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v1, 0x7f0704a8

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->displayToast(I)V

    .line 1518
    return-void
.end method
