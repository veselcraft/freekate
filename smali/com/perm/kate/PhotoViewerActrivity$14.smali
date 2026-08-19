.class Lcom/perm/kate/PhotoViewerActrivity$14;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V
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

    .line 997
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$14;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1001
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1002
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$14;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$300(Lcom/perm/kate/PhotoViewerActrivity;)V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1004
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$14;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$400(Lcom/perm/kate/PhotoViewerActrivity;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
