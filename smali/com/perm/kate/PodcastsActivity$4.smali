.class Lcom/perm/kate/PodcastsActivity$4;
.super Ljava/lang/Object;
.source "PodcastsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PodcastsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PodcastsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PodcastsActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/perm/kate/PodcastsActivity$4;->this$0:Lcom/perm/kate/PodcastsActivity;

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

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/PodcastsActivity$4;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p2}, Lcom/perm/kate/PodcastsActivity;->access$600(Lcom/perm/kate/PodcastsActivity;)V

    .line 115
    iget-object p2, p0, Lcom/perm/kate/PodcastsActivity$4;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p2}, Lcom/perm/kate/PodcastsActivity;->access$700(Lcom/perm/kate/PodcastsActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 116
    iget-object p2, p0, Lcom/perm/kate/PodcastsActivity$4;->this$0:Lcom/perm/kate/PodcastsActivity;

    invoke-static {p2}, Lcom/perm/kate/PodcastsActivity;->access$700(Lcom/perm/kate/PodcastsActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    return-void
.end method
