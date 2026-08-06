.class Lcom/perm/kate/GifViewActivity$5;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->displayVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$5;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 264
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 258
    const-string v0, "Kate.GifViewActivity"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$5;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GifViewActivity;->access$900(Lcom/perm/kate/GifViewActivity;Landroid/view/SurfaceHolder;)V

    .line 260
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 268
    return-void
.end method
