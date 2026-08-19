.class Lcom/perm/kate/AudioFragment$15;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

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

    .line 653
    iget-object p2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/AudioFragment;->access$2200(Lcom/perm/kate/AudioFragment;Ljava/lang/String;)V

    .line 654
    iget-object p2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p2}, Lcom/perm/kate/AudioFragment;->access$2300(Lcom/perm/kate/AudioFragment;)V

    .line 655
    iget-object p2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p2}, Lcom/perm/kate/AudioFragment;->access$2400(Lcom/perm/kate/AudioFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 656
    iget-object p2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p2}, Lcom/perm/kate/AudioFragment;->access$2400(Lcom/perm/kate/AudioFragment;)Landroid/widget/ImageButton;

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
