.class Lcom/perm/kate/VideoFragment$11;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$11;->this$0:Lcom/perm/kate/VideoFragment;

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

    .line 475
    iget-object p2, p0, Lcom/perm/kate/VideoFragment$11;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/VideoFragment;->access$1000(Lcom/perm/kate/VideoFragment;Ljava/lang/String;)V

    .line 476
    iget-object p2, p0, Lcom/perm/kate/VideoFragment$11;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p2}, Lcom/perm/kate/VideoFragment;->access$1100(Lcom/perm/kate/VideoFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 477
    iget-object p2, p0, Lcom/perm/kate/VideoFragment$11;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p2}, Lcom/perm/kate/VideoFragment;->access$1100(Lcom/perm/kate/VideoFragment;)Landroid/widget/ImageButton;

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
