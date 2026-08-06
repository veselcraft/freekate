.class Lcom/perm/kate/video_cache/VideoCacheActivity$1;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$000(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
