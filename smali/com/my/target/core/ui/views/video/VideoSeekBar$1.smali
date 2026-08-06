.class final Lcom/my/target/core/ui/views/video/VideoSeekBar$1;
.super Ljava/lang/Object;
.source "VideoSeekBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/ui/views/video/VideoSeekBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/video/VideoSeekBar;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/video/VideoSeekBar;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar$1;->a:Lcom/my/target/core/ui/views/video/VideoSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
