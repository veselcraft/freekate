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

    .line 115
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 122
    iget-object p2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$400(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {p2}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$4;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {p2}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$500(Lcom/perm/kate/video_cache/VideoCacheActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method
