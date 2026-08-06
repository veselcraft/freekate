.class Lcom/perm/kate/video_cache/VideoCacheActivity$4;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity;
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
    .line 115
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$400(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 125
    :cond_0
    return-void

    .line 124
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
