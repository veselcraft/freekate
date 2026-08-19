.class Lcom/perm/kate/AlbumsFragment$10;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$10;->this$0:Lcom/perm/kate/AlbumsFragment;

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

    .line 486
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$10;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p2}, Lcom/perm/kate/AlbumsFragment;->access$1400(Lcom/perm/kate/AlbumsFragment;)V

    .line 487
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment$10;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p2}, Lcom/perm/kate/AlbumsFragment;->access$1500(Lcom/perm/kate/AlbumsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
