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

    .line 47
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$1;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {p1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$000(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
